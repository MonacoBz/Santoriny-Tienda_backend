-- ============================================================================
-- VENTA: 01 de Junio - Total $569.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_01 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-01', 484.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.500, 21.00, 61, 1, (SELECT id_venta FROM nueva_venta_01)), -- FRIJOL PERUANO (1/2 Kg basado en $42/kg)
    (nextval('venta_detalle_seq_db'), 3.571, 100.00, 56, 1, (SELECT id_venta FROM nueva_venta_01)), -- ALPISTE (proporcional a $28/kg)
    (nextval('venta_detalle_seq_db'), 1.000, 28.00, 56, 1, (SELECT id_venta FROM nueva_venta_01)),  -- ALPISTE (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 28.00, 56, 1, (SELECT id_venta FROM nueva_venta_01)),  -- ALPISTE (segunda anotación, 1 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 40.00, 49, 1, (SELECT id_venta FROM nueva_venta_01)),  -- CAT SUPREME CROQUETA (1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 12.00, 50, 2, (SELECT id_venta FROM nueva_venta_01)),     -- SOBRE WISKAS (Precio catálogo)
    (nextval('venta_detalle_seq_db'), 1, 22.00, 28, 2, (SELECT id_venta FROM nueva_venta_01)),     -- DENTIX PEDIGRE (Precio libreta)
    (nextval('venta_detalle_seq_db'), 1.000, 46.00, 9, 1, (SELECT id_venta FROM nueva_venta_01)),   -- DOG CHOW ADULTO (1 Kg)
    (nextval('venta_detalle_seq_db'), 2, 26.00, 51, 2, (SELECT id_venta FROM nueva_venta_01)),     -- MININO PLUS SOBRE (2 pzas, Precio catálogo)
    (nextval('venta_detalle_seq_db'), 0.500, 28.00, 12, 1, (SELECT id_venta FROM nueva_venta_01)), -- GANADOR PREMIUM ADULTO (proporcional a $56/kg)
    (nextval('venta_detalle_seq_db'), 1.036, 58.00, 13, 1, (SELECT id_venta FROM nueva_venta_01)), -- GANADOR PREMIUM RAZA PEQUEÑA (proporcional a $56/kg)
    (nextval('venta_detalle_seq_db'), 0.500, 21.00, 61, 1, (SELECT id_venta FROM nueva_venta_01)), -- FRIJOL PERUANO (segunda anotación, 1/2 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 56.00, 12, 1, (SELECT id_venta FROM nueva_venta_01)); -- GANADOR PREMIUM ADULTO (1 Kg)
    
-- ============================================================================
-- VENTA: 02 de Junio - Total $483.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_02 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-02', 483.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.000, 25.00, 64, 1, (SELECT id_venta FROM nueva_venta_02)), -- ARROZ (1 Kilo)
    (nextval('venta_detalle_seq_db'), 0.581, 36.00, 48, 1, (SELECT id_venta FROM nueva_venta_02)), -- CAT CHOW GATITOS (proporcional a $62/kg)
    (nextval('venta_detalle_seq_db'), 0.500, 13.00, 64, 1, (SELECT id_venta FROM nueva_venta_02)), -- ARROZ (1/2 Kilo)
    (nextval('venta_detalle_seq_db'), 0.500, 24.00, 41, 1, (SELECT id_venta FROM nueva_venta_02)), -- WISKAS CROQUETA
    (nextval('venta_detalle_seq_db'), 2, 26.00, 51, 2, (SELECT id_venta FROM nueva_venta_02)),     -- SOBRES MININO PLUS (2 pzas)
    (nextval('venta_detalle_seq_db'), 1, 10.00, 25, 2, (SELECT id_venta FROM nueva_venta_02)),     -- PATA POLLO CARNAZA
    (nextval('venta_detalle_seq_db'), 3, 9.00, 26, 2, (SELECT id_venta FROM nueva_venta_02)),      -- HUESITOS CARNAZA (3 pzas de $3)
    (nextval('venta_detalle_seq_db'), 0.818, 45.00, 2, 1, (SELECT id_venta FROM nueva_venta_02)),  -- PEDIGREE (proporcional a $55/kg)
    (nextval('venta_detalle_seq_db'), 1.043, 48.00, 9, 1, (SELECT id_venta FROM nueva_venta_02)),  -- DOG CHOW ADULTO (Precio libreta)
    (nextval('venta_detalle_seq_db'), 0.556, 20.00, 59, 1, (SELECT id_venta FROM nueva_venta_02)), -- SEMILLA GIRASOL
    (nextval('venta_detalle_seq_db'), 1.500, 39.00, 15, 1, (SELECT id_venta FROM nueva_venta_02)), -- GUESOS
    (nextval('venta_detalle_seq_db'), 1.000, 40.00, 49, 1, (SELECT id_venta FROM nueva_venta_02)), -- ZOOPREME CAT
    (nextval('venta_detalle_seq_db'), 2.174, 100.00, 9, 1, (SELECT id_venta FROM nueva_venta_02)), -- DOG CHOW ADULTO (Segunda anotación)
    (nextval('venta_detalle_seq_db'), 1, 22.00, 54, 2, (SELECT id_venta FROM nueva_venta_02)),     -- CHURU
    (nextval('venta_detalle_seq_db'), 2, 26.00, 51, 2, (SELECT id_venta FROM nueva_venta_02));     -- SOBRES MININO (2 pzas)
    
-- ============================================================================
-- VENTA: 03 de Junio - Total $355.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_03 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-03', 355.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.000, 28.00, 56, 1, (SELECT id_venta FROM nueva_venta_03)), -- ALPISTE SIMPLE (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.500, 15.00, 57, 1, (SELECT id_venta FROM nueva_venta_03)), -- ALPISTE COMPUESTO
    (nextval('venta_detalle_seq_db'), 3, 33.00, 22, 2, (SELECT id_venta FROM nueva_venta_03)),     -- SOBRE GANADOR (3 pzas)
    (nextval('venta_detalle_seq_db'), 2.000, 90.00, 10, 1, (SELECT id_venta FROM nueva_venta_03)), -- DOG CHOW ADULTO MINI Y PEQUEÑO (2 Kgs)
    (nextval('venta_detalle_seq_db'), 1.113, 69.00, 47, 1, (SELECT id_venta FROM nueva_venta_03)), -- CAT CHOW ADULTO (proporcional a $62/kg)
    (nextval('venta_detalle_seq_db'), 1.000, 46.00, 14, 1, (SELECT id_venta FROM nueva_venta_03)), -- GANADOR ADULTO (1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 11.00, 22, 2, (SELECT id_venta FROM nueva_venta_03)),     -- SOBRE GANADOR (1 pza)
    (nextval('venta_detalle_seq_db'), 2, 26.00, 51, 2, (SELECT id_venta FROM nueva_venta_03)),     -- SOBRES MININO (2 pzas)
    (nextval('venta_detalle_seq_db'), 0.548, 34.00, 47, 1, (SELECT id_venta FROM nueva_venta_03)), -- CAT CHOW ADULTO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 1, 3.00, 26, 2, (SELECT id_venta FROM nueva_venta_03));      -- PALO CARNAZA (1 pza)
    
-- ============================================================================
-- VENTA: 04 de Junio - Total $440.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_04 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-04', 440.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 2, 16.00, 23, 2, (SELECT id_venta FROM nueva_venta_04)),     -- HUESOS BLANCOS (2 pzas a $8 c/u)
    (nextval('venta_detalle_seq_db'), 0.308, 20.00, 43, 1, (SELECT id_venta FROM nueva_venta_04)), -- MININO PLUS (proporcional a $65/kg)
    (nextval('venta_detalle_seq_db'), 1, 13.00, 51, 2, (SELECT id_venta FROM nueva_venta_04)),     -- SOBRE MININO (Precio libreta)
    (nextval('venta_detalle_seq_db'), 1.000, 46.00, 14, 1, (SELECT id_venta FROM nueva_venta_04)), -- GANADOR (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 56.00, 12, 1, (SELECT id_venta FROM nueva_venta_04)), -- GANADOR PREMIUM ADULTO (1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_04)),     -- ARENA GATO (1 pza)
    (nextval('venta_detalle_seq_db'), 1.000, 36.00, 59, 1, (SELECT id_venta FROM nueva_venta_04)), -- SEMILLA GIRASOL (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 48.00, 44, 1, (SELECT id_venta FROM nueva_venta_04)), -- MININO (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.714, 40.00, 12, 1, (SELECT id_venta FROM nueva_venta_04)), -- GANADOR PREMIUM ADULTO
    (nextval('venta_detalle_seq_db'), 1.000, 26.00, 15, 1, (SELECT id_venta FROM nueva_venta_04)), -- GUESOS (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 57.00, 18, 1, (SELECT id_venta FROM nueva_venta_04)), -- GANADOR CACHORRO (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.500, 24.00, 41, 1, (SELECT id_venta FROM nueva_venta_04)), -- WISKAS CROQUETA
    (nextval('venta_detalle_seq_db'), 1, 13.00, 51, 2, (SELECT id_venta FROM nueva_venta_04));     -- SOBRE MININO (segunda anotación)

-- ============================================================================
-- VENTA: 05 de Junio - Total $328.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_05 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-05', 328.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1, 40.00, 29, 2, (SELECT id_venta FROM nueva_venta_05)),     -- PELOTA (Mapeado a JUGUETE PERRO por precio/tipo)
    (nextval('venta_detalle_seq_db'), 3, 9.00, 26, 2, (SELECT id_venta FROM nueva_venta_05)),      -- HUESOS DE CARNAZA (3 pzas de $3 c/u, total $9)
    (nextval('venta_detalle_seq_db'), 0.543, 25.00, 9, 1, (SELECT id_venta FROM nueva_venta_05)),  -- DOG CHOW ADULTO (proporcional a $46/kg)
    (nextval('venta_detalle_seq_db'), 0.581, 50.00, 16, 1, (SELECT id_venta FROM nueva_venta_05)), -- NUPEC ADULTO (proporcional a $86/kg)
    (nextval('venta_detalle_seq_db'), 0.667, 20.00, 57, 1, (SELECT id_venta FROM nueva_venta_05)), -- ALPISTE COMPUESTO
    (nextval('venta_detalle_seq_db'), 1.000, 46.00, 14, 1, (SELECT id_venta FROM nueva_venta_05)), -- GANADOR (1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 11.00, 22, 2, (SELECT id_venta FROM nueva_venta_05)),     -- SOBRE GANADOR
    (nextval('venta_detalle_seq_db'), 1, 13.00, 50, 2, (SELECT id_venta FROM nueva_venta_05)),     -- SOBRE WISKAS (Precio libreta)
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 41, 1, (SELECT id_venta FROM nueva_venta_05)), -- WISKAS CROQUETA
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 44, 1, (SELECT id_venta FROM nueva_venta_05)), -- MININO (proporcional a $48/kg)
    (nextval('venta_detalle_seq_db'), 0.652, 30.00, 9, 1, (SELECT id_venta FROM nueva_venta_05)),  -- DOG CHOW ADULTO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 2, 44.00, 54, 2, (SELECT id_venta FROM nueva_venta_05));     -- CHURUS (2 pzas a $22 c/u)
   
    
