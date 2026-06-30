package com.app.santorini.dto.principales.ventas;

import com.app.santorini.entity.principales.Venta;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;

public record VentaResponseDto(
        Long id,
        LocalDate fecha,
        BigDecimal total,
        List<VentaDResponseDto> detalles
) {
    public VentaResponseDto(Venta venta){
        this(
                venta.getId(),
                venta.getFecha(),
                venta.getTotal(),
                venta.getDetalles()
                        .stream()
                        .map(VentaDResponseDto::new)
                        .toList()
        );
    }
}
