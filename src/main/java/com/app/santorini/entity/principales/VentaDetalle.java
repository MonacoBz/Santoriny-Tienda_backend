package com.app.santorini.entity.principales;

import com.app.santorini.dto.principales.ventas.VentaDRequestDto;
import com.app.santorini.entity.basico.Unidad;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "venta_detalle")
public class VentaDetalle {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE,generator = "venta_detalle_seq")
    @SequenceGenerator(name = "venta_detalle_seq",sequenceName = "venta_detalle_seq_db", allocationSize = 1)
    @Column(name = "id_venta_detalle")
    private long id;

    @ManyToOne
    @JoinColumn(name = "id_venta")
    private Venta venta;

    @ManyToOne
    @JoinColumn(name = "id_producto")
    private Producto producto;

    @ManyToOne
    @JoinColumn(name = "id_unidad")
    private Unidad unidad;

    private BigDecimal cantidad;

    private BigDecimal total_venta;

    public VentaDetalle(VentaDRequestDto entity , Producto p){
        this.cantidad = entity.cantidad();
        this.total_venta = entity.ventaTotal();
        this.producto = p;

    }
}
