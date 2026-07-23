package com.app.santorini.service.principales;

import com.app.santorini.dto.principales.ventas.VentaDRequestDto;
import com.app.santorini.dto.principales.ventas.VentaRequestDto;
import com.app.santorini.dto.principales.ventas.VentaResponseDto;
import com.app.santorini.entity.principales.Venta;
import com.app.santorini.entity.principales.VentaDetalle;
import com.app.santorini.exceptions.ProductoException;
import com.app.santorini.exceptions.VentaException;
import com.app.santorini.repository.basicos.UnidadRepository;
import com.app.santorini.repository.principales.ProductoRepository;
import com.app.santorini.repository.principales.VentaRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VentaService implements ServiceI<VentaResponseDto, VentaRequestDto>{

    private final VentaRepository repository;

    private final ProductoRepository repositoryProducto;

    private final UnidadRepository repositoryUnidad;

    public VentaService(
            VentaRepository repository,
            ProductoRepository repositoryProducto,
            UnidadRepository repositoryUnidad
            ){
        this.repository = repository;
        this.repositoryProducto = repositoryProducto;
        this.repositoryUnidad = repositoryUnidad;
    }

    @Override
    public void create(VentaRequestDto dto) {
        List<VentaDetalle> detalles = obtenDetalles(dto.detalles());
        var venta = new Venta();
        venta.agregarVentas(detalles);
        venta.setTipoPago(dto.tipoPago());
        venta.calcularTotal();
        venta.definePago(dto);
        detalles.forEach(d->d.setVenta(venta));
        repository.save(venta);
    }

    @Override
    public void delete(long id) {
        if(repository.existsById(id))repository.deleteById(id);
        else throw new VentaException("No existe la venta con el id: " + id);
    }

    @Override
    public void update(VentaRequestDto entity) {
        var venta = repository.findById(entity.id())
                .orElseThrow(()->new VentaException("No existe la venta con el id: " + entity.id()));
        try {
            venta.setFecha(entity.fecha());
            venta.setTipoPago(entity.tipoPago());
            venta.setDetalles(obtenDetalles(entity.detalles()));
            venta.getDetalles().forEach(d->d.setVenta(venta));
            venta.calcularTotal();
            repository.save(venta);
        } catch (Exception e) {
            throw new VentaException("No se pudo actualizar la venta : " + e.getMessage());
        }
    }

    @Override
    public VentaResponseDto getById(long id) {
        var venta = repository.findById(id)
                .orElseThrow(()->new VentaException("No existe la venta con el id : " + id));
        return new VentaResponseDto(venta);
    }

    @Override
    public List<VentaResponseDto> getAll() {
        return repository.findAll()
                .stream()
                .map(VentaResponseDto::new)
                .toList();
    }

    private List<VentaDetalle> obtenDetalles(List<VentaDRequestDto> detalles){
        return detalles
                .stream()
                .map(v -> {
                    var p = repositoryProducto.findById(v.id()).orElseThrow(()->new ProductoException("No existe el producto con el id: " + v.id()));
                    return new VentaDetalle(v,p);
                })
                .toList();
    }
}
