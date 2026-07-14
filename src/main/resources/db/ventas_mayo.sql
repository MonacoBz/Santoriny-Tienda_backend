WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-01', 116.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 2, 92.0, 14, 1, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 2, 24.0, 58, 1, (SELECT id_venta FROM nueva_venta));

WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-02', 111.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.176, 40.0, 8, 1, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 1, 26.0, 15, 1, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 1.25, 35.0, 14, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 0.208, 10.0, 41, 1, (SELECT id_venta FROM nueva_venta));

-- VENTA: 04 de Mayo - Total $214.0 (Efectivo)
WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-04', 216.0, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 3, 135.0, 55, 2, (SELECT id_venta FROM nueva_venta)), -- ARENA DE GATO (3 pzas)
    (nextval('venta_detalle_seq_db'), 0.543, 25.0, 14, 1, (SELECT id_venta FROM nueva_venta)), -- GANADOR (proporcional a $46/kg)
    (nextval('venta_detalle_seq_db'), 1, 28.0, 56, 1, (SELECT id_venta FROM nueva_venta)), -- ALPISTE
    (nextval('venta_detalle_seq_db'), 2, 28.0, 51, 2, (SELECT id_venta FROM nueva_venta)); -- SOBRE MININO PLUS (2 pzas)

    
-- VENTA: 05 de Mayo - Total $175.0 (Efectivo)
WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-05', 175.0, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.536, 30.0, 12, 1, (SELECT id_venta FROM nueva_venta)), -- GANADOR PREMIUM ADULTO
    (nextval('venta_detalle_seq_db'), 0.521, 25.0, 44, 1, (SELECT id_venta FROM nueva_venta)), -- MININO
    (nextval('venta_detalle_seq_db'), 2, 28.0, 51, 2, (SELECT id_venta FROM nueva_venta)),     -- SOBRE MININO PLUS (2 pzas)
    (nextval('venta_detalle_seq_db'), 2, 92.0, 14, 1, (SELECT id_venta FROM nueva_venta));     -- GANADOR (2 Kgs)
    
-- VENTA: 06 de Mayo - Total $70.0 (Efectivo)
WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-06', 70.0, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.111, 50.0, 10, 1, (SELECT id_venta FROM nueva_venta)), -- DOG CHOW MINI Y PEQUEÑO (proporcional a $45/kg)
    (nextval('venta_detalle_seq_db'), 0.588, 20.0, 8, 1, (SELECT id_venta FROM nueva_venta));  -- PERRAZO (proporcional a $34/kg)

    
-- ============================================================================
-- VENTA: 07 de Mayo - Total $60.0 (Efectivo)
-- ============================================================================
WITH nueva_venta_07 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-07', 60.0, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.536, 15.0, 56, 1, (SELECT id_venta FROM nueva_venta_07)), -- ALPISTE SIMPLE
    (nextval('venta_detalle_seq_db'), 0.500, 15.0, 57, 1, (SELECT id_venta FROM nueva_venta_07)), -- ALPISTE COMPUESTO
    (nextval('venta_detalle_seq_db'), 0.536, 30.0, 12, 1, (SELECT id_venta FROM nueva_venta_07)); -- GANADOR PREMIUM ADULTO

-- ============================================================================
-- VENTA: 08 de Mayo - Total $355.0 (Efectivo)
-- ============================================================================
WITH nueva_venta_08 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-08', 355.0, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 2, 90.0, 55, 2, (SELECT id_venta FROM nueva_venta_08)),     -- ARENA DE GATO (2 pzas)
    (nextval('venta_detalle_seq_db'), 3, 84.0, 56, 1, (SELECT id_venta FROM nueva_venta_08)),     -- ALPISTE (3 Kgs)
    (nextval('venta_detalle_seq_db'), 2, 96.0, 44, 1, (SELECT id_venta FROM nueva_venta_08)),     -- MININO (2 Kgs a $48/kg)
    (nextval('venta_detalle_seq_db'), 1.087, 50.0, 9, 1, (SELECT id_venta FROM nueva_venta_08)),  -- DOG CHOW ADULTO
    (nextval('venta_detalle_seq_db'), 0.446, 25.0, 12, 1, (SELECT id_venta FROM nueva_venta_08)), -- GANADOR PREMIUM ADULTO
    (nextval('venta_detalle_seq_db'), 2, 24.0, 21, 2, (SELECT id_venta FROM nueva_venta_08)),     -- SOBRE DOG CHOW (2 pzas)
    (nextval('venta_detalle_seq_db'), 1, 10.0, 20, 2, (SELECT id_venta FROM nueva_venta_08));     -- SOBRE FIDUS PRO (1 pza)

-- ============================================================================
-- VENTA: 09 de Mayo - Total $224.0 (Efectivo)
-- ============================================================================
WITH nueva_venta_09 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-09', 224.0, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.208, 10.0, 41, 1, (SELECT id_venta FROM nueva_venta_09)), -- WISKAS (granel)
    (nextval('venta_detalle_seq_db'), 4, 48.0, 21, 2, (SELECT id_venta FROM nueva_venta_09)),     -- DOG CHOW SOBRES (4 pzas)
    (nextval('venta_detalle_seq_db'), 0.313, 15.0, 41, 1, (SELECT id_venta FROM nueva_venta_09)), -- WISKAS (granel)
    (nextval('venta_detalle_seq_db'), 0.536, 15.0, 56, 1, (SELECT id_venta FROM nueva_venta_09)), -- ALPISTE
    (nextval('venta_detalle_seq_db'), 1, 48.0, 55, 2, (SELECT id_venta FROM nueva_venta_09)),     -- ARENA (Precio libreta $48)
    (nextval('venta_detalle_seq_db'), 0.958, 46.0, 41, 1, (SELECT id_venta FROM nueva_venta_09)), -- WISKAS (granel)
    (nextval('venta_detalle_seq_db'), 0.512, 22.0, 42, 1, (SELECT id_venta FROM nueva_venta_09)), -- GATINA
    (nextval('venta_detalle_seq_db'), 0.417, 20.0, 41, 1, (SELECT id_venta FROM nueva_venta_09)); -- WISKAS (granel)E
    
 -- ============================================================================
