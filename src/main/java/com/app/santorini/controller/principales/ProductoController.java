package com.app.santorini.controller.principales;

import com.app.santorini.dto.principales.producto.ProductoRequestDto;
import com.app.santorini.dto.principales.producto.ProductoResponseDto;
import com.app.santorini.service.principales.ProductoService;
import com.app.santorini.service.principales.ServiceI;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@RequestMapping("/api/productos")
@CrossOrigin(origins = {"http://127.0.0.1:5500"})
public class ProductoController {

    private final ServiceI<ProductoResponseDto, ProductoRequestDto> service;

    public ProductoController(ProductoService service){
        this.service = service;
    }

    @GetMapping("/{id}")
    public ResponseEntity<ProductoResponseDto> getById(@PathVariable Long id){
        var body = service.getById(id);
        return ResponseEntity.ok(body);
    }

    @GetMapping()
    public ResponseEntity<List<ProductoResponseDto>> getAll(){
        var body = service.getAll();
        return ResponseEntity.ok(body);
    }

    @PostMapping("/crear")
    public ResponseEntity create(@RequestBody ProductoRequestDto entity){
        service.create(entity);
        return ResponseEntity.status(HttpStatus.CREATED)
                .build();
    }

    @PatchMapping("/actualizar")
    public ResponseEntity update(@RequestBody ProductoRequestDto entity){
        service.update(entity);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/desactivar/{id}")
    public ResponseEntity delete(@PathVariable Long id){
        service.delete(id);
        return ResponseEntity.ok().build();
    }
}
