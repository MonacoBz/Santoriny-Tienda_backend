package com.app.santorini.dto.principales.ventas;

import com.app.santorini.dto.principales.producto.ProductoResponseDto;
import com.app.santorini.entity.principales.VentaDetalle;

import java.math.BigDecimal;
import java.util.List;

public record VentaDResponseDto(
        Long id,
        ProductoResponseDto producto,
        BigDecimal cantidad,
        BigDecimal totalVenta
) {
    public VentaDResponseDto(VentaDetalle detalles){
        this(
                detalles.getId(),
                new ProductoResponseDto(detalles.getProducto()),
                detalles.getCantidad(),
                detalles.getTotal_venta()
        );
    }
}