-- VENTA: 10 de Mayo - Total $679.50 (Efectivo)
-- ============================================================================
WITH nueva_venta_10 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-10', 679.50, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 3.333, 100.00, 57, 1, (SELECT id_venta FROM nueva_venta_10)), -- ALPISTE COMPUESTO
    (nextval('venta_detalle_seq_db'), 1.538, 20.00, 58, 1, (SELECT id_venta FROM nueva_venta_10)),  -- MAIZ QUEBRADO
    (nextval('venta_detalle_seq_db'), 0.511, 23.50, 9, 1, (SELECT id_venta FROM nueva_venta_10)),   -- DOG CHOW ADULTO
    (nextval('venta_detalle_seq_db'), 2.043, 94.00, 9, 1, (SELECT id_venta FROM nueva_venta_10)),   -- DOG CHOW ADULTO
    (nextval('venta_detalle_seq_db'), 0.741, 20.00, 5, 1, (SELECT id_venta FROM nueva_venta_10)),   -- RINGO
    (nextval('venta_detalle_seq_db'), 2, 90.00, 55, 2, (SELECT id_venta FROM nueva_venta_10)),      -- ARENA GATO (2 pzas)
    (nextval('venta_detalle_seq_db'), 3.571, 200.00, 12, 1, (SELECT id_venta FROM nueva_venta_10)), -- GANADOR PREMIUM ADULTO
    (nextval('venta_detalle_seq_db'), 0.500, 24.00, 41, 1, (SELECT id_venta FROM nueva_venta_10)),  -- WISKAS (granel)
    (nextval('venta_detalle_seq_db'), 0.500, 23.00, 14, 1, (SELECT id_venta FROM nueva_venta_10)),  -- GANADOR
    (nextval('venta_detalle_seq_db'), 0.509, 29.00, 11, 1, (SELECT id_venta FROM nueva_venta_10)),  -- DOG CHOW CACHORRO
    (nextval('venta_detalle_seq_db'), 1.000, 56.00, 12, 1, (SELECT id_venta FROM nueva_venta_10));  -- GANADOR PREMIUM ADULTO

-- ============================================================================
-- VENTA: 11 de Mayo - Total $89.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_11 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-11', 89.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.435, 20.00, 14, 1, (SELECT id_venta FROM nueva_venta_11)), -- GANADOR
    (nextval('venta_detalle_seq_db'), 0.567, 17.00, 1, 1, (SELECT id_venta FROM nueva_venta_11)),  -- CAMPIDOG
    (nextval('venta_detalle_seq_db'), 2, 24.00, 52, 2, (SELECT id_venta FROM nueva_venta_11)),     -- SOBRE ZOOPREME CAT (2 pzas)
    (nextval('venta_detalle_seq_db'), 1, 14.00, 51, 2, (SELECT id_venta FROM nueva_venta_11)),     -- SOBRE MININO PLUS
    (nextval('venta_detalle_seq_db'), 1, 14.00, 51, 2, (SELECT id_venta FROM nueva_venta_11));     -- SOBRE MININO PLUS

-- ============================================================================
-- VENTA: 12 de Mayo - Total $67.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_12 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-12', 67.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.435, 20.00, 14, 1, (SELECT id_venta FROM nueva_venta_12)), -- GANADOR
    (nextval('venta_detalle_seq_db'), 1.022, 47.00, 9, 1, (SELECT id_venta FROM nueva_venta_12));  -- DOG CHOW ADULTO

-- ============================================================================
-- VENTA: 13 de Mayo - Total $225.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_13 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-13', 225.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.500, 42.00, 56, 1, (SELECT id_venta FROM nueva_venta_13)), -- ALPISTE SIMPLE
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_13)),     -- ARENA
    (nextval('venta_detalle_seq_db'), 0.536, 15.00, 56, 1, (SELECT id_venta FROM nueva_venta_13)), -- ALPISTE
    (nextval('venta_detalle_seq_db'), 0.667, 20.00, 57, 1, (SELECT id_venta FROM nueva_venta_13)), -- ALPISTE COMPUESTO
    (nextval('venta_detalle_seq_db'), 1.000, 26.00, 15, 1, (SELECT id_venta FROM nueva_venta_13)), -- GUESOS
    (nextval('venta_detalle_seq_db'), 2, 26.00, 51, 2, (SELECT id_venta FROM nueva_venta_13)),     -- MININO PLUS SOBRE (2 pzas)
    (nextval('venta_detalle_seq_db'), 2, 26.00, 19, 2, (SELECT id_venta FROM nueva_venta_13)),     -- SOBRE PEDIGREE (2 pzas)
    (nextval('venta_detalle_seq_db'), 1.000, 25.00, 6, 1, (SELECT id_venta FROM nueva_venta_13));  -- QUIN PET
    
 
