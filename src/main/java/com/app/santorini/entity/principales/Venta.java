package com.app.santorini.entity.principales;

import com.app.santorini.dto.principales.ventas.VentaRequestDto;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@Entity
@Table(name = "venta")
@ToString
public class Venta {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE,generator = "venta_seq")
    @SequenceGenerator(name = "venta_seq", sequenceName = "venta_seq_db",allocationSize = 1)
    @Column(name = "id_venta")
    private Long id;

    private LocalDate fecha;

    private BigDecimal total;

    private String tipoPago;

    @Column(nullable = false)
    private BigDecimal monto;

    @Column(nullable = false)
    private BigDecimal cambio;

    @Column(nullable = false)
    private BigDecimal comision;

    @OneToMany(mappedBy = "venta",cascade = CascadeType.ALL,orphanRemoval = true)
    List<VentaDetalle> detalles = new ArrayList<>();

    public Venta(){
        monto = new BigDecimal(0.0);
        cambio = new BigDecimal(0.0);
        comision = new BigDecimal(0.0);
        this.fecha = LocalDate.now();
    }

    public void agregarVentas(List<VentaDetalle> ventas){
        detalles.addAll(ventas);
    }

    public void calcularTotal(){
        total = detalles.stream()
                .map(VentaDetalle::getTotal_venta)
                .reduce(BigDecimal.ZERO,BigDecimal::add);
    }

    public void definePago(VentaRequestDto dto){
        this.tipoPago = dto.tipoPago();
        switch (tipoPago){
          case "EFECTIVO"->{
              this.monto = dto.monto();
              this.cambio = dto.monto().subtract(total);
              if(cambio.doubleValue() <= 0.0)this.cambio = new BigDecimal(0.0);
          }
          case "TARJETA"->{}
        };
    }
}
