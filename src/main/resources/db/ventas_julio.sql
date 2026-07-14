-- ============================================================================
-- VENTA: 01 de Julio - Total $551.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_01_jul AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-07-01', 551.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 41, 1, (SELECT id_venta FROM nueva_venta_01_jul)), -- WISKAS CROQUETA
    (nextval('venta_detalle_seq_db'), 1.217, 56.00, 14, 1, (SELECT id_venta FROM nueva_venta_01_jul)), -- GANADOR ADULTO (proporcional a $46/kg)
    (nextval('venta_detalle_seq_db'), 0.645, 40.00, 48, 1, (SELECT id_venta FROM nueva_venta_01_jul)), -- CAT CHOW GATITOS
    (nextval('venta_detalle_seq_db'), 0.435, 20.00, 9, 1, (SELECT id_venta FROM nueva_venta_01_jul)),  -- DOG CHAW ADULTO
    (nextval('venta_detalle_seq_db'), 0.375, 15.00, 62, 1, (SELECT id_venta FROM nueva_venta_01_jul)), -- FRIJOL NEGRO
    (nextval('venta_detalle_seq_db'), 1, 12.00, 50, 2, (SELECT id_venta FROM nueva_venta_01_jul)),     -- WISKAS SOBRE
    (nextval('venta_detalle_seq_db'), 0.500, 24.00, 44, 1, (SELECT id_venta FROM nueva_venta_01_jul)), -- MININO (1/2 Kg)
    (nextval('venta_detalle_seq_db'), 0.556, 25.00, 10, 1, (SELECT id_venta FROM nueva_venta_01_jul)), -- DOG CHAW MINIS Y PEQUES
    (nextval('venta_detalle_seq_db'), 0.395, 15.00, 8, 1, (SELECT id_venta FROM nueva_venta_01_jul)),  -- DYNO
    (nextval('venta_detalle_seq_db'), 1.000, 28.00, 56, 1, (SELECT id_venta FROM nueva_venta_01_jul)), -- ALPISTE (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 65.00, 43, 1, (SELECT id_venta FROM nueva_venta_01_jul)), -- MININO PLUS (1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_01_jul)),     -- ARENA GATO
    (nextval('venta_detalle_seq_db'), 2, 26.00, 50, 2, (SELECT id_venta FROM nueva_venta_01_jul)),     -- SOBRE WISKAS (2 pzas a $13 libreta)
    (nextval('venta_detalle_seq_db'), 1, 8.00, 23, 2, (SELECT id_venta FROM nueva_venta_01_jul)),      -- HUESO BLANCO
    (nextval('venta_detalle_seq_db'), 0.492, 32.00, 43, 1, (SELECT id_venta FROM nueva_venta_01_jul)), -- MININO PLUS (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.868, 33.00, 3, 1, (SELECT id_venta FROM nueva_venta_01_jul)),  -- HI DOG
    (nextval('venta_detalle_seq_db'), 0.500, 24.00, 44, 1, (SELECT id_venta FROM nueva_venta_01_jul)), -- MININO (tercera anotación)
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_01_jul)),     -- ARENA GATO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 1, 12.00, 53, 2, (SELECT id_venta FROM nueva_venta_01_jul)),     -- SOBRE FELIX
    (nextval('venta_detalle_seq_db'), 1, 12.00, 53, 2, (SELECT id_venta FROM nueva_venta_01_jul)),     -- SOBRE FELIX (segunda anotación)
    (nextval('venta_detalle_seq_db'), 1, 55.00, 65, 2, (SELECT id_venta FROM nueva_venta_01_jul));        -- ARENA ALFACAT     
    