-- ============================================================================
-- VENTA: 06 de Junio - Total $441.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_06 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-06', 441.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 2, 90.00, 55, 2, (SELECT id_venta FROM nueva_venta_06)),     -- ARENA GATO (2 pzas a $45 c/u)
    (nextval('venta_detalle_seq_db'), 1.554, 87.00, 13, 1, (SELECT id_venta FROM nueva_venta_06)), -- GANADOR PREMIUM RAZAS PEQUEÑAS (proporcional a $56/kg)
    (nextval('venta_detalle_seq_db'), 1.042, 25.00, 7, 1, (SELECT id_venta FROM nueva_venta_06)),  -- BN BASIC (proporcional a $24/kg)
    (nextval('venta_detalle_seq_db'), 2, 6.00, 26, 2, (SELECT id_venta FROM nueva_venta_06)),      -- PALITOS CARNAZA (2 pzas a $3 c/u)
    (nextval('venta_detalle_seq_db'), 1.000, 46.00, 14, 1, (SELECT id_venta FROM nueva_venta_06)), -- GANADOR ADULTO (1 Kg)
    (nextval('venta_detalle_seq_db'), 2, 18.00, 27, 2, (SELECT id_venta FROM nueva_venta_06)),     -- HUESOS CARNAZA C/CARNE (2 pzas a $9 c/u)
    (nextval('venta_detalle_seq_db'), 0.323, 20.00, 48, 1, (SELECT id_venta FROM nueva_venta_06)), -- CAT CHOW GATITOS (proporcional a $62/kg)
    (nextval('venta_detalle_seq_db'), 0.492, 32.00, 43, 1, (SELECT id_venta FROM nueva_venta_06)), -- MININO PLUS (proporcional a $65/kg)
    (nextval('venta_detalle_seq_db'), 1.000, 26.00, 15, 1, (SELECT id_venta FROM nueva_venta_06)), -- GUESOS (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 40.00, 49, 1, (SELECT id_venta FROM nueva_venta_06)), -- ZOOPREMECAT CROQUETA (1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 11.00, 22, 2, (SELECT id_venta FROM nueva_venta_06)),     -- GANADOR SOBRE
    (nextval('venta_detalle_seq_db'), 0.714, 40.00, 12, 1, (SELECT id_venta FROM nueva_venta_06)); -- GANADOR PREMIUM ADULTO
   
-- ============================================================================
-- VENTA: 07 de Junio - Total $593.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_07 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-07', 593.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_07)),     -- ARENA GATO (1 pza)
    (nextval('venta_detalle_seq_db'), 1.000, 43.00, 42, 1, (SELECT id_venta FROM nueva_venta_07)), -- GATINA (1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 3.00, 26, 2, (SELECT id_venta FROM nueva_venta_07)),      -- PALITO CARNAZA (1 pza)
    (nextval('venta_detalle_seq_db'), 0.268, 15.00, 13, 1, (SELECT id_venta FROM nueva_venta_07)), -- GANADOR PREMIUM RAZA PEQUEÑA (proporcional a $56/kg)
    (nextval('venta_detalle_seq_db'), 0.893, 50.00, 12, 1, (SELECT id_venta FROM nueva_venta_07)), -- GANADOR PREMIUM ADULTO
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 41, 1, (SELECT id_venta FROM nueva_venta_07)), -- WISKAS CROQUETA
    (nextval('venta_detalle_seq_db'), 0.435, 20.00, 14, 1, (SELECT id_venta FROM nueva_venta_07)), -- GANADOR (proporcional a $46/kg)
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 44, 1, (SELECT id_venta FROM nueva_venta_07)), -- MININO (proporcional a $48/kg)
    (nextval('venta_detalle_seq_db'), 0.357, 20.00, 12, 1, (SELECT id_venta FROM nueva_venta_07)), -- GANADOR PREMIUM ADULTO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.400, 26.00, 43, 1, (SELECT id_venta FROM nueva_venta_07)), -- MININO PLUS (proporcional a $65/kg)
    (nextval('venta_detalle_seq_db'), 0.357, 10.00, 56, 1, (SELECT id_venta FROM nueva_venta_07)), -- ALPISTE
    (nextval('venta_detalle_seq_db'), 0.814, 70.00, 16, 1, (SELECT id_venta FROM nueva_venta_07)), -- NUPEC ADULTO (proporcional a $86/kg)
    (nextval('venta_detalle_seq_db'), 0.446, 25.00, 12, 1, (SELECT id_venta FROM nueva_venta_07)), -- GANADOR PREMIUM ADULTO (tercera anotación)
    (nextval('venta_detalle_seq_db'), 0.446, 25.00, 13, 1, (SELECT id_venta FROM nueva_venta_07)), -- GANADOR PREMIUM RAZAS PEQUEÑAS (segunda anotación)
    (nextval('venta_detalle_seq_db'), 1.000, 48.00, 41, 1, (SELECT id_venta FROM nueva_venta_07)), -- WISKAS CROQUETA (segunda anotación, 1 Kg)
    (nextval('venta_detalle_seq_db'), 1.538, 100.00, 43, 1, (SELECT id_venta FROM nueva_venta_07)),-- MININO PLUS (tercera anotación)
    (nextval('venta_detalle_seq_db'), 0.492, 32.00, 43, 1, (SELECT id_venta FROM nueva_venta_07)); -- MININO PLUS (cuarta anotación)
    
-- ============================================================================
-- VENTA: 08 de Junio - Total $849.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_08 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-08', 849.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1, 12.00, 50, 2, (SELECT id_venta FROM nueva_venta_08)),     -- WISKAS SOBRE
    (nextval('venta_detalle_seq_db'), 0.630, 29.00, 14, 1, (SELECT id_venta FROM nueva_venta_08)), -- GANADOR RAZA PEQUEÑA (Mapeado a Ganador Adulto)
    (nextval('venta_detalle_seq_db'), 2, 26.00, 19, 2, (SELECT id_venta FROM nueva_venta_08)),     -- SOBRES PEDIGREE (2 pzas)
    (nextval('venta_detalle_seq_db'), 1.087, 50.00, 9, 1, (SELECT id_venta FROM nueva_venta_08)),  -- DOG CHOW ADULTO
    (nextval('venta_detalle_seq_db'), 0.444, 20.00, 10, 1, (SELECT id_venta FROM nueva_venta_08)), -- DOG CHOW PEQUEÑO
    (nextval('venta_detalle_seq_db'), 1.538, 20.00, 58, 1, (SELECT id_venta FROM nueva_venta_08)), -- MAIZ QUEBRADO
    (nextval('venta_detalle_seq_db'), 3.333, 100.00, 57, 1, (SELECT id_venta FROM nueva_venta_08)),-- ALPISTE COMPUESTO
    (nextval('venta_detalle_seq_db'), 0.208, 10.00, 44, 1, (SELECT id_venta FROM nueva_venta_08)), -- MININO
    (nextval('venta_detalle_seq_db'), 0.161, 10.00, 47, 1, (SELECT id_venta FROM nueva_venta_08)), -- CAT CHOW
    (nextval('venta_detalle_seq_db'), 0.435, 20.00, 9, 1, (SELECT id_venta FROM nueva_venta_08)),  -- DOG CHOW
    (nextval('venta_detalle_seq_db'), 1, 13.00, 50, 2, (SELECT id_venta FROM nueva_venta_08)),     -- SOBRE WISKAS
    (nextval('venta_detalle_seq_db'), 1.000, 46.00, 9, 1, (SELECT id_venta FROM nueva_venta_08)),  -- DOG CHOW ADULTO (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.231, 80.00, 43, 1, (SELECT id_venta FROM nueva_venta_08)), -- MININO PLUS
    (nextval('venta_detalle_seq_db'), 0.357, 15.00, 61, 1, (SELECT id_venta FROM nueva_venta_08)), -- FRIJOL
    (nextval('venta_detalle_seq_db'), 0.500, 18.00, 59, 1, (SELECT id_venta FROM nueva_venta_08)), -- SEMILLA GIRASOL
    (nextval('venta_detalle_seq_db'), 2, 26.00, 51, 2, (SELECT id_venta FROM nueva_venta_08)),     -- MININO PLUS SOBRE (2 pzas a $13 c/u)
    (nextval('venta_detalle_seq_db'), 0.500, 20.00, 49, 1, (SELECT id_venta FROM nueva_venta_08)), -- ZOOPREME CAT
    (nextval('venta_detalle_seq_db'), 0.714, 40.00, 12, 1, (SELECT id_venta FROM nueva_venta_08)), -- GANADOR PREMIUM
    (nextval('venta_detalle_seq_db'), 2, 20.00, 20, 2, (SELECT id_venta FROM nueva_venta_08)),     -- FIDUS PRO SOBRE (2 pzas a $10 c/u)
    (nextval('venta_detalle_seq_db'), 1.500, 39.00, 15, 1, (SELECT id_venta FROM nueva_venta_08)), -- GUESOSO
    (nextval('venta_detalle_seq_db'), 1.000, 40.00, 49, 1, (SELECT id_venta FROM nueva_venta_08)), -- ZOOPREME CAT (segunda anotación)
    (nextval('venta_detalle_seq_db'), 2, 22.00, 22, 2, (SELECT id_venta FROM nueva_venta_08)),     -- SOBRES GANADOR (2 pzas)
    (nextval('venta_detalle_seq_db'), 1, 80.00, 35, 2, (SELECT id_venta FROM nueva_venta_08)),     -- CORREA CHICA C/ARNEZ TELA
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_08));     -- ARENA GATO
    
