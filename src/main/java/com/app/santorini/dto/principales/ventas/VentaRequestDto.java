package com.app.santorini.dto.principales.ventas;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;

public record VentaRequestDto(
        Long id,
        LocalDate fecha,
        List<VentaDRequestDto> detalles,
        BigDecimal total
) {
}
