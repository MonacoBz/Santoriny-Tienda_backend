package com.app.santorini.service;

import com.app.santorini.dto.TipoAlimentoDto;
import com.app.santorini.entity.TipoAlimento;
import com.app.santorini.exceptions.BasicoException;
import com.app.santorini.repository.basicos.TipoAlimentoRepository;
import com.app.santorini.service.basicos.ServiceB;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TipoAlimentoService implements ServiceB<TipoAlimentoDto> {

    private final TipoAlimentoRepository repository;

    public TipoAlimentoService(TipoAlimentoRepository repository){
        this.repository = repository;
    }

    @Override
    public void create(TipoAlimentoDto entity) {
        repository.save(new TipoAlimento(entity));
    }

    @Override
    public void update(TipoAlimentoDto entity) {
        var tipo = repository.findById(entity.id())
                .orElseThrow(()->new BasicoException("No existe el tipo de alimento"));
        tipo.setNombre(entity.nombre());

    }

    @Override
    public List<TipoAlimentoDto> getAll(){
        return repository.findAll()
                .stream()
                .map(TipoAlimentoDto::new)
                .toList();
    }
}