-- ============================================================================
-- VENTA: 09 de Junio - Total $847.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_09 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-09', 847.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.000, 92.00, 17, 1, (SELECT id_venta FROM nueva_venta_09)), -- NUPEC CACHORRO (1 Kg)
    (nextval('venta_detalle_seq_db'), 2.174, 100.00, 9, 1, (SELECT id_venta FROM nueva_venta_09)), -- DOG CHOW ADULTO (proporcional a $46/kg)
    (nextval('venta_detalle_seq_db'), 1, 12.00, 50, 2, (SELECT id_venta FROM nueva_venta_09)),     -- WISKAS SOBRE
    (nextval('venta_detalle_seq_db'), 0.233, 10.00, 42, 1, (SELECT id_venta FROM nueva_venta_09)), -- GATINA
    (nextval('venta_detalle_seq_db'), 0.250, 10.00, 5, 1, (SELECT id_venta FROM nueva_venta_09)),  -- QUEEN PET (proporcional a $40/kg)
    (nextval('venta_detalle_seq_db'), 1.113, 69.00, 47, 1, (SELECT id_venta FROM nueva_venta_09)), -- CAT CHOW ADULTO
    (nextval('venta_detalle_seq_db'), 1.000, 26.00, 15, 1, (SELECT id_venta FROM nueva_venta_09)), -- GUESOS (1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 8.00, 23, 2, (SELECT id_venta FROM nueva_venta_09)),      -- HUESO BLANCO
    (nextval('venta_detalle_seq_db'), 1.000, 28.00, 56, 1, (SELECT id_venta FROM nueva_venta_09)), -- ALPISTE (1 Kg)
    (nextval('venta_detalle_seq_db'), 3, 39.00, 21, 2, (SELECT id_venta FROM nueva_venta_09)),     -- DOG CHOW SOBRE (3 pzas a $13 c/u)
    (nextval('venta_detalle_seq_db'), 0.326, 15.00, 14, 1, (SELECT id_venta FROM nueva_venta_09)), -- GANADOR
    (nextval('venta_detalle_seq_db'), 0.938, 45.00, 44, 1, (SELECT id_venta FROM nueva_venta_09)), -- MININO
    (nextval('venta_detalle_seq_db'), 1.000, 45.00, 10, 1, (SELECT id_venta FROM nueva_venta_09)), -- DOG CHOW MINIS Y PEQUEÑOS (1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 90.00, 37, 2, (SELECT id_venta FROM nueva_venta_09)),     -- PECHERA GRANDE TELA
    (nextval('venta_detalle_seq_db'), 1, 13.00, 19, 2, (SELECT id_venta FROM nueva_venta_09)),     -- SOBRE PEDIGREE
    (nextval('venta_detalle_seq_db'), 0.509, 29.00, 18, 1, (SELECT id_venta FROM nueva_venta_09)), -- GANADOR CACHORRO
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_09)),     -- ARENA GATO
    (nextval('venta_detalle_seq_db'), 0.877, 50.00, 18, 1, (SELECT id_venta FROM nueva_venta_09)), -- GANADOR CACHORRO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 1, 11.00, 22, 2, (SELECT id_venta FROM nueva_venta_09)),     -- SOBRE GANADOR
    (nextval('venta_detalle_seq_db'), 0.492, 32.00, 43, 1, (SELECT id_venta FROM nueva_venta_09)), -- MININO PLUS
    (nextval('venta_detalle_seq_db'), 0.465, 20.00, 42, 1, (SELECT id_venta FROM nueva_venta_09)), -- GATINA (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.313, 15.00, 41, 1, (SELECT id_venta FROM nueva_venta_09)); -- WISKAS CROQUETA
    
-- ============================================================================
-- VENTA: 10 de Junio - Total $310.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_10 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-10', 310.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 2.000, 92.00, 9, 1, (SELECT id_venta FROM nueva_venta_10)),  -- DOG CHOW ADULTO (2 Kgs)
    (nextval('venta_detalle_seq_db'), 1, 40.00, 34, 2, (SELECT id_venta FROM nueva_venta_10)),     -- CORREA REDONDA CHICA TELA
    (nextval('venta_detalle_seq_db'), 1, 13.00, 21, 2, (SELECT id_venta FROM nueva_venta_10)),     -- SOBRE DOG CHOW
    (nextval('venta_detalle_seq_db'), 1.000, 13.00, 58, 1, (SELECT id_venta FROM nueva_venta_10)), -- MAIZ QUEBRADO (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.526, 20.00, 3, 1, (SELECT id_venta FROM nueva_venta_10)),  -- HI DOG (proporcional a $38/kg)
    (nextval('venta_detalle_seq_db'), 0.714, 20.00, 56, 1, (SELECT id_venta FROM nueva_venta_10)), -- ALPISTE SIMPLE
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 41, 1, (SELECT id_venta FROM nueva_venta_10)), -- WISKAS CROQUETA
    (nextval('venta_detalle_seq_db'), 2, 24.00, 51, 2, (SELECT id_venta FROM nueva_venta_10)),     -- MININO PLUS SOBRE (2 pzas a $12 c/u)
    (nextval('venta_detalle_seq_db'), 1.000, 40.00, 49, 1, (SELECT id_venta FROM nueva_venta_10)), -- ZOOPREME CAT CROQUETA (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.609, 28.00, 14, 1, (SELECT id_venta FROM nueva_venta_10)); -- GANADOR ADULTO

-- ============================================================================
-- VENTA: 11 de Junio - Total $641.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_11 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-11', 641.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.435, 20.00, 9, 1, (SELECT id_venta FROM nueva_venta_11)),  -- DOG CHOW ADULTO
    (nextval('venta_detalle_seq_db'), 0.750, 30.00, 62, 1, (SELECT id_venta FROM nueva_venta_11)), -- FRIJOL NEGRO (proporcional a $40/kg)
    (nextval('venta_detalle_seq_db'), 0.480, 12.00, 64, 1, (SELECT id_venta FROM nueva_venta_11)), -- ARROZ (proporcional a $25/kg)
    (nextval('venta_detalle_seq_db'), 1.000, 28.00, 56, 1, (SELECT id_venta FROM nueva_venta_11)), -- ALPISTE SIMPLE (1 Kg)
    (nextval('venta_detalle_seq_db'), 2.222, 100.00, 10, 1, (SELECT id_venta FROM nueva_venta_11)),-- DOG CHOW RAZA PEQUEÑA (proporcional a $45/kg)
    (nextval('venta_detalle_seq_db'), 1.000, 46.00, 14, 1, (SELECT id_venta FROM nueva_venta_11)), -- GANADOR ADULTO (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 46.00, 14, 1, (SELECT id_venta FROM nueva_venta_11)), -- GANADOR ADULTO (segunda anotación, 1 Kg)
    (nextval('venta_detalle_seq_db'), 0.789, 30.00, 8, 1, (SELECT id_venta FROM nueva_venta_11)),  -- DYNO (proporcional a $38/kg)
    (nextval('venta_detalle_seq_db'), 2, 6.00, 26, 2, (SELECT id_venta FROM nueva_venta_11)),      -- PALITOS CARNAZA (2 pzas)
    (nextval('venta_detalle_seq_db'), 0.242, 15.00, 47, 1, (SELECT id_venta FROM nueva_venta_11)), -- CAT CHOW ADULTO
    (nextval('venta_detalle_seq_db'), 0.909, 50.00, 2, 1, (SELECT id_venta FROM nueva_venta_11)),  -- PEDIGREE (proporcional a $55/kg)
    (nextval('venta_detalle_seq_db'), 1.111, 50.00, 10, 1, (SELECT id_venta FROM nueva_venta_11)), -- DOG CHOW MINI ADULTO
    (nextval('venta_detalle_seq_db'), 0.484, 30.00, 46, 1, (SELECT id_venta FROM nueva_venta_11)), -- FELIX CROQUETA (proporcional a $62/kg)
    (nextval('venta_detalle_seq_db'), 0.769, 20.00, 15, 1, (SELECT id_venta FROM nueva_venta_11)), -- GUESOS
    (nextval('venta_detalle_seq_db'), 2, 20.00, 20, 2, (SELECT id_venta FROM nueva_venta_11)),     -- SOBRES FIDUS PRO (2 pzas)
    (nextval('venta_detalle_seq_db'), 1, 10.00, 20, 2, (SELECT id_venta FROM nueva_venta_11)),     -- SOBRE FIDUS PRO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 1.000, 48.00, 41, 1, (SELECT id_venta FROM nueva_venta_11)); -- WISKAS CROQUETA (1 Kg)
    
-- ============================================================================
-- VENTA: 12 de Junio - Total $804.00 (Tarjeta / Registro mixto)
-- ============================================================================
WITH nueva_venta_12 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-12', 804.00, 'TARJETA', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.000, 46.00, 14, 1, (SELECT id_venta FROM nueva_venta_12)), -- GANADOR (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.217, 10.00, 14, 1, (SELECT id_venta FROM nueva_venta_12)), -- GANADOR
    (nextval('venta_detalle_seq_db'), 0.208, 10.00, 44, 1, (SELECT id_venta FROM nueva_venta_12)), -- MININO
    (nextval('venta_detalle_seq_db'), 2.522, 116.00, 14, 1, (SELECT id_venta FROM nueva_venta_12)),-- GANADOR
    (nextval('venta_detalle_seq_db'), 2, 22.00, 53, 2, (SELECT id_venta FROM nueva_venta_12)),     -- SOBRES FELIX (2 pzas)
    (nextval('venta_detalle_seq_db'), 2, 24.00, 50, 2, (SELECT id_venta FROM nueva_venta_12)),     -- SOBRES WISKAS (2 pzas)
    (nextval('venta_detalle_seq_db'), 0.806, 50.00, 46, 1, (SELECT id_venta FROM nueva_venta_12)), -- FELIX CROQUETA
    (nextval('venta_detalle_seq_db'), 0.500, 23.00, 14, 1, (SELECT id_venta FROM nueva_venta_12)), -- GANADOR (1/2 Kg)
    (nextval('venta_detalle_seq_db'), 0.714, 20.00, 56, 1, (SELECT id_venta FROM nueva_venta_12)), -- ALPISTE
    (nextval('venta_detalle_seq_db'), 1.000, 28.00, 56, 1, (SELECT id_venta FROM nueva_venta_12)), -- ALPISTE (1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 12.00, 50, 2, (SELECT id_venta FROM nueva_venta_12)),     -- WISKAS SOBRE
    (nextval('venta_detalle_seq_db'), 1.087, 50.00, 9, 1, (SELECT id_venta FROM nueva_venta_12)),  -- DOG CHOW ADULTO
    (nextval('venta_detalle_seq_db'), 1, 50.00, 55, 2, (SELECT id_venta FROM nueva_venta_12)),     -- ARENA GATO (Precio libreta tarjeta)
    (nextval('venta_detalle_seq_db'), 0.714, 40.00, 12, 1, (SELECT id_venta FROM nueva_venta_12)), -- GANADOR PREMIUM ADULTO
    (nextval('venta_detalle_seq_db'), 1.087, 50.00, 9, 1, (SELECT id_venta FROM nueva_venta_12)),  -- DOGCHOW (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.323, 20.00, 47, 1, (SELECT id_venta FROM nueva_venta_12)), -- CATCHOW
    (nextval('venta_detalle_seq_db'), 0.444, 20.00, 10, 1, (SELECT id_venta FROM nueva_venta_12)), -- DOGCHAW MINIS Y PEQUEÑOS
    (nextval('venta_detalle_seq_db'), 1.667, 50.00, 57, 1, (SELECT id_venta FROM nueva_venta_12)), -- ALPIESTE COMPUESTO
    (nextval('venta_detalle_seq_db'), 0.870, 40.00, 14, 1, (SELECT id_venta FROM nueva_venta_12)), -- GANADOR
    (nextval('venta_detalle_seq_db'), 1.000, 40.00, 49, 1, (SELECT id_venta FROM nueva_venta_12)), -- ZOOPREME CAT
    (nextval('venta_detalle_seq_db'), 0.208, 10.00, 41, 1, (SELECT id_venta FROM nueva_venta_12)), -- WISKAS
    (nextval('venta_detalle_seq_db'), 1, 55.00, 55, 2, (SELECT id_venta FROM nueva_venta_12));     -- ALFACAT

