package com.app.santorini.entity.basico;

import com.app.santorini.dto.basico.TipoAlimentoDto;
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
@Table(name = "tipo_alimento")
public class TipoAlimento {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "tipoalimento_seq")
    @SequenceGenerator(name = "tipoalimento_seq", sequenceName = "tipo_alimento_id" , allocationSize = 1)
    @Column(name = "id_tipo_alimento")
    private Long id;

    @Column(unique = true)
    private String nombre;

    public TipoAlimento(TipoAlimentoDto entity){
        this.id = entity.id();
        this.nombre = entity.nombre();
    }
}
