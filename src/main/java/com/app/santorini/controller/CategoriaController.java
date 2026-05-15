package com.app.santorini.controller;

import com.app.santorini.dto.CategoriaDto;
import com.app.santorini.service.CategoriaService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/categoria")
@Validated
public class CategoriaController {

    private final CategoriaService service;

    public CategoriaController(CategoriaService service){
        this.service = service;
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