-- ============================================================================
-- VENTA: 13 de Junio - Total $576.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_13 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-13', 576.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.625, 25.00, 5, 1, (SELECT id_venta FROM nueva_venta_13)),  -- QUEENPET (proporcional a $40/kg)
    (nextval('venta_detalle_seq_db'), 0.893, 50.00, 13, 1, (SELECT id_venta FROM nueva_venta_13)), -- GANADOR PREMIUM CACHORRO (Mapeado a premium RP)
    (nextval('venta_detalle_seq_db'), 1, 12.00, 50, 2, (SELECT id_venta FROM nueva_venta_13)),     -- WISKAS SOBRE
    (nextval('venta_detalle_seq_db'), 0.968, 60.00, 46, 1, (SELECT id_venta FROM nueva_venta_13)), -- FELIX CROQUETA
    (nextval('venta_detalle_seq_db'), 3.000, 168.00, 12, 1, (SELECT id_venta FROM nueva_venta_13)),-- GANADOR PREMIUM ADULTO (3 Kgs)
    (nextval('venta_detalle_seq_db'), 2.000, 52.00, 15, 1, (SELECT id_venta FROM nueva_venta_13)), -- GUESOS (2 Kgs)
    (nextval('venta_detalle_seq_db'), 0.652, 30.00, 14, 1, (SELECT id_venta FROM nueva_venta_13)), -- GANADOR
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_13)),     -- ARENA GATO
    (nextval('venta_detalle_seq_db'), 0.500, 28.00, 12, 1, (SELECT id_venta FROM nueva_venta_13)), -- GANADOR PREMIUM ADULTO
    (nextval('venta_detalle_seq_db'), 1.000, 26.00, 15, 1, (SELECT id_venta FROM nueva_venta_13)), -- GUESOS (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 65.00, 43, 1, (SELECT id_venta FROM nueva_venta_13)), -- MININO PLUS (1 Kg)
    (nextval('venta_detalle_seq_db'), 3, 15.00, 26, 2, (SELECT id_venta FROM nueva_venta_13));     -- PALITO CARNAZA (3 pzas de $5 c/u o combo libreta)
    
    
-- ============================================================================
-- VENTA: 14 de Junio - Total $733.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_14 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-14', 733.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.429, 80.00, 13, 1, (SELECT id_venta FROM nueva_venta_14)), -- GANADOR PREMIUM CACHORRO
    (nextval('venta_detalle_seq_db'), 1.087, 50.00, 9, 1, (SELECT id_venta FROM nueva_venta_14)),  -- DOGCHAW ADULTO
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 41, 1, (SELECT id_venta FROM nueva_venta_14)), -- WISKAS CROQUETA
    (nextval('venta_detalle_seq_db'), 3, 30.00, 20, 2, (SELECT id_venta FROM nueva_venta_14)),     -- SOBRES FIDUS PRO (3 pzas)
    (nextval('venta_detalle_seq_db'), 1.000, 46.00, 14, 1, (SELECT id_venta FROM nueva_venta_14)), -- GANADOR ADULTO (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.484, 30.00, 48, 1, (SELECT id_venta FROM nueva_venta_14)), -- CAT CHOW GATITOS
    (nextval('venta_detalle_seq_db'), 0.923, 24.00, 15, 1, (SELECT id_venta FROM nueva_venta_14)), -- GUESOS
    (nextval('venta_detalle_seq_db'), 2, 26.00, 22, 2, (SELECT id_venta FROM nueva_venta_14)),     -- GANADOR SOBRES (2 pzas a $13 libreta)
    (nextval('venta_detalle_seq_db'), 1.000, 45.00, 10, 1, (SELECT id_venta FROM nueva_venta_14)), -- DOGCHAW ADULTO MINI (1 Kg)
    (nextval('venta_detalle_seq_db'), 2, 40.00, 54, 2, (SELECT id_venta FROM nueva_venta_14)),     -- CHURU (2 pzas a $20 libreta)
    (nextval('venta_detalle_seq_db'), 2, 24.00, 50, 2, (SELECT id_venta FROM nueva_venta_14)),     -- WISKAS SOBRES (2 pzas a $12 libreta)
    (nextval('venta_detalle_seq_db'), 1, 90.00, 37, 2, (SELECT id_venta FROM nueva_venta_14)),     -- PECHERA GRANDE TELA
    (nextval('venta_detalle_seq_db'), 1, 12.00, 50, 2, (SELECT id_venta FROM nueva_venta_14)),     -- WISKAS SOBRE (1 pza)
    (nextval('venta_detalle_seq_db'), 2, 16.00, 23, 2, (SELECT id_venta FROM nueva_venta_14)),     -- HUESO BLANCO (2 pzas a precio catálogo $8 c/u)
    (nextval('venta_detalle_seq_db'), 1, 9.00, 27, 2, (SELECT id_venta FROM nueva_venta_14)),      -- PALO CON CARNE (Precio catálogo $9)
    (nextval('venta_detalle_seq_db'), 0.609, 28.00, 14, 1, (SELECT id_venta FROM nueva_venta_14)), -- GANADOR ADULTO
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_14)),     -- ARENA GATO
    (nextval('venta_detalle_seq_db'), 2, 24.00, 53, 2, (SELECT id_venta FROM nueva_venta_14)),     -- FELIX SOBRE (2 pzas a $12 libreta)
    (nextval('venta_detalle_seq_db'), 0.421, 16.00, 3, 1, (SELECT id_venta FROM nueva_venta_14));  -- HI DOG

-- ============================================================================
-- VENTA: 15 de Junio - Total $425.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_15 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-15', 425.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.000, 25.00, 64, 1, (SELECT id_venta FROM nueva_venta_15)), -- ARROZ (1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_15)),     -- ARENA GATO
    (nextval('venta_detalle_seq_db'), 2, 16.00, 23, 2, (SELECT id_venta FROM nueva_venta_15)),     -- HUESOS CON CARNAZA (2 pzas a precio catálogo $8 c/u)
    (nextval('venta_detalle_seq_db'), 1, 9.00, 27, 2, (SELECT id_venta FROM nueva_venta_15)),      -- HUESO CON CARNE (Palito c/carne catálogo $9)
    (nextval('venta_detalle_seq_db'), 1.000, 92.00, 17, 1, (SELECT id_venta FROM nueva_venta_15)), -- NUPEC CACHORRO (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 86.00, 16, 1, (SELECT id_venta FROM nueva_venta_15)), -- NUPEC ADULTO (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.543, 50.00, 17, 1, (SELECT id_venta FROM nueva_venta_15)), -- NUPEC CACHORRO
    (nextval('venta_detalle_seq_db'), 0.789, 30.00, 3, 1, (SELECT id_venta FROM nueva_venta_15)),  -- HI DOG
    (nextval('venta_detalle_seq_db'), 1.000, 40.00, 49, 1, (SELECT id_venta FROM nueva_venta_15)), -- ZOOPREME CAT (1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 12.00, 50, 2, (SELECT id_venta FROM nueva_venta_15));     -- WISKAS SOBRE
    
-- ============================================================================
-- VENTA: 16 de Junio - Total $472.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_16 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-16', 472.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.000, 13.00, 58, 1, (SELECT id_venta FROM nueva_venta_16)), -- MAIZ QUEBRADO (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 36.00, 59, 1, (SELECT id_venta FROM nueva_venta_16)), -- SEMILLA GIRASOL (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 28.00, 56, 1, (SELECT id_venta FROM nueva_venta_16)), -- ALPISTE (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 43.00, 42, 1, (SELECT id_venta FROM nueva_venta_16)), -- GATINA (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.500, 24.00, 41, 1, (SELECT id_venta FROM nueva_venta_16)), -- WISKAS CROQUETA
    (nextval('venta_detalle_seq_db'), 1.000, 48.00, 41, 1, (SELECT id_venta FROM nueva_venta_16)), -- WISKAS CROQUETA (segunda anotación, 1 Kg)
    (nextval('venta_detalle_seq_db'), 0.536, 30.00, 13, 1, (SELECT id_venta FROM nueva_venta_16)), -- GANADOR PREMIUM CACHORRO (proporcional a $56/kg)
    (nextval('venta_detalle_seq_db'), 0.500, 23.00, 9, 1, (SELECT id_venta FROM nueva_venta_16)),  -- DOGCHAW ADULTO
    (nextval('venta_detalle_seq_db'), 1.000, 57.00, 11, 1, (SELECT id_venta FROM nueva_venta_16)), -- DOG CHOW CACHORRO (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.208, 10.00, 41, 1, (SELECT id_venta FROM nueva_venta_16)), -- WISKAS CROQUETA (tercera anotación)
    (nextval('venta_detalle_seq_db'), 0.323, 20.00, 47, 1, (SELECT id_venta FROM nueva_venta_16)), -- CAT CHOW ADULTO
    (nextval('venta_detalle_seq_db'), 0.444, 20.00, 10, 1, (SELECT id_venta FROM nueva_venta_16)), -- DOG CHOW MINIS
    (nextval('venta_detalle_seq_db'), 2, 24.00, 53, 2, (SELECT id_venta FROM nueva_venta_16)),     -- FELIX SOBRE (2 pzas a $12 c/u)
    (nextval('venta_detalle_seq_db'), 1.000, 56.00, 12, 1, (SELECT id_venta FROM nueva_venta_16)); -- GANADOR PREMIUM ADULTO (1 Kg)