-- ============================================================================
-- VENTA: 02 de Julio - Total $778.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_02_jul AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-07-02', 778.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.714, 20.00, 56, 1, (SELECT id_venta FROM nueva_venta_02_jul)), -- ALPISTE SIMPLE
    (nextval('venta_detalle_seq_db'), 0.333, 10.00, 57, 1, (SELECT id_venta FROM nueva_venta_02_jul)), -- ALPIESTE COMPUESTO
    (nextval('venta_detalle_seq_db'), 1, 9.00, 27, 2, (SELECT id_venta FROM nueva_venta_02_jul)),      -- HUESO CON CARNE
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 44, 1, (SELECT id_venta FROM nueva_venta_02_jul)), -- MININO
    (nextval('venta_detalle_seq_db'), 0.605, 23.00, 8, 1, (SELECT id_venta FROM nueva_venta_02_jul)),  -- DYNO
    (nextval('venta_detalle_seq_db'), 1.000, 26.00, 15, 1, (SELECT id_venta FROM nueva_venta_02_jul)), -- GUESOS (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.556, 25.00, 10, 1, (SELECT id_venta FROM nueva_venta_02_jul)), -- DOG CHAW RAZA PEQUEÑA
    (nextval('venta_detalle_seq_db'), 1, 20.00, 54, 2, (SELECT id_venta FROM nueva_venta_02_jul)),     -- CHURU
    (nextval('venta_detalle_seq_db'), 1.500, 138.00, 17, 1, (SELECT id_venta FROM nueva_venta_02_jul)),-- NUPEC CACHORRO (1.5 Kgs a $92/kg)
    (nextval('venta_detalle_seq_db'), 1, 55.00, 32, 2, (SELECT id_venta FROM nueva_venta_02_jul)),     -- COLLAR TELA CHICO
    (nextval('venta_detalle_seq_db'), 0.652, 30.00, 14, 1, (SELECT id_venta FROM nueva_venta_02_jul)), -- GANADOR RAZA PEQUEÑA (Mapeado a Ganador Adulto)
    (nextval('venta_detalle_seq_db'), 2.609, 120.00, 14, 1, (SELECT id_venta FROM nueva_venta_02_jul)),-- GANADOR RAZA PEQUEÑA (segunda anotación)
    (nextval('venta_detalle_seq_db'), 1, 11.00, 19, 2, (SELECT id_venta FROM nueva_venta_02_jul)),     -- PEDIGREES SOBRE
    (nextval('venta_detalle_seq_db'), 0.652, 30.00, 14, 1, (SELECT id_venta FROM nueva_venta_02_jul)), -- GANADOR RAZA PEQUEÑA (tercera anotación)
    (nextval('venta_detalle_seq_db'), 1, 12.00, 53, 2, (SELECT id_venta FROM nueva_venta_02_jul)),     -- FELIX SOBRE
    (nextval('venta_detalle_seq_db'), 0.652, 30.00, 14, 1, (SELECT id_venta FROM nueva_venta_02_jul)), -- GANADOR RAZA PEQUEÑA (cuarta anotación)
    (nextval('venta_detalle_seq_db'), 1, 12.00, 53, 2, (SELECT id_venta FROM nueva_venta_02_jul)),     -- FELIX SOBRE (segunda anotación)
    (nextval('venta_detalle_seq_db'), 1.304, 60.00, 14, 1, (SELECT id_venta FROM nueva_venta_02_jul)), -- GANADOR RAZA PEQUEÑA (quinta anotación)
    (nextval('venta_detalle_seq_db'), 1.000, 48.00, 41, 1, (SELECT id_venta FROM nueva_venta_02_jul)), -- WISKAS CROQUETA (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.500, 20.00, 49, 1, (SELECT id_venta FROM nueva_venta_02_jul)); -- ZOOPREME CAT
    
 -- ============================================================================
-- VENTA: 03 de Julio - Total $696.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_03_efectivo AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-07-03', 696.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.000, 46.00, 14, 1, (SELECT id_venta FROM nueva_venta_03_efectivo)), -- GANADOR ADULTO (1 Kg)
    (nextval('venta_detalle_seq_db'), 2, 90.00, 55, 2, (SELECT id_venta FROM nueva_venta_03_efectivo)),     -- ARENA GATO (2 pzas)
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 41, 1, (SELECT id_venta FROM nueva_venta_03_efectivo)), -- WISKAS CROQUETA
    (nextval('venta_detalle_seq_db'), 0.268, 15.00, 13, 1, (SELECT id_venta FROM nueva_venta_03_efectivo)), -- GANADOR PREMIUM RAZAS PEQUEÑAS
    (nextval('venta_detalle_seq_db'), 3, 9.00, 26, 2, (SELECT id_venta FROM nueva_venta_03_efectivo)),      -- PALITOS CARNAZA (3 pzas)
    (nextval('venta_detalle_seq_db'), 2.222, 100.00, 10, 1, (SELECT id_venta FROM nueva_venta_03_efectivo)),-- DOGCHAW ADULTO MINI Y PEQUE
    (nextval('venta_detalle_seq_db'), 0.800, 28.00, 66, 1, (SELECT id_venta FROM nueva_venta_03_efectivo)), -- MAIZ PALOMERO
    (nextval('venta_detalle_seq_db'), 2, 26.00, 50, 2, (SELECT id_venta FROM nueva_venta_03_efectivo)),     -- SOBRES WISKAS (2 pzas)
    (nextval('venta_detalle_seq_db'), 0.500, 23.00, 14, 1, (SELECT id_venta FROM nueva_venta_03_efectivo)), -- GANADOR ADULTO
    (nextval('venta_detalle_seq_db'), 1.000, 57.00, 11, 1, (SELECT id_venta FROM nueva_venta_03_efectivo)), -- DOG CHOW CACHORRO (1 Kg)
    (nextval('venta_detalle_seq_db'), 2.000, 92.00, 14, 1, (SELECT id_venta FROM nueva_venta_03_efectivo)), -- GANADOR ADULTO (2 Kgs)
    (nextval('venta_detalle_seq_db'), 3, 36.00, 53, 2, (SELECT id_venta FROM nueva_venta_03_efectivo)),     -- FELIX SOBRES (3 pzas)
    (nextval('venta_detalle_seq_db'), 0.484, 30.00, 46, 1, (SELECT id_venta FROM nueva_venta_03_efectivo)), -- FELIX CROQUETA
    (nextval('venta_detalle_seq_db'), 1.000, 62.00, 47, 1, (SELECT id_venta FROM nueva_venta_03_efectivo)), -- CAT CHOW ADULTO (1 Kg)
    (nextval('venta_detalle_seq_db'), 2.000, 26.00, 58, 1, (SELECT id_venta FROM nueva_venta_03_efectivo)), -- MAIZ QUEBRADO (2 Kgs)
    (nextval('venta_detalle_seq_db'), 0.465, 20.00, 42, 1, (SELECT id_venta FROM nueva_venta_03_efectivo)), -- GATINA
    (nextval('venta_detalle_seq_db'), 0.194, 12.00, 46, 1, (SELECT id_venta FROM nueva_venta_03_efectivo)); -- FELIX CROQUETA (última anotación)

