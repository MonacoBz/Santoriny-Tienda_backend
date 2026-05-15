package com.app.santorini.dto;

import com.app.santorini.entity.Unidad;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Positive;

public record UnidadDto(
        @Positive(message = "El id debe ser positivo.")
        Long id,
        @NotEmpty
        @Pattern(regexp = "[A-Z]+", message = "El nombre debe ser en mayusculas.")
        String nombre
) {
    public UnidadDto(Unidad entity){
        this(entity.getId(),
                entity.getNombre());
    }
}
