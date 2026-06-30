package com.app.santorini.controller.principales;

import com.app.santorini.dto.principales.ventas.VentaRequestDto;
import com.app.santorini.dto.principales.ventas.VentaResponseDto;
import com.app.santorini.service.principales.ServiceI;
import com.app.santorini.service.principales.VentaService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/ventas")
@CrossOrigin(origins = {"http://127.0.0.1:5500"})
public class VentaController {

    private final ServiceI<VentaResponseDto, VentaRequestDto> service;

    public VentaController(
            VentaService service
    ){
        this.service = service;
    }

    @GetMapping
    @Transactional(readOnly = true)
    public ResponseEntity<List<VentaResponseDto>> obtenVentas(){
        var ventas = service.getAll();
        return ResponseEntity.ok(ventas);
    }

    @GetMapping("/{id}")
    @Transactional(readOnly = true)
    public ResponseEntity<VentaResponseDto> obtenVenta(@PathVariable Long id){
        var venta = service.getById(id);
        return ResponseEntity.ok(venta);
    }

    @PostMapping("/crear")
    public ResponseEntity creaVenta(@RequestBody VentaRequestDto venta){
        service.create(venta);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    @PatchMapping("/actualizar")
    public ResponseEntity actualizaVenta(@RequestBody VentaRequestDto venta){
        service.update(venta);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/elimina/{id}")
    public ResponseEntity eliminaVenta(@PathVariable Long id){
        service.delete(id);
        return ResponseEntity.ok().build();
    }
}