-- ============================================================================
-- VENTA: 03 de Julio - Total $73.00 (Tarjeta)
-- ============================================================================
WITH nueva_venta_03_tarjeta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-07-03', 73.00, 'TARJETA', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.000, 40.00, 49, 1, (SELECT id_venta FROM nueva_venta_03_tarjeta)), -- ZOOPREME CAT (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.868, 33.00, 3, 1, (SELECT id_venta FROM nueva_venta_03_tarjeta));  -- HI DOG

-- ============================================================================
-- VENTA: 04 de Julio - Total $1,053.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_04_efectivo AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-07-04', 1340.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.272, 25.00, 16, 1, (SELECT id_venta FROM nueva_venta_04_efectivo)), -- NUPEC ADULTO
    (nextval('venta_detalle_seq_db'), 1.000, 43.00, 42, 1, (SELECT id_venta FROM nueva_venta_04_efectivo)), -- GATINA (1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 9.00, 27, 2, (SELECT id_venta FROM nueva_venta_04_efectivo)),      -- HUESO CON CARNE
    (nextval('venta_detalle_seq_db'), 1.022, 47.00, 14, 1, (SELECT id_venta FROM nueva_venta_04_efectivo)), -- GANADOR ADULTO
    (nextval('venta_detalle_seq_db'), 2, 180.00, 34, 2, (SELECT id_venta FROM nueva_venta_04_efectivo)),    -- CUERDAS GRANDES REDONDAS (2 pzas)
    (nextval('venta_detalle_seq_db'), 0.349, 15.00, 42, 1, (SELECT id_venta FROM nueva_venta_04_efectivo)), -- GATINA
    (nextval('venta_detalle_seq_db'), 0.536, 15.00, 56, 1, (SELECT id_venta FROM nueva_venta_04_efectivo)), -- ALPISTE SIMPLE
    (nextval('venta_detalle_seq_db'), 1.000, 30.00, 57, 1, (SELECT id_venta FROM nueva_venta_04_efectivo)), -- ALPISTE COMPUESTO (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.870, 40.00, 9, 1, (SELECT id_venta FROM nueva_venta_04_efectivo)),  -- DOG CHAW ADULTO
    (nextval('venta_detalle_seq_db'), 10, 120.00, 50, 2, (SELECT id_venta FROM nueva_venta_04_efectivo)),   -- WISKAS SOBRES (10 pzas)
    (nextval('venta_detalle_seq_db'), 0.884, 38.00, 42, 1, (SELECT id_venta FROM nueva_venta_04_efectivo)), -- GATINA
    (nextval('venta_detalle_seq_db'), 1.022, 47.00, 14, 1, (SELECT id_venta FROM nueva_venta_04_efectivo)), -- GANADOR ADULTO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.806, 50.00, 47, 1, (SELECT id_venta FROM nueva_venta_04_efectivo)), -- CAT CHOW ADULTO
    (nextval('venta_detalle_seq_db'), 0.371, 23.00, 47, 1, (SELECT id_venta FROM nueva_venta_04_efectivo)), -- CAT CHOW ADULTO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 2, 18.00, 23, 2, (SELECT id_venta FROM nueva_venta_04_efectivo)),     -- HUESOS BLANCOS (2 pzas a $9 libreta)
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_04_efectivo)),     -- ARENA GATO
    (nextval('venta_detalle_seq_db'), 3, 36.00, 50, 2, (SELECT id_venta FROM nueva_venta_04_efectivo)),     -- SOBRES WISKAS (3 pzas)
    (nextval('venta_detalle_seq_db'), 0.589, 33.00, 13, 1, (SELECT id_venta FROM nueva_venta_04_efectivo)), -- GANADOR PREMIUM PEQUE
    (nextval('venta_detalle_seq_db'), 0.278, 10.00, 59, 1, (SELECT id_venta FROM nueva_venta_04_efectivo)), -- GIRASOL
    (nextval('venta_detalle_seq_db'), 1, 9.00, 27, 2, (SELECT id_venta FROM nueva_venta_04_efectivo)),      -- HUESO CON CARNE (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.208, 10.00, 41, 1, (SELECT id_venta FROM nueva_venta_04_efectivo)), -- WISKAS CROQUETA
    (nextval('venta_detalle_seq_db'), 0.477, 31.00, 43, 1, (SELECT id_venta FROM nueva_venta_04_efectivo)), -- MININO PLUS
    (nextval('venta_detalle_seq_db'), 0.521, 25.00, 44, 1, (SELECT id_venta FROM nueva_venta_04_efectivo)), -- MININO
    (nextval('venta_detalle_seq_db'), 0.893, 50.00, 12, 1, (SELECT id_venta FROM nueva_venta_04_efectivo)), -- GANADOR PREMIUM ADULTO
    (nextval('venta_detalle_seq_db'), 3, 33.00, 22, 2, (SELECT id_venta FROM nueva_venta_04_efectivo)),     -- GANADOR SOBRE (3 pzas)
    (nextval('venta_detalle_seq_db'), 1.087, 50.00, 14, 1, (SELECT id_venta FROM nueva_venta_04_efectivo)), -- GANADOR RAZA PEQUEÑA
    (nextval('venta_detalle_seq_db'), 10, 120.00, 19, 2, (SELECT id_venta FROM nueva_venta_04_efectivo)),   -- SOBRES PEDIGREE (10 pzas)
    (nextval('venta_detalle_seq_db'), 1, 11.00, 28, 2, (SELECT id_venta FROM nueva_venta_04_efectivo)),     -- DENTASTIX
    (nextval('venta_detalle_seq_db'), 1.196, 67.00, 13, 1, (SELECT id_venta FROM nueva_venta_04_efectivo)), -- GANADOR PREMIUM RAZA PEQUEÑA
    (nextval('venta_detalle_seq_db'), 2, 110.00, 65, 2, (SELECT id_venta FROM nueva_venta_04_efectivo));          -- ARENA ALFACAT 

