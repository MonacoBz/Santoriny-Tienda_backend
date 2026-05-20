package com.app.santorini.service.basicos;

import com.app.santorini.dto.basico.CategoriaDto;
import com.app.santorini.entity.basico.Categoria;
import com.app.santorini.exceptions.BasicoException;
import com.app.santorini.repository.basicos.CategoriaRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoriaService implements ServiceB<CategoriaDto> {

    private final CategoriaRepository repository;
    public CategoriaService(CategoriaRepository repository){
        this.repository = repository;
    }

    @Override
    public void create(CategoriaDto entity){
        repository.save(new Categoria(entity));
    }

    @Override
    public void update(CategoriaDto entity){
        var categoria = repository.findById(entity.id())
                .orElseThrow(()->new BasicoException("No existe la categoria"));
        categoria.setNombre(entity.nombre());
    }

    @Override
    public List<CategoriaDto> getAll() {
        return repository.findAll()
                .stream()
                .map(CategoriaDto::new)
                .toList();
    }

}
