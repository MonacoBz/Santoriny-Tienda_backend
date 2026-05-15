package com.app.santorini.dto;

import com.app.santorini.entity.TipoAlimento;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Positive;

public record TipoAlimentoDto(
        @Positive
        Long id,
        @NotEmpty
        @Pattern(regexp = "[A-Z]+")
        String nombre
) {
    public TipoAlimentoDto(TipoAlimento entity){
        this(entity.getId()
        , entity.getNombre());
    }
}