-- ============================================================================
-- VENTA: 14 de Mayo - Total $109.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_14 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-14', 109.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.600, 18.00, 63, 1, (SELECT id_venta FROM nueva_venta_14)), -- FRIJO NEGRO AMERICANO (proporcional a $30/kg)
    (nextval('venta_detalle_seq_db'), 0.900, 27.00, 1, 1, (SELECT id_venta FROM nueva_venta_14)),  -- CAMPIDOG
    (nextval('venta_detalle_seq_db'), 0.435, 20.00, 14, 1, (SELECT id_venta FROM nueva_venta_14)), -- GANADOR
    (nextval('venta_detalle_seq_db'), 0.500, 14.00, 56, 1, (SELECT id_venta FROM nueva_venta_14)), -- ALPISTE
    (nextval('venta_detalle_seq_db'), 0.667, 30.00, 10, 1, (SELECT id_venta FROM nueva_venta_14)); -- DOG CHOW ADULTO, MINI Y PEQUEÑO

-- ============================================================================
-- VENTA: 15 de Mayo - Total $267.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_15 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-15', 267.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.000, 43.00, 42, 1, (SELECT id_venta FROM nueva_venta_15)), -- GATINA
    (nextval('venta_detalle_seq_db'), 1.250, 60.00, 41, 1, (SELECT id_venta FROM nueva_venta_15)), -- WISKAS (granel, proporcional a $48/kg)
    (nextval('venta_detalle_seq_db'), 0.500, 18.00, 59, 1, (SELECT id_venta FROM nueva_venta_15)), -- SEMILLA GIRASOL
    (nextval('venta_detalle_seq_db'), 1.000, 43.00, 42, 1, (SELECT id_venta FROM nueva_venta_15)), -- GATINA (segunda anotación)
    (nextval('venta_detalle_seq_db'), 3, 30.00, 52, 2, (SELECT id_venta FROM nueva_venta_15)),     -- SOBRE ZOOPREME CAT (3 pzas a $10 c/u)
    (nextval('venta_detalle_seq_db'), 0.435, 20.00, 14, 1, (SELECT id_venta FROM nueva_venta_15)), -- GANADOR
    (nextval('venta_detalle_seq_db'), 0.714, 40.00, 12, 1, (SELECT id_venta FROM nueva_venta_15)), -- GANADOR PREMIUM ADULTO
    (nextval('venta_detalle_seq_db'), 1, 10.00, 20, 2, (SELECT id_venta FROM nueva_venta_15));     -- SOBRE FIDUS PRO
    

-- ============================================================================
-- VENTA: 16 de Mayo - Total $101.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_16 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-16', 101.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.849, 73.00, 16, 1, (SELECT id_venta FROM nueva_venta_16)), -- NUPEC ADULTO (proporcional a $86/kg)
    (nextval('venta_detalle_seq_db'), 1.000, 28.00, 56, 1, (SELECT id_venta FROM nueva_venta_16)); -- ALPISTE

-- ============================================================================
-- VENTA: 17 de Mayo - Total $418.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_17 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-17', 418.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.769, 50.00, 43, 1, (SELECT id_venta FROM nueva_venta_17)), -- MININO PLUS (proporcional a $65/kg)
    (nextval('venta_detalle_seq_db'), 1.000, 46.00, 9, 1, (SELECT id_venta FROM nueva_venta_17)),  -- DOG CHOW ADULTO
    (nextval('venta_detalle_seq_db'), 0.500, 28.00, 12, 1, (SELECT id_venta FROM nueva_venta_17)), -- GANADOR PREMIUM ADULTO
    (nextval('venta_detalle_seq_db'), 1, 12.00, 50, 2, (SELECT id_venta FROM nueva_venta_17)),     -- WISKAS SOBRE
    (nextval('venta_detalle_seq_db'), 1.957, 90.00, 14, 1, (SELECT id_venta FROM nueva_venta_17)), -- GANADOR (proporcional a $46/kg)
    (nextval('venta_detalle_seq_db'), 1.036, 29.00, 56, 1, (SELECT id_venta FROM nueva_venta_17)), -- ALPISTE
    (nextval('venta_detalle_seq_db'), 2.000, 112.00, 12, 1, (SELECT id_venta FROM nueva_venta_17)),-- GANADOR PREMIUM ADULTO (2 Kgs)
    (nextval('venta_detalle_seq_db'), 1, 11.00, 22, 2, (SELECT id_venta FROM nueva_venta_17)),     -- GANADOR SOBRE
    (nextval('venta_detalle_seq_db'), 1, 10.00, 20, 2, (SELECT id_venta FROM nueva_venta_17)),     -- FIDUS PRO SOBRE
    (nextval('venta_detalle_seq_db'), 0.462, 30.00, 43, 1, (SELECT id_venta FROM nueva_venta_17)); -- MININO PLUS (proporcional a $65/kg)
   
-- ============================================================================
-- VENTA: 18 de Mayo - Total $261.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_18 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-18', 261.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 3.333, 100.00, 57, 1, (SELECT id_venta FROM nueva_venta_18)), -- ALPISTE COMPUESTO
    (nextval('venta_detalle_seq_db'), 1, 12.00, 50, 2, (SELECT id_venta FROM nueva_venta_18)),     -- SOBRE WISKAS
    (nextval('venta_detalle_seq_db'), 2, 90.00, 55, 2, (SELECT id_venta FROM nueva_venta_18)),     -- ARENA GATO (2 pzas)
    (nextval('venta_detalle_seq_db'), 1, 13.00, 21, 2, (SELECT id_venta FROM nueva_venta_18)),     -- DOG CHOW SOBRE
    (nextval('venta_detalle_seq_db'), 0.714, 20.00, 56, 1, (SELECT id_venta FROM nueva_venta_18)), -- ALPISTE
    (nextval('venta_detalle_seq_db'), 2, 26.00, 51, 2, (SELECT id_venta FROM nueva_venta_18)),     -- SOBRE MININO PLUS (2 pzas)
    (nextval('venta_detalle_seq_db'), 0.208, 10.00, 41, 1, (SELECT id_venta FROM nueva_venta_18)); -- WISKAS (granel)

