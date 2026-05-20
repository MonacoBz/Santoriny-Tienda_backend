package com.app.santorini.dto.basico;


import com.app.santorini.entity.basico.Categoria;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Positive;

public record CategoriaDto(
        @Positive(message = "El id debe ser positivo")
        Long id,
        @NotEmpty
        @Pattern(regexp = "[A-Z]+",message = "El nombre debe estar en mayuscula")
        String nombre
) {
    public CategoriaDto(Categoria entity){
        this(entity.getId(),
                entity.getNombre());
    }
}
