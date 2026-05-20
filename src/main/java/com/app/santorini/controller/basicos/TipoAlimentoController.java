package com.app.santorini.controller.basicos;

import com.app.santorini.dto.basico.TipoAlimentoDto;
import com.app.santorini.service.basicos.TipoAlimentoService;
import com.app.santorini.service.basicos.ServiceB;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/alimento")
@Validated
public class TipoAlimentoController {

    private final ServiceB<TipoAlimentoDto> service;

    public TipoAlimentoController(TipoAlimentoService service){
        this.service = service;
    }

    @GetMapping
    public ResponseEntity<List<TipoAlimentoDto>> getAlimento(){
        return ResponseEntity.ok(service.getAll());
    }

    @PostMapping("/create")
    public ResponseEntity createAlimento(@RequestBody TipoAlimentoDto entity){

        service.create(entity);

        return ResponseEntity.status(HttpStatus.CREATED)
                .build();
    }

    @PostMapping("/update")
    public ResponseEntity updateAlimento (@RequestBody TipoAlimentoDto entity){

        service.update(entity);

        return ResponseEntity.status(HttpStatus.OK).build();
    }


}