-- ============================================================================
-- VENTA: 19 de Mayo - Total $270.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_19 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-19', 270.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.821, 102.00, 12, 1, (SELECT id_venta FROM nueva_venta_19)), -- GANADOR PREMIUM ADULTO
    (nextval('venta_detalle_seq_db'), 1, 22.00, 54, 2, (SELECT id_venta FROM nueva_venta_19)),     -- CHURU
    (nextval('venta_detalle_seq_db'), 1.000, 26.00, 15, 1, (SELECT id_venta FROM nueva_venta_19)), -- GUESOS
    (nextval('venta_detalle_seq_db'), 0.250, 12.00, 41, 1, (SELECT id_venta FROM nueva_venta_19)), -- WISKAS (granel)
    (nextval('venta_detalle_seq_db'), 0.492, 32.00, 43, 1, (SELECT id_venta FROM nueva_venta_19)), -- MININO PLUS
    (nextval('venta_detalle_seq_db'), 2, 24.00, 50, 2, (SELECT id_venta FROM nueva_venta_19)),     -- SOBRE WISKAS (2 pzas)
    (nextval('venta_detalle_seq_db'), 0.491, 28.00, 11, 1, (SELECT id_venta FROM nueva_venta_19)), -- DOG CHOW CACHORRO
    (nextval('venta_detalle_seq_db'), 5, 15.00, 26, 2, (SELECT id_venta FROM nueva_venta_19)),     -- PALOS CARNAZA (5 pzas)
    (nextval('venta_detalle_seq_db'), 1, 9.00, 27, 2, (SELECT id_venta FROM nueva_venta_19));      -- HUESITO CARNAZA CON CARNE

-- ============================================================================
-- VENTA: 20 de Mayo - Total $396.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_20 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-20', 396.00, 'EFONTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.500, 12.00, 7, 1, (SELECT id_venta FROM nueva_venta_20)),  -- BN BASIC (1/2 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 48.00, 44, 1, (SELECT id_venta FROM nueva_venta_20)), -- MININO (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 28.00, 56, 1, (SELECT id_venta FROM nueva_venta_20)), -- ALPISTE SIMPLE
    (nextval('venta_detalle_seq_db'), 0.228, 13.00, 11, 1, (SELECT id_venta FROM nueva_venta_20)), -- DOG CHOW CACHORRO
    (nextval('venta_detalle_seq_db'), 1.000, 86.00, 16, 1, (SELECT id_venta FROM nueva_venta_20)), -- NUPEC ADULTO (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.500, 24.00, 41, 1, (SELECT id_venta FROM nueva_venta_20)), -- WISKAS (granel)
    (nextval('venta_detalle_seq_db'), 2, 26.00, 51, 2, (SELECT id_venta FROM nueva_venta_20)),     -- MININO PLUS SOBRE (2 pzas)
    (nextval('venta_detalle_seq_db'), 0.500, 23.00, 14, 1, (SELECT id_venta FROM nueva_venta_20)), -- GANADOR
    (nextval('venta_detalle_seq_db'), 3.000, 135.00, 10, 1, (SELECT id_venta FROM nueva_venta_20)),-- DOG CHOW MINI Y PEQUEÑO (3 Kgs en total)
    (nextval('venta_detalle_seq_db'), 1, 11.00, 22, 2, (SELECT id_venta FROM nueva_venta_20));     -- SOBRE GANADOR
    
 -- ============================================================================
-- VENTA: 21 de Mayo - Total $125.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_21 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-21', 125.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.000, 28.00, 56, 1, (SELECT id_venta FROM nueva_venta_21)), -- ALPISTE SIMPLE
    (nextval('venta_detalle_seq_db'), 1.087, 50.00, 9, 1, (SELECT id_venta FROM nueva_venta_21)),  -- DOG CHOW ADULTO
    (nextval('venta_detalle_seq_db'), 0.175, 10.00, 11, 1, (SELECT id_venta FROM nueva_venta_21)), -- DOG CHOW CACHORRO
    (nextval('venta_detalle_seq_db'), 0.500, 24.00, 41, 1, (SELECT id_venta FROM nueva_venta_21)), -- WISKAS (granel)
    (nextval('venta_detalle_seq_db'), 0.500, 13.00, 15, 1, (SELECT id_venta FROM nueva_venta_21)); -- GUESOS

