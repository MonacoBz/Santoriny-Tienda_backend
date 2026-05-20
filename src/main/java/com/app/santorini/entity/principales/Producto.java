package com.app.santorini.entity.principales;

import com.app.santorini.dto.principales.ProductoRequestDto;
import com.app.santorini.entity.basico.Categoria;
import com.app.santorini.entity.basico.TipoAlimento;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Producto {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE , generator = "producto_seq")
    @SequenceGenerator(name = "producto_seq" , sequenceName = "producto_seq_db" , allocationSize = 1)
    @Column(name = "id_producto")
    private Long id;

    private String nombre;

    private BigDecimal precio_x_unidad;

    private boolean activo;

    @ManyToOne
    @JoinColumn(name = "id_categoria")
    private Categoria categoria;

    @ManyToOne
    @JoinColumn(name = "id_tipo_alimento")
    private TipoAlimento tipoAlimento;

    public Producto(ProductoRequestDto entity, Categoria categoria, TipoAlimento tipoAlimento){
        this.asignaDatos(entity,categoria,tipoAlimento);
    }

    public void actualiza(ProductoRequestDto entity, Categoria categoria, TipoAlimento tipoAlimento) {
        this.asignaDatos(entity,categoria,tipoAlimento);
    }

    private void asignaDatos(ProductoRequestDto entity, Categoria categoria , TipoAlimento tipoAlimento){
        this.id = entity.id();
        this.nombre = entity.nombre();
        this.precio_x_unidad = entity.precio_x_unidad();
        this.activo = entity.activo();
        this.setCategoria(categoria);
        this.setTipoAlimento(tipoAlimento);
    }
}