-- ============================================================================
-- VENTA: 17 de Junio - Total $611.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_17 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-17', 611.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.400, 63.00, 10, 1, (SELECT id_venta FROM nueva_venta_17)), -- DOG CHOW ADULTO MINIS (proporcional a $45/kg)
    (nextval('venta_detalle_seq_db'), 1, 80.00, 35, 2, (SELECT id_venta FROM nueva_venta_17)),     -- CORREA CON PECHERA CHICA TELA
    (nextval('venta_detalle_seq_db'), 0.769, 20.00, 15, 1, (SELECT id_venta FROM nueva_venta_17)), -- GUESOS
    (nextval('venta_detalle_seq_db'), 1, 8.00, 23, 2, (SELECT id_venta FROM nueva_venta_17)),      -- HUESO BLANCO (1 pza)
    (nextval('venta_detalle_seq_db'), 0.500, 14.00, 56, 1, (SELECT id_venta FROM nueva_venta_17)), -- ALPISTE (1/2 Kg)
    (nextval('venta_detalle_seq_db'), 0.500, 14.00, 56, 1, (SELECT id_venta FROM nueva_venta_17)), -- ALPISTE (segunda anotación, 1/2 Kg)
    (nextval('venta_detalle_seq_db'), 0.893, 50.00, 13, 1, (SELECT id_venta FROM nueva_venta_17)), -- GANADOR PREMIUM RAZA CHICA
    (nextval('venta_detalle_seq_db'), 0.968, 60.00, 46, 1, (SELECT id_venta FROM nueva_venta_17)), -- FELIX CROQUETA
    (nextval('venta_detalle_seq_db'), 0.526, 30.00, 11, 1, (SELECT id_venta FROM nueva_venta_17)), -- DOGCHAW CACHORRO
    (nextval('venta_detalle_seq_db'), 1, 13.00, 19, 2, (SELECT id_venta FROM nueva_venta_17)),     -- PEDIGREE SOBRE
    (nextval('venta_detalle_seq_db'), 3.571, 100.00, 56, 1, (SELECT id_venta FROM nueva_venta_17)),-- ALPIESTE A GRANEL
    (nextval('venta_detalle_seq_db'), 0.435, 20.00, 14, 1, (SELECT id_venta FROM nueva_venta_17)), -- GANADOR
    (nextval('venta_detalle_seq_db'), 1.000, 48.00, 41, 1, (SELECT id_venta FROM nueva_venta_17)), -- WISKAS CROQUETA (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.625, 30.00, 44, 1, (SELECT id_venta FROM nueva_venta_17)), -- MININO (proporcional a $48/kg)
    (nextval('venta_detalle_seq_db'), 0.857, 24.00, 56, 1, (SELECT id_venta FROM nueva_venta_17)), -- ALPIEST (tercera anotación)
    (nextval('venta_detalle_seq_db'), 1.000, 46.00, 14, 1, (SELECT id_venta FROM nueva_venta_17)), -- GANADOR (segunda anotación, 1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 12.00, 50, 2, (SELECT id_venta FROM nueva_venta_17)),     -- WISKAS SOBRE
    (nextval('venta_detalle_seq_db'), 0.587, 27.00, 14, 1, (SELECT id_venta FROM nueva_venta_17)), -- GANADOR (tercera anotación)
    (nextval('venta_detalle_seq_db'), 1, 13.00, 19, 2, (SELECT id_venta FROM nueva_venta_17));     -- PEDIGREE SOBRE (segunda anotación)
    
-- ============================================================================
-- VENTA: 18 de Junio - Total $378.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_18 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-18', 378.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.556, 20.00, 59, 1, (SELECT id_venta FROM nueva_venta_18)), -- SEMILLA GIRASOL
    (nextval('venta_detalle_seq_db'), 0.667, 32.00, 63, 1, (SELECT id_venta FROM nueva_venta_18)), -- FRIJOL FLOR DE MAYO (proporcional a $48/kg)
    (nextval('venta_detalle_seq_db'), 0.480, 12.00, 64, 1, (SELECT id_venta FROM nueva_venta_18)), -- ARROZ
    (nextval('venta_detalle_seq_db'), 1, 8.00, 23, 2, (SELECT id_venta FROM nueva_venta_18)),      -- HUESITO BLANCO
    (nextval('venta_detalle_seq_db'), 1.087, 50.00, 9, 1, (SELECT id_venta FROM nueva_venta_18)),  -- DOG CHOW ADULTO
    (nextval('venta_detalle_seq_db'), 0.250, 12.00, 41, 1, (SELECT id_venta FROM nueva_venta_18)), -- WISKAS CROQUETA
    (nextval('venta_detalle_seq_db'), 14, 152.00, 22, 2, (SELECT id_venta FROM nueva_venta_18)),   -- SOBRES GANADOR (14 pzas basándose en histórico)
    (nextval('venta_detalle_seq_db'), 2, 26.00, 19, 2, (SELECT id_venta FROM nueva_venta_18)),     -- PEDIGREE SOBRE (2 pzas)
    (nextval('venta_detalle_seq_db'), 0.500, 28.00, 12, 1, (SELECT id_venta FROM nueva_venta_18)), -- GANADOR PREMIUM ADULTO
    (nextval('venta_detalle_seq_db'), 0.806, 50.00, 46, 1, (SELECT id_venta FROM nueva_venta_18)), -- FELIX CROQUETA
    (nextval('venta_detalle_seq_db'), 0.208, 10.00, 41, 1, (SELECT id_venta FROM nueva_venta_18)); -- WISKAS CROQUETA (segunda anotación)

-- ============================================================================
-- VENTA: 19 de Junio - Total $939.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_19_efectivo AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-19', 939.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1, 12.00, 50, 2, (SELECT id_venta FROM nueva_venta_19_efectivo)),     -- WISKAS SOBRE
    (nextval('venta_detalle_seq_db'), 2.326, 100.00, 42, 1, (SELECT id_venta FROM nueva_venta_19_efectivo)), -- GATINA
    (nextval('venta_detalle_seq_db'), 0.357, 10.00, 56, 1, (SELECT id_venta FROM nueva_venta_19_efectivo)),  -- ALPISTE SIMPLE
    (nextval('venta_detalle_seq_db'), 0.333, 10.00, 57, 1, (SELECT id_venta FROM nueva_venta_19_efectivo)),  -- ALPISTE COMPUESTO
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_19_efectivo)),      -- ARENA GATO
    (nextval('venta_detalle_seq_db'), 1.000, 30.00, 57, 1, (SELECT id_venta FROM nueva_venta_19_efectivo)),  -- ALPISTE COMPUESTO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 1.042, 50.00, 44, 1, (SELECT id_venta FROM nueva_venta_19_efectivo)),  -- MININO
    (nextval('venta_detalle_seq_db'), 0.500, 24.00, 41, 1, (SELECT id_venta FROM nueva_venta_19_efectivo)),  -- WISKAS CROQUETA
    (nextval('venta_detalle_seq_db'), 2.000, 112.00, 12, 1, (SELECT id_venta FROM nueva_venta_19_efectivo)), -- GANADOR PREMIUM ADULTO (2 Kgs)
    (nextval('venta_detalle_seq_db'), 2, 16.00, 23, 2, (SELECT id_venta FROM nueva_venta_19_efectivo)),      -- HUESOS BLANCOS (2 pzas)
    (nextval('venta_detalle_seq_db'), 0.750, 30.00, 60, 1, (SELECT id_venta FROM nueva_venta_19_efectivo)),  -- FRIJOL AMERICANO (proporcional a $40/kg)
    (nextval('venta_detalle_seq_db'), 1.000, 28.00, 56, 1, (SELECT id_venta FROM nueva_venta_19_efectivo)),  -- ALPISTE (1 Kg)
    (nextval('venta_detalle_seq_db'), 2.174, 100.00, 14, 1, (SELECT id_venta FROM nueva_venta_19_efectivo)), -- GANADOR ADULTO
    (nextval('venta_detalle_seq_db'), 1.000, 48.00, 41, 1, (SELECT id_venta FROM nueva_venta_19_efectivo)),  -- WISKAS CROQUETA (segunda anotación, 1 Kg)
    (nextval('venta_detalle_seq_db'), 0.208, 10.00, 44, 1, (SELECT id_venta FROM nueva_venta_19_efectivo)),  -- MININO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.893, 50.00, 12, 1, (SELECT id_venta FROM nueva_venta_19_efectivo)),  -- GANADOR PREMIUM ADULTO (tercera anotación)
    (nextval('venta_detalle_seq_db'), 1.000, 65.00, 43, 1, (SELECT id_venta FROM nueva_venta_19_efectivo)),  -- MININO PLUS (1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_19_efectivo)),      -- ARENA GATO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 1.538, 100.00, 43, 1, (SELECT id_venta FROM nueva_venta_19_efectivo)), -- MININO PLUS (segunda anotación)
    (nextval('venta_detalle_seq_db'), 1.708, 111.00, 43, 1, (SELECT id_venta FROM nueva_venta_19_efectivo)), -- MININO PLUS (tercera anotación)
    (nextval('venta_detalle_seq_db'), 2, 24.00, 53, 2, (SELECT id_venta FROM nueva_venta_19_efectivo)),      -- FELIX SOBRE (2 pzas)
    (nextval('venta_detalle_seq_db'), 2, 22.00, 28, 2, (SELECT id_venta FROM nueva_venta_19_efectivo));      -- DENTASTIX (2 pzas)

-- ============================================================================
-- VENTA: 19 de Junio - Total $156.00 (Tarjeta)
-- ============================================================================
WITH nueva_venta_19_tarjeta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-19', 156.00, 'TARJETA', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.737, 66.00, 3, 1, (SELECT id_venta FROM nueva_venta_19_tarjeta)),  -- HI DOG (proporcional a $38/kg)
    (nextval('venta_detalle_seq_db'), 1.650, 66.00, 49, 1, (SELECT id_venta FROM nueva_venta_19_tarjeta)), -- ZOOPREME CAT (proporcional a $40/kg)
    (nextval('venta_detalle_seq_db'), 1, 11.00, 22, 2, (SELECT id_venta FROM nueva_venta_19_tarjeta)),      -- GANADOR SOBRE
    (nextval('venta_detalle_seq_db'), 1, 13.00, 51, 2, (SELECT id_venta FROM nueva_venta_19_tarjeta));      -- MININO PLUS SOBRE    
    
    