-- ============================================================================
-- VENTA: 22 de Mayo - Total $310.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_22 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-22', 310.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1, 12.00, 50, 2, (SELECT id_venta FROM nueva_venta_22)),     -- SOBRE WISKAS
    (nextval('venta_detalle_seq_db'), 2, 26.00, 21, 2, (SELECT id_venta FROM nueva_venta_22)),     -- SOBRES DOG CHOW (2 pzas)
    (nextval('venta_detalle_seq_db'), 1.000, 46.00, 14, 1, (SELECT id_venta FROM nueva_venta_22)), -- GANADOR
    (nextval('venta_detalle_seq_db'), 0.208, 10.00, 44, 1, (SELECT id_venta FROM nueva_venta_22)), -- MININO
    (nextval('venta_detalle_seq_db'), 1.000, 28.00, 56, 1, (SELECT id_venta FROM nueva_venta_22)), -- ALPISTE SIMPLE (1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 3.00, 26, 2, (SELECT id_venta FROM nueva_venta_22)),      -- PALITO CARNAZA
    (nextval('venta_detalle_seq_db'), 1, 9.00, 24, 2, (SELECT id_venta FROM nueva_venta_22)),      -- HUESO BLANCO CON CARNAZA (hueso cuero café)
    (nextval('venta_detalle_seq_db'), 0.417, 15.00, 59, 1, (SELECT id_venta FROM nueva_venta_22)), -- SEMILLA GIRASOL
    (nextval('venta_detalle_seq_db'), 0.500, 15.00, 57, 1, (SELECT id_venta FROM nueva_venta_22)), -- ALPISTE COMPUESTO
    (nextval('venta_detalle_seq_db'), 0.536, 30.00, 12, 1, (SELECT id_venta FROM nueva_venta_22)), -- GANADOR PREMIUM ADULTO
    (nextval('venta_detalle_seq_db'), 0.308, 20.00, 43, 1, (SELECT id_venta FROM nueva_venta_22)), -- MININO PLUS
    (nextval('venta_detalle_seq_db'), 0.536, 30.00, 12, 1, (SELECT id_venta FROM nueva_venta_22)), -- GANADOR PREMIUM ADULTO (segunda anotación)
    (nextval('venta_detalle_seq_db'), 1.000, 26.00, 15, 1, (SELECT id_venta FROM nueva_venta_22)), -- GUESOS (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.500, 28.00, 12, 1, (SELECT id_venta FROM nueva_venta_22)), -- GANADOR PREMIUM ADULTO (tercera anotación)
    (nextval('venta_detalle_seq_db'), 1, 8.00, 23, 2, (SELECT id_venta FROM nueva_venta_22));      -- HUESO ($8)
    
-- ============================================================================
-- VENTA: 23 de Mayo - Total $409.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_23 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-23', 409.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1, 22.00, 54, 2, (SELECT id_venta FROM nueva_venta_23)),     -- CHURU
    (nextval('venta_detalle_seq_db'), 0.609, 28.00, 14, 1, (SELECT id_venta FROM nueva_venta_23)), -- GANADOR (granel)
    (nextval('venta_detalle_seq_db'), 1.000, 46.00, 14, 1, (SELECT id_venta FROM nueva_venta_23)), -- GANADOR (1 Kg)
    (nextval('venta_detalle_seq_db'), 2, 26.00, 51, 2, (SELECT id_venta FROM nueva_venta_23)),     -- SOBRES MININO PLUS (2 pzas)
    (nextval('venta_detalle_seq_db'), 0.500, 20.00, 49, 1, (SELECT id_venta FROM nueva_venta_23)), -- ZOOPREME CAT CROQUETA
    (nextval('venta_detalle_seq_db'), 0.333, 10.00, 57, 1, (SELECT id_venta FROM nueva_venta_23)), -- ALPISTE COMPUESTO
    (nextval('venta_detalle_seq_db'), 1, 50.00, 34, 2, (SELECT id_venta FROM nueva_venta_23)),     -- CORREA CHICA TELA
    (nextval('venta_detalle_seq_db'), 1.000, 48.00, 44, 1, (SELECT id_venta FROM nueva_venta_23)), -- MININO (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 56.00, 12, 1, (SELECT id_venta FROM nueva_venta_23)), -- GANADOR PREMIUM ADULTO (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.465, 20.00, 42, 1, (SELECT id_venta FROM nueva_venta_23)), -- GATINA
    (nextval('venta_detalle_seq_db'), 1.000, 40.00, 49, 1, (SELECT id_venta FROM nueva_venta_23)), -- ZOOPREME CAT CROQUETA (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.508, 33.00, 43, 1, (SELECT id_venta FROM nueva_venta_23)), -- MININO PLUS
    (nextval('venta_detalle_seq_db'), 0.208, 10.00, 41, 1, (SELECT id_venta FROM nueva_venta_23)); -- WISKAS (granel)

-- ============================================================================
-- VENTA: 24 de Mayo - Total $495.50 (Efectivo)
-- ============================================================================
WITH nueva_venta_24 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-24', 495.50, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.500, 20.00, 49, 1, (SELECT id_venta FROM nueva_venta_24)), -- ZOOPREME CAT CROQUETA
    (nextval('venta_detalle_seq_db'), 2, 6.00, 26, 2, (SELECT id_venta FROM nueva_venta_24)),      -- PALITOS CARNAZA (2 pzas)
    (nextval('venta_detalle_seq_db'), 0.208, 10.00, 44, 1, (SELECT id_venta FROM nueva_venta_24)), -- MININO
    (nextval('venta_detalle_seq_db'), 1.000, 45.00, 10, 1, (SELECT id_venta FROM nueva_venta_24)), -- DOG CHOW MINI Y PEQUEÑO (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.896, 43.00, 44, 1, (SELECT id_venta FROM nueva_venta_24)), -- MININO
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_24)),     -- ARENA GATO
    (nextval('venta_detalle_seq_db'), 2.000, 92.00, 9, 1, (SELECT id_venta FROM nueva_venta_24)),  -- DOG CHOW ADULTO (2 Kgs)
    (nextval('venta_detalle_seq_db'), 0.500, 28.50, 11, 1, (SELECT id_venta FROM nueva_venta_24)), -- DOG CHOW CACHORRO
    (nextval('venta_detalle_seq_db'), 1.196, 55.00, 9, 1, (SELECT id_venta FROM nueva_venta_24)),  -- DOG CHOW ADULTO
    (nextval('venta_detalle_seq_db'), 0.500, 23.00, 14, 1, (SELECT id_venta FROM nueva_venta_24)), -- GANADOR (1/2 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 65.00, 43, 1, (SELECT id_venta FROM nueva_venta_24)), -- MININO PLUS (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 86.00, 16, 1, (SELECT id_venta FROM nueva_venta_24)); -- NUPEC ADULTO (1 Kg)
    
