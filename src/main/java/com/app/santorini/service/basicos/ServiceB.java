package com.app.santorini.service.basicos;

import java.util.List;

public interface ServiceB<e> {

    void create(e entity);

    void update(e entity);

    List<e> getAll();
}
