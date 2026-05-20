package com.app.santorini.dto.principales;

import com.app.santorini.dto.basico.CategoriaDto;
import com.app.santorini.dto.basico.TipoAlimentoDto;
import com.app.santorini.entity.principales.Producto;

import java.math.BigDecimal;

public record ProductoResponseDto(
        Long id,
        String nombre,
        BigDecimal precio_x_unidad,
        boolean activo,
        CategoriaDto categoira,
        TipoAlimentoDto tipoAlimento
) {
    public ProductoResponseDto(Producto p){
        this(p.getId(),
                p.getNombre(),
                p.getPrecio_x_unidad(),
                p.isActivo(),
                new CategoriaDto(p.getCategoria()),
                new TipoAlimentoDto(p.getTipoAlimento()));
    }
}
