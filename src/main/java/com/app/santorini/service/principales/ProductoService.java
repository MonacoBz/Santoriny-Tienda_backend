package com.app.santorini.service.principales;

import com.app.santorini.dto.principales.producto.ProductoRequestDto;
import com.app.santorini.dto.principales.producto.ProductoResponseDto;
import com.app.santorini.entity.principales.Producto;
import com.app.santorini.exceptions.BasicoException;
import com.app.santorini.exceptions.ProductoException;
import com.app.santorini.repository.basicos.CategoriaRepository;
import com.app.santorini.repository.basicos.TipoAlimentoRepository;
import com.app.santorini.repository.basicos.UnidadRepository;
import com.app.santorini.repository.principales.ProductoRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductoService implements ServiceI<ProductoResponseDto, ProductoRequestDto> {

    private final ProductoRepository repository;

    private final CategoriaRepository repositoryCategoria;

    private final TipoAlimentoRepository repositoryAlimento;
    
    private final UnidadRepository repositoryUnidad;
    public ProductoService(
            ProductoRepository repository,
            CategoriaRepository repositoryCategoria,
            TipoAlimentoRepository repositoryAlimento,
            UnidadRepository repositoryUnidad
    ){
        this.repository = repository;
        this.repositoryCategoria = repositoryCategoria;
        this.repositoryAlimento = repositoryAlimento;
        this.repositoryUnidad = repositoryUnidad;
    }


    @Override
    public void create(ProductoRequestDto entity) {
        var categoria = repositoryCategoria.findById(entity.id_categoria())
                .orElseThrow(()->new BasicoException("No existe la categoria con el id " + entity.id_categoria()));

        var alimento = repositoryAlimento.findById(entity.id_tipoAlimento())
                .orElseThrow(()->new BasicoException("No existe la categoria con el id " + entity.id_tipoAlimento()));
        
        var unidad = repositoryUnidad.findById(entity.id_unidad())
                .orElseThrow(()->new BasicoException("No existe la unidad con el id " + entity.id_unidad()));

        var producto = new Producto(entity,categoria,alimento,unidad);

        try{
            repository.save(producto);
        }catch (Exception e){
            throw new ProductoException("No se puedo crear el producto debido a que : " + e.getMessage());
        }
    }

    @Override
    public void delete(long id) {
        var producto = repository.findById(id)
                .orElseThrow(()->new ProductoException("No existe el producto con el id: " + id));
        producto.setActivo(false);
        repository.save(producto);
    }

    @Override
    public void update(ProductoRequestDto entity) {
        var categoria = repositoryCategoria.findById(entity.id_categoria())
                .orElseThrow(()->new BasicoException("No existe la categoria con el id " + entity.id_categoria()));

        var alimento = repositoryAlimento.findById(entity.id_tipoAlimento())
                .orElseThrow(()->new BasicoException("No existe la categoria con el id " + entity.id_tipoAlimento()));

        var producto = repository.findById(entity.id())
                        .orElseThrow(()->new ProductoException("No existe el producto con el id : " + entity.id()));

        var unidad = repositoryUnidad.findById(entity.id_unidad())
                .orElseThrow(()->new BasicoException("No existe la unidad con el id " + entity.id_unidad()));

        producto.actualiza(entity,categoria,alimento,unidad);
        repository.save(producto);
    }

    @Override
    public ProductoResponseDto getById(long id) {
        var producto = repository.findById(id)
                .orElseThrow(()->new ProductoException("No existe el producto con el id : " + id));
        return new ProductoResponseDto(producto);
    }

    @Override
    public List<ProductoResponseDto> getAll() {
        return repository.findAll()
                .stream()
                .map(ProductoResponseDto::new)
                .toList();
    }
}