-- ============================================================================
-- VENTA: 20 de Junio - Total $880.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_20 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-20', 956.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.217, 20.00, 17, 1, (SELECT id_venta FROM nueva_venta_20)), -- NUPEC CACHORRO
    (nextval('venta_detalle_seq_db'), 0.605, 23.00, 8, 1, (SELECT id_venta FROM nueva_venta_20)),  -- DYNO (proporcional a $38/kg)
    (nextval('venta_detalle_seq_db'), 0.968, 60.00, 46, 1, (SELECT id_venta FROM nueva_venta_20)), -- FELIX CROQUETA (proporcional a $62/kg)
    (nextval('venta_detalle_seq_db'), 1.538, 40.00, 15, 1, (SELECT id_venta FROM nueva_venta_20)), -- GUESOS (proporcional a $26/kg)
    (nextval('venta_detalle_seq_db'), 1.000, 28.00, 56, 1, (SELECT id_venta FROM nueva_venta_20)), -- ALPISTE (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 62.00, 47, 1, (SELECT id_venta FROM nueva_venta_20)), -- CATCHOW ADULTO (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.488, 21.00, 42, 1, (SELECT id_venta FROM nueva_venta_20)), -- GATINA (proporcional a $43/kg)
    (nextval('venta_detalle_seq_db'), 2, 16.00, 23, 2, (SELECT id_venta FROM nueva_venta_20)),     -- HUESOS DE BLANCOS (2 pzas a $8 c/u)
    (nextval('venta_detalle_seq_db'), 1, 60.00, 32, 2, (SELECT id_venta FROM nueva_venta_20)),     -- CORREA CON COLLAR CHICO
    (nextval('venta_detalle_seq_db'), 0.500, 31.00, 47, 1, (SELECT id_venta FROM nueva_venta_20)), -- CAT CHOW ADULTO (1/2 Kg)
    (nextval('venta_detalle_seq_db'), 0.492, 32.00, 43, 1, (SELECT id_venta FROM nueva_venta_20)), -- MININO PLUS
    (nextval('venta_detalle_seq_db'), 4.000, 224.00, 12, 1, (SELECT id_venta FROM nueva_venta_20)),-- GANADOR PREMIUM ADULTO (4 Kgs)
    (nextval('venta_detalle_seq_db'), 1.000, 48.00, 41, 1, (SELECT id_venta FROM nueva_venta_20)), -- WISKAS CROQUETA (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.489, 22.00, 10, 1, (SELECT id_venta FROM nueva_venta_20)), -- DOG CHOW MINI
    (nextval('venta_detalle_seq_db'), 1.000, 45.00, 10, 1, (SELECT id_venta FROM nueva_venta_20)), -- DOG CHOW MINI (segunda anotación, 1 Kg)
    (nextval('venta_detalle_seq_db'), 0.385, 25.00, 43, 1, (SELECT id_venta FROM nueva_venta_20)), -- MININO PLUS (segunda anotación)
    (nextval('venta_detalle_seq_db'), 1, 12.00, 50, 2, (SELECT id_venta FROM nueva_venta_20)),     -- WISKAS SOBRE
    (nextval('venta_detalle_seq_db'), 0.500, 31.00, 47, 1, (SELECT id_venta FROM nueva_venta_20)), -- CATCHOW ADULTO (tercera anotación, 1/2 Kg)
    (nextval('venta_detalle_seq_db'), 0.489, 46.00, 17, 1, (SELECT id_venta FROM nueva_venta_20)), -- NUPEC CACHORRO
    (nextval('venta_detalle_seq_db'), 2, 110.00, 65, 2, (SELECT id_venta FROM nueva_venta_20)); -- ARENA ALFACAT

   
-- ============================================================================
-- VENTA: 21 de Junio - Total $844.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_21 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-21', 844.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.885, 23.00, 15, 1, (SELECT id_venta FROM nueva_venta_21)), -- GUESOS
    (nextval('venta_detalle_seq_db'), 0.492, 32.00, 43, 1, (SELECT id_venta FROM nueva_venta_21)), -- MININO PLUS
    (nextval('venta_detalle_seq_db'), 1, 12.00, 53, 2, (SELECT id_venta FROM nueva_venta_21)),     -- FELIX SOBRE
    (nextval('venta_detalle_seq_db'), 1, 13.00, 19, 2, (SELECT id_venta FROM nueva_venta_21)),     -- PEDIGRE SOBRE
    (nextval('venta_detalle_seq_db'), 0.548, 34.00, 48, 1, (SELECT id_venta FROM nueva_venta_21)), -- CAT CHOW GATITOS
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_21)),     -- ARENA GATO
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 44, 1, (SELECT id_venta FROM nueva_venta_21)), -- MININO
    (nextval('venta_detalle_seq_db'), 1.087, 50.00, 14, 1, (SELECT id_venta FROM nueva_venta_21)), -- GANADOR
    (nextval('venta_detalle_seq_db'), 3.929, 220.00, 12, 1, (SELECT id_venta FROM nueva_venta_21)),-- GANADOR PREMIUM (Basado en $56/kg)
    (nextval('venta_detalle_seq_db'), 0.438, 21.00, 44, 1, (SELECT id_venta FROM nueva_venta_21)), -- MININO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 1.000, 45.00, 10, 1, (SELECT id_venta FROM nueva_venta_21)), -- DOG CHAW ADULTO PEQUEÑO (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.208, 10.00, 41, 1, (SELECT id_venta FROM nueva_venta_21)), -- WISKAS
    (nextval('venta_detalle_seq_db'), 0.500, 23.00, 14, 1, (SELECT id_venta FROM nueva_venta_21)), -- GANADOR (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.308, 20.00, 43, 1, (SELECT id_venta FROM nueva_venta_21)), -- MININO PLUS (segunda anotación)
    (nextval('venta_detalle_seq_db'), 2.000, 112.00, 12, 1, (SELECT id_venta FROM nueva_venta_21)),-- GANADOR PREMIUM (2 Kgs)
    (nextval('venta_detalle_seq_db'), 1.000, 56.00, 12, 1, (SELECT id_venta FROM nueva_venta_21)), -- GANADOR PREMIUM (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.465, 20.00, 42, 1, (SELECT id_venta FROM nueva_venta_21)); -- GATINA

-- ============================================================================
-- VENTA: 22 de Junio - Total $424.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_22 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-22', 424.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.304, 120.00, 17, 1, (SELECT id_venta FROM nueva_venta_22)), -- NUPEC CACHORRO (Basado en $92/kg)
    (nextval('venta_detalle_seq_db'), 1, 8.00, 23, 2, (SELECT id_venta FROM nueva_venta_22)),      -- HEUSO BLANCO
    (nextval('venta_detalle_seq_db'), 0.323, 20.00, 47, 1, (SELECT id_venta FROM nueva_venta_22)), -- CAT CHAW ADULTO
    (nextval('venta_detalle_seq_db'), 0.435, 40.00, 17, 1, (SELECT id_venta FROM nueva_venta_22)), -- NUPEC CACHORRO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_22)),     -- ARENA GATO
    (nextval('venta_detalle_seq_db'), 2.000, 90.00, 10, 1, (SELECT id_venta FROM nueva_venta_22)), -- DOG CHAW MINIS (2 Kgs)
    (nextval('venta_detalle_seq_db'), 0.556, 20.00, 59, 1, (SELECT id_venta FROM nueva_venta_22)), -- GIRASOL
    (nextval('venta_detalle_seq_db'), 1.036, 58.00, 13, 1, (SELECT id_venta FROM nueva_venta_22)), -- GANADOR PEQUEÑA (Premium raza pequeña)
    (nextval('venta_detalle_seq_db'), 0.605, 23.00, 8, 1, (SELECT id_venta FROM nueva_venta_22));  -- DYNO


-- ============================================================================
-- VENTA: 23 de Junio - Total $691.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_23 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-23', 691.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.714, 20.00, 56, 1, (SELECT id_venta FROM nueva_venta_23)), -- ALPISTE
    (nextval('venta_detalle_seq_db'), 1.000, 86.00, 16, 1, (SELECT id_venta FROM nueva_venta_23)), -- NUPEC ADULTO (1 Kg)
    (nextval('venta_detalle_seq_db'), 5, 65.00, 19, 2, (SELECT id_venta FROM nueva_venta_23)),     -- PEDIGREE SOBRE (5 pzas a $13 c/u)
    (nextval('venta_detalle_seq_db'), 0.492, 32.00, 43, 1, (SELECT id_venta FROM nueva_venta_23)), -- MININO PLUS
    (nextval('venta_detalle_seq_db'), 2, 24.00, 53, 2, (SELECT id_venta FROM nueva_venta_23)),     -- FELIX SOBRE (2 pzas a $12 c/u)
    (nextval('venta_detalle_seq_db'), 1.113, 69.00, 48, 1, (SELECT id_venta FROM nueva_venta_23)), -- CAT CHOW GATITOS
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 41, 1, (SELECT id_venta FROM nueva_venta_23)), -- WISKAS CROQUETA
    (nextval('venta_detalle_seq_db'), 1.000, 45.00, 10, 1, (SELECT id_venta FROM nueva_venta_23)), -- DOGCHAW TAZA MINI (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.500, 23.00, 14, 1, (SELECT id_venta FROM nueva_venta_23)), -- GANADOR (1/2 Kg)
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_23)),     -- ARENA GATO
    (nextval('venta_detalle_seq_db'), 0.500, 43.00, 16, 1, (SELECT id_venta FROM nueva_venta_23)), -- NUPEC ADULTO (proporcional a $86/kg)
    (nextval('venta_detalle_seq_db'), 0.868, 33.00, 3, 1, (SELECT id_venta FROM nueva_venta_23)),  -- HI DOG (proporcional a $38/kg)
    (nextval('venta_detalle_seq_db'), 0.500, 20.00, 49, 1, (SELECT id_venta FROM nueva_venta_23)), -- ZOOPREME CAT
    (nextval('venta_detalle_seq_db'), 0.484, 30.00, 46, 1, (SELECT id_venta FROM nueva_venta_23)), -- FELIX CROQUETA
    (nextval('venta_detalle_seq_db'), 1.000, 26.00, 15, 1, (SELECT id_venta FROM nueva_venta_23)), -- GUESOS (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 44, 1, (SELECT id_venta FROM nueva_venta_23)), -- MININO
    (nextval('venta_detalle_seq_db'), 1.087, 50.00, 14, 1, (SELECT id_venta FROM nueva_venta_23)); -- GANADOR (segunda anotación)
    
-- ============================================================================
-- VENTA: 24 de Junio - Total $398.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_24_efectivo AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-24', 398.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.000, 86.00, 16, 1, (SELECT id_venta FROM nueva_venta_24_efectivo)), -- NUPEC ADULTO (1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 8.00, 23, 2, (SELECT id_venta FROM nueva_venta_24_efectivo)),      -- HUESO BLANCO
    (nextval('venta_detalle_seq_db'), 1.087, 50.00, 9, 1, (SELECT id_venta FROM nueva_venta_24_efectivo)),  -- DOG CHOW ADULTO
    (nextval('venta_detalle_seq_db'), 1.071, 30.00, 56, 1, (SELECT id_venta FROM nueva_venta_24_efectivo)), -- ALPISTE SIMPLE
    (nextval('venta_detalle_seq_db'), 0.375, 15.00, 62, 1, (SELECT id_venta FROM nueva_venta_24_efectivo)), -- FRIJOL NEGRO (Mapeado a Negro, precio libreta)
    (nextval('venta_detalle_seq_db'), 0.500, 23.00, 9, 1, (SELECT id_venta FROM nueva_venta_24_efectivo)),  -- DOGCHOW ADULTO (1/2 Kg)
    (nextval('venta_detalle_seq_db'), 0.313, 15.00, 41, 1, (SELECT id_venta FROM nueva_venta_24_efectivo)), -- WISKAS CROQUETA
    (nextval('venta_detalle_seq_db'), 1.000, 30.00, 57, 1, (SELECT id_venta FROM nueva_venta_24_efectivo)), -- ALPISTE COMPUESTO (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 65.00, 43, 1, (SELECT id_venta FROM nueva_venta_24_efectivo)), -- MININO PLUS (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.333, 10.00, 57, 1, (SELECT id_venta FROM nueva_venta_24_efectivo)), -- ALPISTE COMPUESTO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.462, 6.00, 58, 1, (SELECT id_venta FROM nueva_venta_24_efectivo)),  -- MAIZ QUEBRADO
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 41, 1, (SELECT id_venta FROM nueva_venta_24_efectivo)), -- WISKAS CROQUETA (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.435, 20.00, 9, 1, (SELECT id_venta FROM nueva_venta_24_efectivo));  -- DOGCHOW ADULTO (tercera anotación)

