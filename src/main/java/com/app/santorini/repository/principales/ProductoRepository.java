package com.app.santorini.repository.principales;

import com.app.santorini.entity.principales.Producto;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductoRepository extends JpaRepository<Producto,Long> {
}