-- ============================================================================
-- VENTA: 04 de Julio - Total $45.00 (Tarjeta)
-- ============================================================================
WITH nueva_venta_04_tarjeta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-07-04', 45.00, 'TARJETA', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_04_tarjeta));     -- ARENA GATO
    
-- ============================================================================
-- VENTA: 05 de Julio - Total $638.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_05_efectivo AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-07-05', 638.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 2, 90.00, 55, 2, (SELECT id_venta FROM nueva_venta_05_efectivo)),     -- ARENA GATO (2 pzas)
    (nextval('venta_detalle_seq_db'), 3.268, 183.00, 12, 1, (SELECT id_venta FROM nueva_venta_05_efectivo)),-- GANADOR PREMIUM ADULTO (proporcional a $56/kg)
    (nextval('venta_detalle_seq_db'), 1.000, 26.00, 15, 1, (SELECT id_venta FROM nueva_venta_05_efectivo)), -- GUESOS (1 Kg)
    (nextval('venta_detalle_seq_db'), 2.179, 122.00, 12, 1, (SELECT id_venta FROM nueva_venta_05_efectivo)),-- GANADOR PREMIUM ADULTO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.536, 30.00, 12, 1, (SELECT id_venta FROM nueva_venta_05_efectivo)), -- GANADOR PREMIUM ADULTO (tercera anotación)
    (nextval('venta_detalle_seq_db'), 0.646, 31.00, 44, 1, (SELECT id_venta FROM nueva_venta_05_efectivo)), -- MININO (proporcional a $48/kg)
    (nextval('venta_detalle_seq_db'), 1, 12.00, 53, 2, (SELECT id_venta FROM nueva_venta_05_efectivo)),     -- FELIX SOBRE
    (nextval('venta_detalle_seq_db'), 1.089, 61.00, 12, 1, (SELECT id_venta FROM nueva_venta_05_efectivo)), -- GANADOR PREMIUM ADULTO (cuarta anotación)
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_05_efectivo)),     -- ARENA GATO (tercera anotación)
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 41, 1, (SELECT id_venta FROM nueva_venta_05_efectivo)), -- WISKAS CROQUETA
    (nextval('venta_detalle_seq_db'), 0.161, 10.00, 47, 1, (SELECT id_venta FROM nueva_venta_05_efectivo)); -- CATCHOW ADULTO

-- ============================================================================
-- VENTA: 05 de Julio - Total $120.00 (Tarjeta)
-- ============================================================================
WITH nueva_venta_05_tarjeta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-07-05', 120.00, 'TARJETA', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.184, 45.00, 3, 1, (SELECT id_venta FROM nueva_venta_05_tarjeta)),  -- HI DOG (proporcional a $38/kg)
    (nextval('venta_detalle_seq_db'), 2, 22.00, 22, 2, (SELECT id_venta FROM nueva_venta_05_tarjeta)),      -- SOBRE GANADOR (2 pzas)
    (nextval('venta_detalle_seq_db'), 0.521, 25.00, 41, 1, (SELECT id_venta FROM nueva_venta_05_tarjeta)), -- WISKAS CROQUETA
    (nextval('venta_detalle_seq_db'), 0.452, 28.00, 46, 1, (SELECT id_venta FROM nueva_venta_05_tarjeta)); -- FELIX CROQUETA (proporcional a $62/kg)
    