-- ============================================================================
-- VENTA: 24 de Junio - Total $94.00 (Tarjeta)
-- ============================================================================
WITH nueva_venta_24_tarjeta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-24', 94.00, 'TARJETA', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.968, 60.00, 46, 1, (SELECT id_venta FROM nueva_venta_24_tarjeta)), -- FELIX CROQUETA
    (nextval('venta_detalle_seq_db'), 0.895, 34.00, 8, 1, (SELECT id_venta FROM nueva_venta_24_tarjeta));  -- DYNO

-- ============================================================================
-- VENTA: 25 de Junio - Total $517.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_25_efectivo AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-25', 517.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 2, 16.00, 23, 2, (SELECT id_venta FROM nueva_venta_25_efectivo)),     -- HUESOS BLANCOS (2 pzas a $8 c/u)
    (nextval('venta_detalle_seq_db'), 3, 27.00, 27, 2, (SELECT id_venta FROM nueva_venta_25_efectivo)),     -- HUESOS CON CARNE (3 pzas a $9 c/u)
    (nextval('venta_detalle_seq_db'), 1, 8.00, 23, 2, (SELECT id_venta FROM nueva_venta_25_efectivo)),      -- HUESO BLANCO (1 pza)
    (nextval('venta_detalle_seq_db'), 1.000, 25.00, 64, 1, (SELECT id_venta FROM nueva_venta_25_efectivo)), -- ARROZ (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.435, 20.00, 9, 1, (SELECT id_venta FROM nueva_venta_25_efectivo)),  -- DOG CHOW ADULTO
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_25_efectivo)),     -- ARENA GATO
    (nextval('venta_detalle_seq_db'), 0.536, 15.00, 56, 1, (SELECT id_venta FROM nueva_venta_25_efectivo)), -- ALPIETE SIMPLE
    (nextval('venta_detalle_seq_db'), 0.263, 10.00, 8, 1, (SELECT id_venta FROM nueva_venta_25_efectivo)),  -- DYNO
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_25_efectivo)),     -- ARENA GATO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 3.783, 174.00, 14, 1, (SELECT id_venta FROM nueva_venta_25_efectivo)),-- GANADOR ADULTO RAZA PEQUEÑA (Mapeado a Ganador)
    (nextval('venta_detalle_seq_db'), 0.543, 25.00, 14, 1, (SELECT id_venta FROM nueva_venta_25_efectivo)), -- GANADOR (segunda anotación)
    (nextval('venta_detalle_seq_db'), 1, 12.00, 50, 2, (SELECT id_venta FROM nueva_venta_25_efectivo)),     -- WISKAS SOBRE
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_25_efectivo)),     -- ARENA GATO (tercera anotación)
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 41, 1, (SELECT id_venta FROM nueva_venta_25_efectivo)); -- WISKAS CROQUETA

-- ============================================================================
-- VENTA: 25 de Junio - Total $117.00 (Tarjeta)
-- ============================================================================
WITH nueva_venta_25_tarjeta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-25', 117.00, 'TARJETA', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.737, 66.00, 3, 1, (SELECT id_venta FROM nueva_venta_25_tarjeta)),  -- HI DOG
    (nextval('venta_detalle_seq_db'), 1.000, 40.00, 49, 1, (SELECT id_venta FROM nueva_venta_25_tarjeta)), -- ZOOPREME CAT (1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 11.00, 22, 2, (SELECT id_venta FROM nueva_venta_25_tarjeta));     -- GANADOR SOBRE
    
-- ============================================================================
-- VENTA: 26 de Junio - Total $919.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_26_efectivo AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-26', 919.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.645, 40.00, 48, 1, (SELECT id_venta FROM nueva_venta_26_efectivo)), -- CAT CHOW GATITOS
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_26_efectivo)),     -- ARENA GATO
    (nextval('venta_detalle_seq_db'), 1.000, 25.00, 64, 1, (SELECT id_venta FROM nueva_venta_26_efectivo)), -- ARROZ (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 46.00, 14, 1, (SELECT id_venta FROM nueva_venta_26_efectivo)), -- GANADOR ADULTO (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.071, 60.00, 13, 1, (SELECT id_venta FROM nueva_venta_26_efectivo)), -- GANADOR PREMIUM PEQUEÑOS
    (nextval('venta_detalle_seq_db'), 1.000, 28.00, 56, 1, (SELECT id_venta FROM nueva_venta_26_efectivo)), -- ALPISTE (1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 13.00, 22, 2, (SELECT id_venta FROM nueva_venta_26_efectivo)),     -- GANADOR SOBRE
    (nextval('venta_detalle_seq_db'), 2.000, 92.00, 14, 1, (SELECT id_venta FROM nueva_venta_26_efectivo)), -- GANADOR ADULTO (2 Kgs)
    (nextval('venta_detalle_seq_db'), 2, 6.00, 26, 2, (SELECT id_venta FROM nueva_venta_26_efectivo)),      -- PALO CARNAZA (2 pzas)
    (nextval('venta_detalle_seq_db'), 0.500, 24.00, 44, 1, (SELECT id_venta FROM nueva_venta_26_efectivo)), -- MININO (1/2 Kg)
    (nextval('venta_detalle_seq_db'), 2, 26.00, 51, 2, (SELECT id_venta FROM nueva_venta_26_efectivo)),     -- MININO PLUS SOBRE (2 pzas)
    (nextval('venta_detalle_seq_db'), 0.491, 28.00, 11, 1, (SELECT id_venta FROM nueva_venta_26_efectivo)), -- DOG CHOW CACHORRO
    (nextval('venta_detalle_seq_db'), 0.500, 24.00, 44, 1, (SELECT id_venta FROM nueva_venta_26_efectivo)), -- MININO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 41, 1, (SELECT id_venta FROM nueva_venta_26_efectivo)), -- WISKAS CROQUETA
    (nextval('venta_detalle_seq_db'), 1.000, 92.00, 17, 1, (SELECT id_venta FROM nueva_venta_26_efectivo)), -- NUPEC CACHORRO (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.337, 115.00, 16, 1, (SELECT id_venta FROM nueva_venta_26_efectivo)),-- NUPEC ADULTO RP (Mapeado a Nupec Adulto)
    (nextval('venta_detalle_seq_db'), 0.500, 24.00, 41, 1, (SELECT id_venta FROM nueva_venta_26_efectivo)), -- WISKAS CROQUETA (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.465, 20.00, 42, 1, (SELECT id_venta FROM nueva_venta_26_efectivo)), -- GATINA
    (nextval('venta_detalle_seq_db'), 2.222, 100.00, 10, 1, (SELECT id_venta FROM nueva_venta_26_efectivo)),-- DOGCHAW ADULTO RAZA PEQUEÑA
    (nextval('venta_detalle_seq_db'), 0.500, 23.00, 14, 1, (SELECT id_venta FROM nueva_venta_26_efectivo)), -- GANADOR (segunda anotación)
    (nextval('venta_detalle_seq_db'), 2, 26.00, 22, 2, (SELECT id_venta FROM nueva_venta_26_efectivo));     -- GANADOR SOBRES (2 pzas)

-- ============================================================================
-- VENTA: 26 de Junio - Total $71.00 (Tarjeta)
-- ============================================================================
WITH nueva_venta_26_tarjeta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-26', 71.00, 'TARJETA', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_26_tarjeta)),     -- ARENA GATO
    (nextval('venta_detalle_seq_db'), 2, 26.00, 51, 2, (SELECT id_venta FROM nueva_venta_26_tarjeta));     -- SOBRE MININO PLUS (2 pzas)
    
-- ============================================================================
-- VENTA: 27 de Junio - Total $750.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_27 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-27', 750.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_27)),     -- ARENA GATO (1 pza)
    (nextval('venta_detalle_seq_db'), 0.500, 24.00, 44, 1, (SELECT id_venta FROM nueva_venta_27)), -- MININO (1/2 Kg)
    (nextval('venta_detalle_seq_db'), 0.492, 32.00, 43, 1, (SELECT id_venta FROM nueva_venta_27)), -- MININO PLUS
    (nextval('venta_detalle_seq_db'), 0.385, 10.00, 15, 1, (SELECT id_venta FROM nueva_venta_27)), -- GUESOS
    (nextval('venta_detalle_seq_db'), 0.500, 14.00, 56, 1, (SELECT id_venta FROM nueva_venta_27)), -- ALPISTE (1/2 Kg)
    (nextval('venta_detalle_seq_db'), 1, 12.00, 53, 2, (SELECT id_venta FROM nueva_venta_27)),     -- SOBRE FELIX
    (nextval('venta_detalle_seq_db'), 3, 27.00, 27, 2, (SELECT id_venta FROM nueva_venta_27)),     -- HUESOS CON CARNE (3 pzas a $9 c/u)
    (nextval('venta_detalle_seq_db'), 5, 62.00, 53, 2, (SELECT id_venta FROM nueva_venta_27)),     -- SOBRES FELIX (5 pzas, precio combo libreta)
    (nextval('venta_detalle_seq_db'), 2, 90.00, 55, 2, (SELECT id_venta FROM nueva_venta_27)),     -- ARENAS GATO (2 pzas a $45 c/u)
    (nextval('venta_detalle_seq_db'), 1, 8.00, 23, 2, (SELECT id_venta FROM nueva_venta_27)),      -- HUESO BLANCO (1 pza)
    (nextval('venta_detalle_seq_db'), 0.465, 40.00, 16, 1, (SELECT id_venta FROM nueva_venta_27)), -- NUPEC RAZA PEQUEÑA (Mapeado a Nupec Adulto)
    (nextval('venta_detalle_seq_db'), 1.113, 69.00, 47, 1, (SELECT id_venta FROM nueva_venta_27)), -- CATCHOW ADULTO
    (nextval('venta_detalle_seq_db'), 1.000, 56.00, 12, 1, (SELECT id_venta FROM nueva_venta_27)), -- GANADOR PREMIUM ADULTO (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 56.00, 12, 1, (SELECT id_venta FROM nueva_venta_27)), -- GANADOR PREMIUM ADULTO (segunda anotación, 1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 20.00, 54, 2, (SELECT id_venta FROM nueva_venta_27)),     -- CHURU (1 pza)
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_27)),     -- ARENA GATO (tercera anotación)
    (nextval('venta_detalle_seq_db'), 0.500, 31.00, 47, 1, (SELECT id_venta FROM nueva_venta_27)), -- CATCHOW ADULTO (segunda anotación, 1/2 Kg)
    (nextval('venta_detalle_seq_db'), 1, 11.00, 22, 2, (SELECT id_venta FROM nueva_venta_27)),     -- GANADOR SOBRE
    (nextval('venta_detalle_seq_db'), 0.387, 24.00, 46, 1, (SELECT id_venta FROM nueva_venta_27)), -- FELIX CROQUETA (proporcional a $62/kg)
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 41, 1, (SELECT id_venta FROM nueva_venta_27)); -- WISKAS CROQUETA
    
 -- ============================================================================
