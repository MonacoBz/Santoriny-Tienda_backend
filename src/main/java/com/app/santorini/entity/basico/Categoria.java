package com.app.santorini.entity.basico;

import com.app.santorini.dto.basico.CategoriaDto;
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
@Table(name = "categoria")
public class Categoria {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "categoria_sequence")
    @SequenceGenerator(name = "categoria_sequence",sequenceName = "categoria_id_seq", allocationSize = 1)
    @Column(name = "id_categoria")
    private Long id;

    @Column(unique = true)
    private String nombre;

    public Categoria(CategoriaDto categoriaDto){
        this.nombre = categoriaDto.nombre();
    }

}