-- ============================================================================
-- VENTA: 06 de Julio - Total $881.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_06_efectivo AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-07-06', 881.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1, 12.00, 50, 2, (SELECT id_venta FROM nueva_venta_06_efectivo)),     -- WISKAS SOBRE
    (nextval('venta_detalle_seq_db'), 0.652, 30.00, 14, 1, (SELECT id_venta FROM nueva_venta_06_efectivo)), -- GANADOR ADULTO (proporcional a $46/kg)
    (nextval('venta_detalle_seq_db'), 0.208, 10.00, 41, 1, (SELECT id_venta FROM nueva_venta_06_efectivo)), -- WISKAS CROQUETA
    (nextval('venta_detalle_seq_db'), 1, 9.00, 27, 2, (SELECT id_venta FROM nueva_venta_06_efectivo)),      -- HUESO CON CARNE
    (nextval('venta_detalle_seq_db'), 0.161, 10.00, 47, 1, (SELECT id_venta FROM nueva_venta_06_efectivo)), -- CAT CHOW ADULTO
    (nextval('venta_detalle_seq_db'), 1.000, 92.00, 17, 1, (SELECT id_venta FROM nueva_venta_06_efectivo)), -- NUPEC CACHORRO (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.556, 20.00, 59, 1, (SELECT id_venta FROM nueva_venta_06_efectivo)), -- SEMILLA GIRASOL
    (nextval('venta_detalle_seq_db'), 3.046, 198.00, 43, 1, (SELECT id_venta FROM nueva_venta_06_efectivo)),-- MININO PLUS (proporcional a $65/kg)
    (nextval('venta_detalle_seq_db'), 2, 26.00, 51, 2, (SELECT id_venta FROM nueva_venta_06_efectivo)),     -- MININO PLUS SOBRE (2 pzas)
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_06_efectivo)),     -- ARENA GATO
    (nextval('venta_detalle_seq_db'), 1.000, 13.00, 58, 1, (SELECT id_venta FROM nueva_venta_06_efectivo)), -- MAIZ QUEBRADO (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.022, 47.00, 14, 1, (SELECT id_venta FROM nueva_venta_06_efectivo)), -- GANADOR ADULTO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.536, 15.00, 56, 1, (SELECT id_venta FROM nueva_venta_06_efectivo)), -- ALPISTE SIMPLE
    (nextval('venta_detalle_seq_db'), 1.063, 51.00, 41, 1, (SELECT id_venta FROM nueva_venta_06_efectivo)), -- WISKAS CROQUETA (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.870, 40.00, 14, 1, (SELECT id_venta FROM nueva_venta_06_efectivo)), -- GANADOR ADULTO (tercera anotación)
    (nextval('venta_detalle_seq_db'), 1, 11.00, 28, 2, (SELECT id_venta FROM nueva_venta_06_efectivo)),     -- DENTASTIX
    (nextval('venta_detalle_seq_db'), 1, 12.00, 53, 2, (SELECT id_venta FROM nueva_venta_06_efectivo)),     -- SOBRE FELIX
    (nextval('venta_detalle_seq_db'), 0.323, 21.00, 43, 1, (SELECT id_venta FROM nueva_venta_06_efectivo)), -- MININO PLUS (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.954, 62.00, 43, 1, (SELECT id_venta FROM nueva_venta_06_efectivo)), -- MININO PLUS (tercera anotación)
    (nextval('venta_detalle_seq_db'), 0.919, 57.00, 46, 1, (SELECT id_venta FROM nueva_venta_06_efectivo)), -- FELIX CROQUETA (proporcional a $62/kg)
    (nextval('venta_detalle_seq_db'), 1.000, 26.00, 15, 1, (SELECT id_venta FROM nueva_venta_06_efectivo)), -- GUESOS (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 41, 1, (SELECT id_venta FROM nueva_venta_06_efectivo)), -- WISKAS CROQUETA (tercera anotación)
    (nextval('venta_detalle_seq_db'), 0.351, 20.00, 11, 1, (SELECT id_venta FROM nueva_venta_06_efectivo)), -- DOGCHAW CACHORRO (proporcional a $57/kg)
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 44, 1, (SELECT id_venta FROM nueva_venta_06_efectivo)); -- MININO

-- ============================================================================
-- VENTA: 06 de Julio - Total $107.00 (Tarjeta)
-- ============================================================================
WITH nueva_venta_06_tarjeta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-07-06', 107.00, 'TARJETA', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_06_tarjeta)),     -- ARENA GATO
    (nextval('venta_detalle_seq_db'), 0.954, 62.00, 43, 1, (SELECT id_venta FROM nueva_venta_06_tarjeta)); -- MININO PLUS
    
-- ============================================================================
-- VENTA: 07 de Julio - Total $564.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_07_efectivo AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-07-07', 564.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1, 12.00, 53, 2, (SELECT id_venta FROM nueva_venta_07_efectivo)),     -- SOBRE FELIX
    (nextval('venta_detalle_seq_db'), 0.261, 24.00, 17, 1, (SELECT id_venta FROM nueva_venta_07_efectivo)), -- NUPEC CACHORRO
    (nextval('venta_detalle_seq_db'), 1.194, 74.00, 47, 1, (SELECT id_venta FROM nueva_venta_07_efectivo)), -- CATCHOW ADULTO (proporcional a $62/kg)
    (nextval('venta_detalle_seq_db'), 1, 22.00, 30, 2, (SELECT id_venta FROM nueva_venta_07_efectivo)),     -- BARRA PARA PAJARO
    (nextval('venta_detalle_seq_db'), 0.800, 44.00, 2, 1, (SELECT id_venta FROM nueva_venta_07_efectivo)),  -- PEDIGREE ADULTO (proporcional a $55/kg)
    (nextval('venta_detalle_seq_db'), 3, 36.00, 19, 2, (SELECT id_venta FROM nueva_venta_07_efectivo)),     -- PEDIGREE SOBRE (3 pzas)
    (nextval('venta_detalle_seq_db'), 0.750, 30.00, 62, 1, (SELECT id_venta FROM nueva_venta_07_efectivo)), -- FRIJOL NEGRO (proporcional a $40/kg)
    (nextval('venta_detalle_seq_db'), 0.550, 22.00, 61, 1, (SELECT id_venta FROM nueva_venta_07_efectivo)), -- LENTEJA (proporcional a $40/kg)
    (nextval('venta_detalle_seq_db'), 2.125, 102.00, 44, 1, (SELECT id_venta FROM nueva_venta_07_efectivo)),-- MININO (proporcional a $48/kg)
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_07_efectivo)),     -- ARENA GATO
    (nextval('venta_detalle_seq_db'), 0.452, 28.00, 46, 1, (SELECT id_venta FROM nueva_venta_07_efectivo)), -- FELIX CROQUETA (proporcional a $62/kg)
    (nextval('venta_detalle_seq_db'), 0.272, 25.00, 17, 1, (SELECT id_venta FROM nueva_venta_07_efectivo)), -- NUPEC CACHORRO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 1, 9.00, 27, 2, (SELECT id_venta FROM nueva_venta_07_efectivo)),      -- HUESO CON CARNE
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 41, 1, (SELECT id_venta FROM nueva_venta_07_efectivo)), -- WISKAS CROQUETA
    (nextval('venta_detalle_seq_db'), 0.609, 28.00, 9, 1, (SELECT id_venta FROM nueva_venta_07_efectivo)),  -- DOG CHAW ADULTO (proporcional a $46/kg)
    (nextval('venta_detalle_seq_db'), 2, 18.00, 27, 2, (SELECT id_venta FROM nueva_venta_07_efectivo)),     -- CARNAZA CON CARNE (2 pzas)
    (nextval('venta_detalle_seq_db'), 1.000, 26.00, 15, 1, (SELECT id_venta FROM nueva_venta_07_efectivo)), -- GUESOS (1 Kg)
    (nextval('venta_detalle_seq_db'), 3, 27.00, 27, 2, (SELECT id_venta FROM nueva_venta_07_efectivo));     -- HUESO CON CARNE (3 pzas)