-- ============================================================================
-- VENTA: 25 de Mayo - Total $446.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_25 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-25', 446.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1, 12.00, 50, 2, (SELECT id_venta FROM nueva_venta_25)),     -- WISKAS SOBRE
    (nextval('venta_detalle_seq_db'), 0.500, 24.00, 41, 1, (SELECT id_venta FROM nueva_venta_25)), -- WISKAS (granel)
    (nextval('venta_detalle_seq_db'), 3, 66.00, 60, 2, (SELECT id_venta FROM nueva_venta_25)),     -- BARRAS P/CANARIO (PALANQUETA, 3 pzas)
    (nextval('venta_detalle_seq_db'), 2, 90.00, 55, 2, (SELECT id_venta FROM nueva_venta_25)),     -- ARENAS GATO (2 pzas)
    (nextval('venta_detalle_seq_db'), 1, 10.00, 52, 2, (SELECT id_venta FROM nueva_venta_25)),     -- SOBRE SUPREME CAT
    (nextval('venta_detalle_seq_db'), 0.357, 10.00, 56, 1, (SELECT id_venta FROM nueva_venta_25)), -- ALPISTE SIMPLE
    (nextval('venta_detalle_seq_db'), 0.208, 10.00, 44, 1, (SELECT id_venta FROM nueva_venta_25)), -- MININO
    (nextval('venta_detalle_seq_db'), 1.429, 60.00, 61, 1, (SELECT id_venta FROM nueva_venta_25)), -- FRIJOL PERUANO (proporcional a $42/kg)
    (nextval('venta_detalle_seq_db'), 0.500, 14.00, 56, 1, (SELECT id_venta FROM nueva_venta_25)), -- ALPISTE SIMPLE
    (nextval('venta_detalle_seq_db'), 0.500, 15.00, 57, 1, (SELECT id_venta FROM nueva_venta_25)), -- ALPISTE COMPUESTO
    (nextval('venta_detalle_seq_db'), 2.000, 112.00, 12, 1, (SELECT id_venta FROM nueva_venta_25)),-- GANADOR PREMIUM ADULTO (2 Kgs)
    (nextval('venta_detalle_seq_db'), 1.000, 35.00, 4, 1, (SELECT id_venta FROM nueva_venta_25)),  -- LAIKA (1 Kg)
    (nextval('venta_detalle_seq_db'), 2, 26.00, 51, 2, (SELECT id_venta FROM nueva_venta_25)),     -- MININO PLUS SOBRE (2 pzas)
    (nextval('venta_detalle_seq_db'), 0.500, 22.50, 10, 1, (SELECT id_venta FROM nueva_venta_25)), -- DOG CHOW ADULTO, MINI
    (nextval('venta_detalle_seq_db'), 0.500, 12.50, 64, 1, (SELECT id_venta FROM nueva_venta_25)), -- ARROZ (1/2 Kg)
    (nextval('venta_detalle_seq_db'), 2, 6.00, 26, 2, (SELECT id_venta FROM nueva_venta_25));      -- PALOS CARNAZA (2 pzas)

-- ============================================================================
-- VENTA: 26 de Mayo - Total $474.50 (Efectivo)
-- ============================================================================
WITH nueva_venta_26 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-26', 474.50, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.087, 50.00, 14, 1, (SELECT id_venta FROM nueva_venta_26)), -- GANADOR ADULTO (proporcional a $46/kg)
    (nextval('venta_detalle_seq_db'), 1.000, 46.00, 9, 1, (SELECT id_venta FROM nueva_venta_26)),  -- DOG CHOW ADULTO (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 30.00, 57, 1, (SELECT id_venta FROM nueva_venta_26)), -- ALPISTE COMPUESTO
    (nextval('venta_detalle_seq_db'), 2, 6.00, 26, 2, (SELECT id_venta FROM nueva_venta_26)),      -- PALITOS CARNAZA (2 pzas)
    (nextval('venta_detalle_seq_db'), 1, 12.00, 50, 2, (SELECT id_venta FROM nueva_venta_26)),     -- SOBRE WISKAS
    (nextval('venta_detalle_seq_db'), 1.000, 26.00, 15, 1, (SELECT id_venta FROM nueva_venta_26)), -- GUESOS (1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 12.00, 50, 2, (SELECT id_venta FROM nueva_venta_26)),     -- SOBRE WISKAS (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.175, 10.00, 11, 1, (SELECT id_venta FROM nueva_venta_26)), -- DOG CHOW CACHORRO
    (nextval('venta_detalle_seq_db'), 2.222, 100.00, 10, 1, (SELECT id_venta FROM nueva_venta_26)),-- DOG CHOW MINI Y PEQUEÑO (proporcional a $45/kg)
    (nextval('venta_detalle_seq_db'), 0.500, 32.50, 43, 1, (SELECT id_venta FROM nueva_venta_26)), -- MININO PLUS (1/2 Kg)
    (nextval('venta_detalle_seq_db'), 1, 150.00, 38, 2, (SELECT id_venta FROM nueva_venta_26)),    -- CORREA CON ARNES GRANDE
    (nextval('venta_detalle_seq_db'), 0.154, 10.00, 43, 1, (SELECT id_venta FROM nueva_venta_26)); -- MININO PLUS CROQUETA
    
