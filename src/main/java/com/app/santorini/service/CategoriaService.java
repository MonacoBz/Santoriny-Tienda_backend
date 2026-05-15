package com.app.santorini.service;

import com.app.santorini.dto.CategoriaDto;
import com.app.santorini.entity.Categoria;
import com.app.santorini.repository.CategoriaRepository;
import org.springframework.stereotype.Service;

@Service
public class CategoriaService {

    private final CategoriaRepository repository;
    public CategoriaService(CategoriaRepository repository){
        this.repository = repository;
    }

    public void create(CategoriaDto entity){
        repository.save(new Categoria(entity));
    }

    public void update(CategoriaDto entity){
        repository.save(new Categoria(entity));
    }

}