-- ============================================================================
-- VENTA: 07 de Julio - Total $62.00 (Tarjeta)
-- ============================================================================
WITH nueva_venta_07_tarjeta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-07-07', 62.00, 'TARJETA', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.954, 62.00, 43, 1, (SELECT id_venta FROM nueva_venta_07_tarjeta)); -- MININO PLUS

-- ============================================================================
-- VENTA: 08 de Julio - Total $899.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_08_efectivo AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-07-08', 899.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.000, 13.00, 58, 1, (SELECT id_venta FROM nueva_venta_08_efectivo)), -- MAIZ QUEBRADO (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.500, 24.00, 44, 1, (SELECT id_venta FROM nueva_venta_08_efectivo)), -- MININO (1/2 Kg)
    (nextval('venta_detalle_seq_db'), 0.500, 23.00, 9, 1, (SELECT id_venta FROM nueva_venta_08_efectivo)),  -- DOG CHAW ADULTO
    (nextval('venta_detalle_seq_db'), 3, 135.00, 55, 2, (SELECT id_venta FROM nueva_venta_08_efectivo)),    -- ARENA GATO (3 pzas)
    (nextval('venta_detalle_seq_db'), 1, 9.00, 27, 2, (SELECT id_venta FROM nueva_venta_08_efectivo)),      -- HUESO CON CARNE
    (nextval('venta_detalle_seq_db'), 1.000, 28.00, 56, 1, (SELECT id_venta FROM nueva_venta_08_efectivo)), -- ALPISTE (1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 12.00, 53, 2, (SELECT id_venta FROM nueva_venta_08_efectivo)),     -- FELIX SOBRE
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_08_efectivo)),     -- ARENA GATO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 10, 120.00, 50, 2, (SELECT id_venta FROM nueva_venta_08_efectivo)),   -- SOBRES WISKAS (10 pzas)
    (nextval('venta_detalle_seq_db'), 0.444, 20.00, 10, 1, (SELECT id_venta FROM nueva_venta_08_efectivo)), -- DOG CHAW MINI Y PEQUEÑO
    (nextval('venta_detalle_seq_db'), 0.500, 14.00, 56, 1, (SELECT id_venta FROM nueva_venta_08_efectivo)), -- ALPIESTE (1/2 Kg)
    (nextval('venta_detalle_seq_db'), 1, 9.00, 27, 2, (SELECT id_venta FROM nueva_venta_08_efectivo)),      -- HUESO CON CARNE (segunda anotación)
    (nextval('venta_detalle_seq_db'), 1.087, 50.00, 14, 1, (SELECT id_venta FROM nueva_venta_08_efectivo)), -- GANADOR ADULTO
    (nextval('venta_detalle_seq_db'), 3, 135.00, 55, 2, (SELECT id_venta FROM nueva_venta_08_efectivo)),    -- ARENA GATO (tercera anotación, 3 pzas)
    (nextval('venta_detalle_seq_db'), 1.022, 47.00, 14, 1, (SELECT id_venta FROM nueva_venta_08_efectivo)), -- GANADOR ADULTO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 44, 1, (SELECT id_venta FROM nueva_venta_08_efectivo)), -- MININO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_08_efectivo)),     -- ARENA GATO (cuarta anotación)
    (nextval('venta_detalle_seq_db'), 0.400, 20.00, 65, 1, (SELECT id_venta FROM nueva_venta_08_efectivo)), -- FRIJOL PERUANO
    (nextval('venta_detalle_seq_db'), 1, 12.00, 53, 2, (SELECT id_venta FROM nueva_venta_08_efectivo)),     -- FELIX SOBRE (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.500, 23.00, 14, 1, (SELECT id_venta FROM nueva_venta_08_efectivo)), -- GANADOR ADULTO (tercera anotación)
    (nextval('venta_detalle_seq_db'), 1, 12.00, 22, 2, (SELECT id_venta FROM nueva_venta_08_efectivo)),     -- GANADOR SOBRE (ajustado a catálogo libreta)
    (nextval('venta_detalle_seq_db'), 0.323, 20.00, 47, 1, (SELECT id_venta FROM nueva_venta_08_efectivo)), -- CAT CHAW ADULTO
    (nextval('venta_detalle_seq_db'), 1.022, 47.00, 14, 1, (SELECT id_venta FROM nueva_venta_08_efectivo)); -- GANADOR ADULTO (cuarta anotación)

