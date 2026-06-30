package com.app.santorini.dto.principales.producto;

import com.app.santorini.dto.basico.CategoriaDto;
import com.app.santorini.dto.basico.TipoAlimentoDto;
import com.app.santorini.dto.basico.UnidadDto;
import com.app.santorini.entity.principales.Producto;

import java.math.BigDecimal;

public record ProductoResponseDto(
        Long id,
        String nombre,
        BigDecimal precio_x_unidad,
        boolean activo,
        CategoriaDto categoria,
        TipoAlimentoDto tipoAlimento,
        UnidadDto unidad
) {
    public ProductoResponseDto(Producto p){
        this(p.getId(),
                p.getNombre(),
                p.getPrecio_x_unidad(),
                p.isActivo(),
                new CategoriaDto(p.getCategoria()),
                new TipoAlimentoDto(p.getTipoAlimento()),
                new UnidadDto(p.getUnidad()));
    }
}
