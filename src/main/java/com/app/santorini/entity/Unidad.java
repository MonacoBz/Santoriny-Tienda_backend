package com.app.santorini.entity;

import com.app.santorini.dto.UnidadDto;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "unidad")
public class Unidad {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "unidad_seq")
    @SequenceGenerator(name = "unidad_seq", sequenceName = "unidad_seq_db", initialValue = 1)
    private Long id;

    @Column(unique = true)
    private String nombre;

    public Unidad(UnidadDto entity){
        this.id = entity.id();
        this.nombre = entity.nombre();
    }

}
