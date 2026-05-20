package com.app.santorini.controller.basicos;

import com.app.santorini.dto.basico.CategoriaDto;
import com.app.santorini.service.basicos.CategoriaService;
import com.app.santorini.service.basicos.ServiceB;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/categoria")
@Validated
public class CategoriaController {

    private final ServiceB<CategoriaDto> service;
    public CategoriaController(CategoriaService service){
        this.service = service;
    }

    @GetMapping
    public ResponseEntity<List<CategoriaDto>> getCategoria(){
        return ResponseEntity.ok(service.getAll());
    }

    @PostMapping("/create")
    public ResponseEntity createCategoria(@RequestBody  CategoriaDto entity){
        service.create(entity);
        return ResponseEntity.status(HttpStatus.CREATED)
                .build();
    }

    @PostMapping("/update")
    public ResponseEntity updateCategoria(@RequestBody CategoriaDto entity){
        service.update(entity);
        return ResponseEntity.status(HttpStatus.OK)
                .build();
    }


}