-- ============================================================================
-- VENTA: 27 de Mayo - Total $556.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_27 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-27', 556.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.000, 13.00, 58, 1, (SELECT id_venta FROM nueva_venta_27)), -- MAIZ QUEBRADO (1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 40.00, 34, 2, (SELECT id_venta FROM nueva_venta_27)),     -- CORREA REDONDA CHICA TELA
    (nextval('venta_detalle_seq_db'), 0.786, 22.00, 56, 1, (SELECT id_venta FROM nueva_venta_27)), -- ALPISTE SIMPLE
    (nextval('venta_detalle_seq_db'), 0.500, 28.00, 12, 1, (SELECT id_venta FROM nueva_venta_27)), -- GANADOR PREMIUM ADULTO
    (nextval('venta_detalle_seq_db'), 1.000, 46.00, 9, 1, (SELECT id_venta FROM nueva_venta_27)),  -- DOG CHOW ADULTO (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.511, 23.00, 10, 1, (SELECT id_venta FROM nueva_venta_27)), -- DOG CHOW RAZA PEQUEÑA
    (nextval('venta_detalle_seq_db'), 2.000, 52.00, 15, 1, (SELECT id_venta FROM nueva_venta_27)), -- GUESOS (2 Kgs)
    (nextval('venta_detalle_seq_db'), 1.000, 65.00, 43, 1, (SELECT id_venta FROM nueva_venta_27)), -- MININO PLUS (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.161, 10.00, 47, 1, (SELECT id_venta FROM nueva_venta_27)), -- CAT CHOW ADULTO
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_27)),     -- ARENA GATO
    (nextval('venta_detalle_seq_db'), 1.000, 26.00, 15, 1, (SELECT id_venta FROM nueva_venta_27)), -- GUESOS (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 40.00, 49, 1, (SELECT id_venta FROM nueva_venta_27)), -- ZOOPREME CAT (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.500, 20.00, 49, 1, (SELECT id_venta FROM nueva_venta_27)), -- ZOOPREME CAT (1/2 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 26.00, 15, 1, (SELECT id_venta FROM nueva_venta_27)), -- GUESOS (segunda anotación)
    (nextval('venta_detalle_seq_db'), 0.581, 50.00, 16, 1, (SELECT id_venta FROM nueva_venta_27)); -- NUPEC ADULTO

-- ============================================================================
-- VENTA: 28 de Mayo - Total $491.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_28 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-28', 491.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.465, 20.00, 42, 1, (SELECT id_venta FROM nueva_venta_28)), -- GATINA
    (nextval('venta_detalle_seq_db'), 2, 26.00, 51, 2, (SELECT id_venta FROM nueva_venta_28)),     -- SOBRES MININO PLUS (2 pzas)
    (nextval('venta_detalle_seq_db'), 0.357, 10.00, 56, 1, (SELECT id_venta FROM nueva_venta_28)), -- ALPISTE
    (nextval('venta_detalle_seq_db'), 0.667, 20.00, 57, 1, (SELECT id_venta FROM nueva_venta_28)), -- ALPISTE COMPUESTO
    (nextval('venta_detalle_seq_db'), 1.000, 65.00, 43, 1, (SELECT id_venta FROM nueva_venta_28)), -- MININO PLUS (1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 45.00, 55, 2, (SELECT id_venta FROM nueva_venta_28)),     -- ARENA GATO
    (nextval('venta_detalle_seq_db'), 5, 15.00, 26, 2, (SELECT id_venta FROM nueva_venta_28)),     -- PALITOS CARNAZA (5 pzas)
    (nextval('venta_detalle_seq_db'), 1.000, 48.00, 44, 1, (SELECT id_venta FROM nueva_venta_28)), -- MININO (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.500, 28.00, 12, 1, (SELECT id_venta FROM nueva_venta_28)), -- GANADOR PREMIUM ADULTO
    (nextval('venta_detalle_seq_db'), 1.000, 56.00, 12, 1, (SELECT id_venta FROM nueva_venta_28)), -- GANADOR PREMIUM ADULTO (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.400, 10.00, 64, 1, (SELECT id_venta FROM nueva_venta_28)), -- ARROZ
    (nextval('venta_detalle_seq_db'), 1.000, 45.00, 10, 1, (SELECT id_venta FROM nueva_venta_28)), -- DOG CHOW ADULTO, MINI, PEQUEÑO (1 Kg)
    (nextval('venta_detalle_seq_db'), 1.000, 48.00, 41, 1, (SELECT id_venta FROM nueva_venta_28)), -- WISKAS (1 Kg)
    (nextval('venta_detalle_seq_db'), 0.877, 50.00, 11, 1, (SELECT id_venta FROM nueva_venta_28)); -- DOG CHOW CACHORRO
    