-- ============================================================================
-- VENTA: 08 de Julio - Total $97.00 (Tarjeta)
-- ============================================================================
WITH nueva_venta_08_tarjeta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-07-08', 97.00, 'TARJETA', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.054, 97.00, 17, 1, (SELECT id_venta FROM nueva_venta_08_tarjeta)); -- NUPEC CACHORRO
    
-- ============================================================================
-- VENTA: 09 de Julio - Total $597.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_09_efectivo AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-07-09', 597.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.714, 20.00, 56, 1, (SELECT id_venta FROM nueva_venta_09_efectivo)), -- ALPISTE SIMPLE
    (nextval('venta_detalle_seq_db'), 0.208, 10.00, 44, 1, (SELECT id_venta FROM nueva_venta_09_efectivo)), -- MININO
    (nextval('venta_detalle_seq_db'), 1, 12.00, 50, 2, (SELECT id_venta FROM nueva_venta_09_efectivo)),     -- WISKAS SOBRE
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 41, 1, (SELECT id_venta FROM nueva_venta_09_efectivo)), -- WISKAS CROQUETA
    (nextval('venta_detalle_seq_db'), 0.444, 20.00, 10, 1, (SELECT id_venta FROM nueva_venta_09_efectivo)), -- DOGCHAW MINI
    (nextval('venta_detalle_seq_db'), 0.400, 20.00, 65, 1, (SELECT id_venta FROM nueva_venta_09_efectivo)), -- FRIJOL PERUANO
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_09_efectivo)),     -- ARENA GATO
    (nextval('venta_detalle_seq_db'), 0.491, 28.00, 11, 1, (SELECT id_venta FROM nueva_venta_09_efectivo)), -- DOG CHOW CACHORRO
    (nextval('venta_detalle_seq_db'), 0.536, 15.00, 56, 1, (SELECT id_venta FROM nueva_venta_09_efectivo)), -- ALPISTE SIMPLE (segunda anotación)
    (nextval('venta_detalle_seq_db'), 1.337, 115.00, 16, 1, (SELECT id_venta FROM nueva_venta_09_efectivo)),-- NUPEC ADULTO RP (Mapeado a Nupec Adulto)
    (nextval('venta_detalle_seq_db'), 0.326, 30.00, 17, 1, (SELECT id_venta FROM nueva_venta_09_efectivo)), -- NUPEC CACORRO
    (nextval('venta_detalle_seq_db'), 0.919, 57.00, 46, 1, (SELECT id_venta FROM nueva_venta_09_efectivo)), -- FELIX CROQUETA
    (nextval('venta_detalle_seq_db'), 2.043, 94.00, 14, 1, (SELECT id_venta FROM nueva_venta_09_efectivo)), -- GANADOR ADULTO (proporcional a $46/kg)
    (nextval('venta_detalle_seq_db'), 1.857, 104.00, 13, 1, (SELECT id_venta FROM nueva_venta_09_efectivo)),-- GANADOR CACHORRO (Premium Raza Pequeña/Cachorro)
    (nextval('venta_detalle_seq_db'), 2.222, 100.00, 10, 1, (SELECT id_venta FROM nueva_venta_09_efectivo));-- DOGCHAW PEQUEÑO ADULTO

-- ============================================================================
-- VENTA: 09 de Julio - Total $45.00 (Tarjeta)
-- ============================================================================
WITH nueva_venta_09_tarjeta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-07-09', 45.00, 'TARJETA', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_09_tarjeta));     -- ARENA GATO

-- ============================================================================
-- VENTA: 10 de Julio - Total $648.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_10_efectivo AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-07-10', 648.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.480, 12.00, 64, 1, (SELECT id_venta FROM nueva_venta_10_efectivo)), -- ARROZ
    (nextval('venta_detalle_seq_db'), 1.022, 47.00, 14, 1, (SELECT id_venta FROM nueva_venta_10_efectivo)), -- GANADOR ADULTO
    (nextval('venta_detalle_seq_db'), 1.250, 115.00, 17, 1, (SELECT id_venta FROM nueva_venta_10_efectivo)),-- NUPEC CACHORRO
    (nextval('venta_detalle_seq_db'), 1.923, 50.00, 15, 1, (SELECT id_venta FROM nueva_venta_10_efectivo)), -- GUESOS
    (nextval('venta_detalle_seq_db'), 2, 24.00, 19, 2, (SELECT id_venta FROM nueva_venta_10_efectivo)),     -- PEDIGREE SOBRE (2 pzas a $12 libreta)
    (nextval('venta_detalle_seq_db'), 1.071, 30.00, 56, 1, (SELECT id_venta FROM nueva_venta_10_efectivo)), -- ALPISTE SIMPLE
    (nextval('venta_detalle_seq_db'), 0.500, 13.00, 15, 1, (SELECT id_venta FROM nueva_venta_10_efectivo)), -- GUESOS (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.533, 24.00, 10, 1, (SELECT id_venta FROM nueva_venta_10_efectivo)), -- DOGCHAW MINI
    (nextval('venta_detalle_seq_db'), 0.468, 29.00, 46, 1, (SELECT id_venta FROM nueva_venta_10_efectivo)), -- FELIX CROQUETA
    (nextval('venta_detalle_seq_db'), 3, 27.00, 27, 2, (SELECT id_venta FROM nueva_venta_10_efectivo)),     -- HUESO CON TOCINO (3 pzas)
    (nextval('venta_detalle_seq_db'), 1, 12.00, 53, 2, (SELECT id_venta FROM nueva_venta_10_efectivo)),     -- FELIX SOBRE
    (nextval('venta_detalle_seq_db'), 0.500, 23.00, 14, 1, (SELECT id_venta FROM nueva_venta_10_efectivo)), -- GANADOR ADULTO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.242, 15.00, 47, 1, (SELECT id_venta FROM nueva_venta_10_efectivo)), -- CAT CHOW ADULTO
    (nextval('venta_detalle_seq_db'), 1.000, 28.00, 56, 1, (SELECT id_venta FROM nueva_venta_10_efectivo)), -- ALPIESTE (1  Kg)
    (nextval('venta_detalle_seq_db'), 0.500, 15.00, 57, 1, (SELECT id_venta FROM nueva_venta_10_efectivo)), -- ALPISTE COMPUESTO
    (nextval('venta_detalle_seq_db'), 2, 16.00, 23, 2, (SELECT id_venta FROM nueva_venta_10_efectivo)),     -- HUESOS BLANCOS (2 pzas)
    (nextval('venta_detalle_seq_db'), 0.403, 25.00, 47, 1, (SELECT id_venta FROM nueva_venta_10_efectivo)), -- CAT CHOW ADULTO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.789, 30.00, 3, 1, (SELECT id_venta FROM nueva_venta_10_efectivo)),  -- HI DOG
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_10_efectivo)),     -- ARENA GATO
    (nextval('venta_detalle_seq_db'), 1, 11.00, 22, 2, (SELECT id_venta FROM nueva_venta_10_efectivo));     -- GANADOR SOBRE
    
