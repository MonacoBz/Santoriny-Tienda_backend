package com.app.santorini.controller.basicos;

import com.app.santorini.dto.basico.UnidadDto;
import com.app.santorini.service.basicos.UnidadService;
import com.app.santorini.service.basicos.ServiceB;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/unidad")
@Validated
@CrossOrigin(origins = {"http://127.0.0.1:5500"})
public class UnidadController {

    private final ServiceB<UnidadDto> service;

    public UnidadController(UnidadService service){
        this.service = service;
    }

    @GetMapping
    public ResponseEntity<List<UnidadDto>> getUnidad(){
        return ResponseEntity.ok(service.getAll());
    }

    @PostMapping("/create")
    public ResponseEntity createUnidad(@RequestBody UnidadDto entity){
        service.create(entity);
        return ResponseEntity.status(HttpStatus.CREATED)
                .build();
    }

    @PostMapping("/update")
    public ResponseEntity updateUnidad(@RequestBody UnidadDto entity){
        service.update(entity);
        return ResponseEntity.ok().build();
    }
}