-- VENTA: 28 de Junio - Total $739.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_28_efectivo AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-28', 739.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 3.571, 100.00, 56, 1, (SELECT id_venta FROM nueva_venta_28_efectivo)),-- ALPISTE A GRANEL
    (nextval('venta_detalle_seq_db'), 1.000, 43.00, 42, 1, (SELECT id_venta FROM nueva_venta_28_efectivo)), -- GATINA (1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 9.00, 27, 2, (SELECT id_venta FROM nueva_venta_28_efectivo)),      -- HUESO CON CARNE (1 pza)
    (nextval('venta_detalle_seq_db'), 4.286, 240.00, 13, 1, (SELECT id_venta FROM nueva_venta_28_efectivo)),-- GANADOR PREMIUM RAZA PEQUEÑA (Basado en $56/kg)
    (nextval('venta_detalle_seq_db'), 1.000, 28.00, 56, 1, (SELECT id_venta FROM nueva_venta_28_efectivo)), -- ALPIESTE (1 Kg)
    (nextval('venta_detalle_seq_db'), 3, 24.00, 23, 2, (SELECT id_venta FROM nueva_venta_28_efectivo)),     -- HUESOS BLANCOS (3 pzas a $8 c/u)
    (nextval('venta_detalle_seq_db'), 1, 11.00, 28, 2, (SELECT id_venta FROM nueva_venta_28_efectivo)),     -- DENTASTIX (1 pza)
    (nextval('venta_detalle_seq_db'), 1.000, 48.00, 41, 1, (SELECT id_venta FROM nueva_venta_28_efectivo)), -- WISKAS CROQUETA (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.435, 20.00, 14, 1, (SELECT id_venta FROM nueva_venta_28_efectivo)), -- GANADOR RAZA PEQUEÑA (Mapeado a Ganador Adulto)
    (nextval('venta_detalle_seq_db'), 0.500, 23.00, 14, 1, (SELECT id_venta FROM nueva_venta_28_efectivo)), -- GANADOR (1/2 Kg)
    (nextval('venta_detalle_seq_db'), 0.289, 11.00, 8, 1, (SELECT id_venta FROM nueva_venta_28_efectivo)),  -- DYNO
    (nextval('venta_detalle_seq_db'), 0.484, 30.00, 46, 1, (SELECT id_venta FROM nueva_venta_28_efectivo)), -- FELIX CROQUETA
    (nextval('venta_detalle_seq_db'), 2, 24.00, 53, 2, (SELECT id_venta FROM nueva_venta_28_efectivo)),     -- FELIX SOBRE (2 pzas)
    (nextval('venta_detalle_seq_db'), 0.868, 33.00, 3, 1, (SELECT id_venta FROM nueva_venta_28_efectivo)),  -- HI DOG
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 41, 1, (SELECT id_venta FROM nueva_venta_28_efectivo)), -- WISKAS CROQUETA (segunda anotación)
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_28_efectivo));     -- ARENA

-- ============================================================================
-- VENTA: 28 de Junio - Total $284.00 (Tarjeta)
-- ============================================================================
WITH nueva_venta_28_tarjeta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-28', 284.00, 'TARJETA', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 2.500, 215.00, 16, 1, (SELECT id_venta FROM nueva_venta_28_tarjeta)),-- NUPEC ADULTO (Proporcional a $86/kg o bulto cerrado)
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_28_tarjeta)),     -- ARENA GATO
    (nextval('venta_detalle_seq_db'), 2, 24.00, 50, 2, (SELECT id_venta FROM nueva_venta_28_tarjeta));     -- WISKAS SOBRE (2 pzas)
    
-- ============================================================================
-- VENTA: 29 de Junio - Total $899.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_29 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-29', 899.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.488, 21.00, 42, 1, (SELECT id_venta FROM nueva_venta_29)), -- GATINA
    (nextval('venta_detalle_seq_db'), 0.400, 20.00, 65, 1, (SELECT id_venta FROM nueva_venta_29)), -- FRIJOL PERUANO (proporcional a $50/kg)
    (nextval('venta_detalle_seq_db'), 2.000, 52.00, 15, 1, (SELECT id_venta FROM nueva_venta_29)), -- GUESOS (2 Kgs)
    (nextval('venta_detalle_seq_db'), 0.480, 12.00, 64, 1, (SELECT id_venta FROM nueva_venta_29)), -- ARROZ
    (nextval('venta_detalle_seq_db'), 0.313, 15.00, 44, 1, (SELECT id_venta FROM nueva_venta_29)), -- MININO
    (nextval('venta_detalle_seq_db'), 0.480, 12.00, 64, 1, (SELECT id_venta FROM nueva_venta_29)), -- ARROZ (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.500, 46.00, 17, 1, (SELECT id_venta FROM nueva_venta_29)), -- NUPEC CACHORRO (1/2 Kg)
    (nextval('venta_detalle_seq_db'), 1.087, 50.00, 9, 1, (SELECT id_venta FROM nueva_venta_29)),  -- DOG CHAW ADULTO
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 41, 1, (SELECT id_venta FROM nueva_venta_29)), -- WISKAS CROQUETA
    (nextval('venta_detalle_seq_db'), 0.444, 20.00, 10, 1, (SELECT id_venta FROM nueva_venta_29)), -- DOGCHAW MINI Y PEQUES
    (nextval('venta_detalle_seq_db'), 1, 12.00, 50, 2, (SELECT id_venta FROM nueva_venta_29)),     -- SOBRE WISKAS
    (nextval('venta_detalle_seq_db'), 1, 11.00, 28, 2, (SELECT id_venta FROM nueva_venta_29)),     -- DENTASTIX (1 pza)
    (nextval('venta_detalle_seq_db'), 3, 9.00, 26, 2, (SELECT id_venta FROM nueva_venta_29)),      -- PALITOS CARNAZA (3 pzas a $3 c/u)
    (nextval('venta_detalle_seq_db'), 2.000, 56.00, 56, 1, (SELECT id_venta FROM nueva_venta_29)), -- ALPIESTE (2 Kgs)
    (nextval('venta_detalle_seq_db'), 0.357, 10.00, 56, 1, (SELECT id_venta FROM nueva_venta_29)), -- ALPISTE (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.217, 10.00, 9, 1, (SELECT id_venta FROM nueva_venta_29)),  -- DOG CHAW
    (nextval('venta_detalle_seq_db'), 1.000, 56.00, 12, 1, (SELECT id_venta FROM nueva_venta_29)), -- GANADOR PREMIUM ADULTO (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.250, 23.00, 17, 1, (SELECT id_venta FROM nueva_venta_29)), -- NUPEC CACHORRO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 1.000, 92.00, 17, 1, (SELECT id_venta FROM nueva_venta_29)), -- NUPEC CAHORRO (tercera anotación, 1 Kg)
    (nextval('venta_detalle_seq_db'), 0.500, 23.00, 14, 1, (SELECT id_venta FROM nueva_venta_29)), -- GANADOR (1/2 Kg)
    (nextval('venta_detalle_seq_db'), 0.500, 20.00, 49, 1, (SELECT id_venta FROM nueva_venta_29)), -- ZOOPREME CAT
    (nextval('venta_detalle_seq_db'), 0.868, 33.00, 3, 1, (SELECT id_venta FROM nueva_venta_29)),  -- HI DOG
    (nextval('venta_detalle_seq_db'), 1.607, 90.00, 13, 1, (SELECT id_venta FROM nueva_venta_29)), -- GANADOR RAZAS PEQUEÑAS (Premium RP)
    (nextval('venta_detalle_seq_db'), 0.489, 22.00, 10, 1, (SELECT id_venta FROM nueva_venta_29)), -- DOG CHAW ADULTO PEQUEÑO
    (nextval('venta_detalle_seq_db'), 1.042, 50.00, 44, 1, (SELECT id_venta FROM nueva_venta_29)), -- MININO (cuarta anotación)
    (nextval('venta_detalle_seq_db'), 2, 26.00, 51, 2, (SELECT id_venta FROM nueva_venta_29));     -- MININO PLUS SOBRE (2 pzas)

-- ============================================================================
-- VENTA: 30 de Junio - Total $380.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_30 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-06-30', 464.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.536, 30.00, 13, 1, (SELECT id_venta FROM nueva_venta_30)), -- GANADOR PREMIUM ADULTO RAZA PEQUEÑA
    (nextval('venta_detalle_seq_db'), 1.071, 30.00, 56, 1, (SELECT id_venta FROM nueva_venta_30)), -- ALPISTE
    (nextval('venta_detalle_seq_db'), 0.200, 7.00, 66, 1, (SELECT id_venta FROM nueva_venta_30)),  -- MAIZ PALOMERO (proporcional a $35/kg)
    (nextval('venta_detalle_seq_db'), 0.480, 12.00, 64, 1, (SELECT id_venta FROM nueva_venta_30)), -- ARROZ
    (nextval('venta_detalle_seq_db'), 0.240, 6.00, 64, 1, (SELECT id_venta FROM nueva_venta_30)),  -- ARROZ (segunda anotación)
    (nextval('venta_detalle_seq_db'), 1, 8.00, 23, 2, (SELECT id_venta FROM nueva_venta_30)),      -- 1 HUESO BLANCO
    (nextval('venta_detalle_seq_db'), 0.480, 12.00, 64, 1, (SELECT id_venta FROM nueva_venta_30)), -- ARROZ (tercera anotación)
    (nextval('venta_detalle_seq_db'), 0.535, 46.00, 16, 1, (SELECT id_venta Hiring FROM nueva_venta_30)), -- NUPEC ADULTO
    (nextval('venta_detalle_seq_db'), 0.500, 46.00, 17, 1, (SELECT id_venta FROM nueva_venta_30)), -- NUPEC CACHORRO (1/2 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 26.00, 15, 1, (SELECT id_venta FROM nueva_venta_30)), -- GUESOS (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.479, 23.00, 44, 1, (SELECT id_venta FROM nueva_venta_30)), -- MININO
    (nextval('venta_detalle_seq_db'), 0.500, 24.00, 41, 1, (SELECT id_venta FROM nueva_venta_30)), -- WISKAS CROQUETA
    (nextval('venta_detalle_seq_db'), 1.500, 84.00, 12, 1, (SELECT id_venta FROM nueva_venta_30)), -- GANADOR PREMIUM ADULTO (1.5 Kgs)
    (nextval('venta_detalle_seq_db'), 2, 110.00, 65, 2, (SELECT id_venta FROM nueva_venta_30)); -- ARENA ALFACAT;   
    
    
    
    
    
