package com.app.santorini.dto.principales.ventas;

import java.math.BigDecimal;

public record VentaDRequestDto(
        Long id,
        BigDecimal cantidad,
        BigDecimal ventaTotal
) {
}
