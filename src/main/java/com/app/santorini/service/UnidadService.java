package com.app.santorini.service;

import com.app.santorini.dto.UnidadDto;
import com.app.santorini.entity.Unidad;
import com.app.santorini.exceptions.BasicoException;
import com.app.santorini.repository.UnidadRepository;
import com.app.santorini.service.basicos.ServiceB;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UnidadService implements ServiceB<UnidadDto> {

    private final UnidadRepository repository;

    public UnidadService(UnidadRepository repository){
        this.repository = repository;
    }

    @Override
    public void create(UnidadDto entity) {
        repository.save(new Unidad(entity));
    }

    @Override
    public void update(UnidadDto entity) {
        var unidad = repository.findById(entity.id())
                .orElseThrow(()->new BasicoException("La unidad no existe"));
        unidad.setNombre(entity.nombre());
    }

    @Override
    public List<UnidadDto> getAll() {
        return repository.findAll()
                .stream()
                .map(UnidadDto::new)
                .toList();
    }
}