-- ============================================================================
-- VENTA: 11 de Julio - Total $717.00 (Efectivo)
-- ============================================================================
-- ============================================================================
-- VENTA: 11 de Julio - Total $817.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_11_jul AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-07-11', 867.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.250, 60.00, 41, 1, (SELECT id_venta FROM nueva_venta_11_jul)), -- WISKAS CROQUETA (proporcional a $48/kg)
    (nextval('venta_detalle_seq_db'), 0.800, 44.00, 2, 1, (SELECT id_venta FROM nueva_venta_11_jul)),  -- PEDIGREE ADULTO (proporcional a $55/kg)
    (nextval('venta_detalle_seq_db'), 0.954, 62.00, 43, 1, (SELECT id_venta FROM nueva_venta_11_jul)), -- MININO PLUS (proporcional a $65/kg)
    (nextval('venta_detalle_seq_db'), 0.417, 15.00, 59, 1, (SELECT id_venta FROM nueva_venta_11_jul)), -- SEMILLA GIRASOL
    (nextval('venta_detalle_seq_db'), 1, 12.00, 53, 2, (SELECT id_venta FROM nueva_venta_11_jul)),     -- FELIX SOBRE
    (nextval('venta_detalle_seq_db'), 0.533, 24.00, 10, 1, (SELECT id_venta FROM nueva_venta_11_jul)), -- DOGCHAW ADULTO MINI
    (nextval('venta_detalle_seq_db'), 0.581, 50.00, 16, 1, (SELECT id_venta FROM nueva_venta_11_jul)), -- NUPEC ADULTO (proporcional a $86/kg)
    (nextval('venta_detalle_seq_db'), 1.000, 28.00, 56, 1, (SELECT id_venta FROM nueva_venta_11_jul)), -- ALPISTE (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.545, 30.00, 2, 1, (SELECT id_venta FROM nueva_venta_11_jul)),  -- PEDIGREE ADULTO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 3.333, 100.00, 57, 1, (SELECT id_venta FROM nueva_venta_11_jul)),-- ALPIETE COMPUESTO A GRANEL
    (nextval('venta_detalle_seq_db'), 1.538, 20.00, 58, 1, (SELECT id_venta FROM nueva_venta_11_jul)), -- MAIZ QUEBRADO (proporcional a $13/kg)
    (nextval('venta_detalle_seq_db'), 0.400, 14.00, 66, 1, (SELECT id_venta FROM nueva_venta_11_jul)), -- MAIZ PALOMERO (proporcional a $35/kg)
    (nextval('venta_detalle_seq_db'), 0.521, 25.00, 44, 1, (SELECT id_venta FROM nueva_venta_11_jul)), -- MININO
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_11_jul)),     -- ARENA GATO
    (nextval('venta_detalle_seq_db'), 0.208, 10.00, 41, 1, (SELECT id_venta FROM nueva_venta_11_jul)), -- WISKAS CROQUETA (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 44, 1, (SELECT id_venta FROM nueva_venta_11_jul)), -- MININO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.954, 62.00, 43, 1, (SELECT id_venta FROM nueva_venta_11_jul)), -- MININO PLUS (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 41, 1, (SELECT id_venta FROM nueva_venta_11_jul)), -- WISKAS CROQUETA (tercera anotación)
    (nextval('venta_detalle_seq_db'), 1, 12.00, 53, 2, (SELECT id_venta FROM nueva_venta_11_jul)),     -- FELIX SOBRE (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.465, 20.00, 42, 1, (SELECT id_venta FROM nueva_venta_11_jul)), -- GATINA
    (nextval('venta_detalle_seq_db'), 1.111, 50.00, 10, 1, (SELECT id_venta FROM nueva_venta_11_jul)), -- DOGCHAW PEQUEÑOS (Mini y Pequeño)
    (nextval('venta_detalle_seq_db'), 2.043, 114.00, 14, 1, (SELECT id_venta FROM nueva_venta_11_jul)); -- GANADOR ADULTO (proporcional a $46/kg)
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    