-- ============================================================================
-- VENTA: 30 de Mayo - Total $557.50 (Efectivo)
-- ============================================================================
WITH nueva_venta_30 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-30', 557.50, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.417, 20.00, 41, 1, (SELECT id_venta FROM nueva_venta_30)), -- WISKAS CROQUETA
    (nextval('venta_detalle_seq_db'), 0.867, 26.00, 57, 1, (SELECT id_venta FROM nueva_venta_30)), -- ALPISTE COMPUESTO
    (nextval('venta_detalle_seq_db'), 2, 90.00, 55, 2, (SELECT id_venta FROM nueva_venta_30)),     -- ARENA GATO (2 pzas)
    (nextval('venta_detalle_seq_db'), 1.000, 43.00, 42, 1, (SELECT id_venta FROM nueva_venta_30)), -- GATINA (1 Kg)
    (nextval('venta_detalle_seq_db'), 4, 40.00, 52, 2, (SELECT id_venta FROM nueva_venta_30)),     -- SOBRE ZOOPREME CAT (4 pzas)
    (nextval('venta_detalle_seq_db'), 0.357, 10.00, 56, 1, (SELECT id_venta FROM nueva_venta_30)), -- ALPISTE
    (nextval('venta_detalle_seq_db'), 1.000, 28.00, 56, 1, (SELECT id_venta FROM nueva_venta_30)), -- ALPISTE (segunda anotación, 1 Kg)
    (nextval('venta_detalle_seq_db'), 0.500, 28.50, 11, 1, (SELECT id_venta FROM nueva_venta_30)), -- DOG CHOW CACHORRO
    (nextval('venta_detalle_seq_db'), 0.233, 20.00, 16, 1, (SELECT id_venta FROM nueva_venta_30)), -- NUPEC ADULTO
    (nextval('venta_detalle_seq_db'), 2.174, 100.00, 9, 1, (SELECT id_venta FROM nueva_venta_30)), -- DOG CHOW ADULTO (proporcional a $46/kg)
    (nextval('venta_detalle_seq_db'), 0.508, 33.00, 43, 1, (SELECT id_venta FROM nueva_venta_30)), -- MININO PLUS
    (nextval('venta_detalle_seq_db'), 1.000, 40.00, 49, 1, (SELECT id_venta FROM nueva_venta_30)), -- ZOOPREME CAT CROQUETAS (1 Kg)
    (nextval('venta_detalle_seq_db'), 1, 10.00, 52, 2, (SELECT id_venta FROM nueva_venta_30)),     -- ZOOPREME CAT SOBRE
    (nextval('venta_detalle_seq_db'), 1.500, 39.00, 15, 1, (SELECT id_venta FROM nueva_venta_30)); -- GUESOS (proporcional a $26/kg)
    
-- ============================================================================
-- VENTA: 31 de Mayo - Total $477.00 (Efectivo)
-- ============================================================================
WITH nueva_venta_31 AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-05-31', 477.00, 'EFECTIVO', 0.0, 0.0, 0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.385, 10.00, 15, 1, (SELECT id_venta FROM nueva_venta_31)), -- GUESOS (proporcional a $26/kg)
    (nextval('venta_detalle_seq_db'), 0.444, 20.00, 10, 1, (SELECT id_venta FROM nueva_venta_31)), -- DOG CHOW ADULTO, MINI (proporcional a $45/kg)
    (nextval('venta_detalle_seq_db'), 0.465, 20.00, 42, 1, (SELECT id_venta FROM nueva_venta_31)), -- GATINA (proporcional a $43/kg)
    (nextval('venta_detalle_seq_db'), 6, 18.00, 26, 2, (SELECT id_venta FROM nueva_venta_31)),     -- PALITOS CARNAZA (6 pzas a $3 c/u)
    (nextval('venta_detalle_seq_db'), 1, 13.00, 19, 2, (SELECT id_venta FROM nueva_venta_31)),     -- SOBRE PEDIGREE (Precio libreta)
    (nextval('venta_detalle_seq_db'), 1, 11.00, 28, 2, (SELECT id_venta FROM nueva_venta_31)),     -- DENTASTIX (Precio libreta)
    (nextval('venta_detalle_seq_db'), 0.233, 20.00, 16, 1, (SELECT id_venta FROM nueva_venta_31)), -- NUPEC ADULTO (proporcional a $86/kg)
    (nextval('venta_detalle_seq_db'), 0.500, 32.50, 43, 1, (SELECT id_venta FROM nueva_venta_31)), -- MININO PLUS (proporcional a $65/kg)
    (nextval('venta_detalle_seq_db'), 0.500, 32.50, 43, 1, (SELECT id_venta FROM nueva_venta_31)), -- MININO PLUS (segunda anotación)
    (nextval('venta_detalle_seq_db'), 2, 16.00, 23, 2, (SELECT id_venta FROM nueva_venta_31)),     -- HUESO CARNAZA (2 pzas de $8 c/u)
    (nextval('venta_detalle_seq_db'), 2, 26.00, 19, 2, (SELECT id_venta FROM nueva_venta_31)),     -- PEDIGREE ADULTO SOBRE (2 pzas a $13 c/u)
    (nextval('venta_detalle_seq_db'), 1.000, 46.00, 14, 1, (SELECT id_venta FROM nueva_venta_31)), -- GANADOR CROQUETA (1 Kg)
    (nextval('venta_detalle_seq_db'), 2, 22.00, 22, 2, (SELECT id_venta FROM nueva_venta_31)),     -- SOBRE GANADOR (2 pzas a $11 c/u)
    (nextval('venta_detalle_seq_db'), 1, 40.00, 30, 2, (SELECT id_venta FROM nueva_venta_31)),     -- JUGUETE PERRO (Mapeado a COLLAR CHICO por precio)
    (nextval('venta_detalle_seq_db'), 0.465, 20.00, 42, 1, (SELECT id_venta FROM nueva_venta_31)), -- GATINA CROQUETA (proporcional a $43/kg)
    (nextval('venta_detalle_seq_db'), 2.000, 90.00, 10, 1, (SELECT id_venta FROM nueva_venta_31)); -- DOG CHOW RAZA ADULTA PEQUEÑA (2 Kgs)