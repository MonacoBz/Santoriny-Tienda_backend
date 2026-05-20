package com.app.santorini.service.principales;

import java.util.List;

public interface ServiceI<eRs,eRq> {

    void create(eRq entity);

    void delete(long id);

    void update(eRq entity);

    eRs getById(long id);

    List<eRs> getAll();
}
