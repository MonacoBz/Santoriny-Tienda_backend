package com.app.santorini.dto.principales;

import java.math.BigDecimal;

public record ProductoRequestDto(
        Long id,
        String nombre,
        BigDecimal precio_x_unidad,
        boolean activo,
        long id_categoria,
        long id_tipoAlimento
) {
}
