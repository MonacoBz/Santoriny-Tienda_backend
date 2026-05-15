package com.app.santorini.entity;

import com.app.santorini.dto.TipoAlimentoDto;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class TipoAlimento {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "tipoalimento_seq")
    @SequenceGenerator(name = "tipoalimento_seq", sequenceName = "tipo_alimento_db" , initialValue = 1)
    private Long id;

    @Column(unique = true)
    private String nombre;

    public TipoAlimento(TipoAlimentoDto entity){
        this.id = entity.id();
        this.nombre = entity.nombre();
    }
}
