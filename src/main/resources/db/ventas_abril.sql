WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-04-01', 150.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta -- <--- Aquí Postgres nos "regresa" el ID que se acaba de crear
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta) 
SELECT nextval('venta_detalle_seq_db'), 0.571, 20.0, 4, 1, id_venta
FROM nueva_venta;


WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-04-02', 112.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.357, 10.0, 56, 1, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 0.278, 10.0, 59, 1, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 2, 92.0, 14, 1, (SELECT id_venta FROM nueva_venta));

WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES  (nextval('venta_seq_db'), '2026-04-03', 25.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta -- <--- Aquí Postgres nos "regresa" el ID que se acaba de crear
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta) 
SELECT nextval('venta_detalle_seq_db'), 0.543, 25.0, 14, 1, id_venta
FROM nueva_venta;

WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-04-04', 224.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.536, 15.0, 56, 1, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 0.5, 23.0, 14, 1, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 0.5, 23.0, 14, 1, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 1, 46.0, 14, 1, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 2, 92.0, 14, 1, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 1, 25.0, 6, 1, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 0.536, 15.0, 56, 1, (SELECT id_venta FROM nueva_venta));

WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-04-05', 26.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta -- <--- Aquí Postgres nos "regresa" el ID que se acaba de crear
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta) 
SELECT nextval('venta_detalle_seq_db'), 1, 26.0, 15, 1, id_venta
FROM nueva_venta;

WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-04-07', 24.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta -- <--- Aquí Postgres nos "regresa" el ID que se acaba de crear
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta) 
SELECT nextval('venta_detalle_seq_db'), 1, 24.0, 7, 1, id_venta
FROM nueva_venta;

WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-04-08', 75.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.543, 25.0, 14, 1, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 1.667, 50.0, 57, 1, (SELECT id_venta FROM nueva_venta));


WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-04-09', 146.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1, 35.0, 8, 1, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 0.588, 20.0, 8, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 0.357, 10.0, 56, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 1, 25.0, 6, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 1, 26.0, 15, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 1, 26.0, 15, 1, (SELECT id_venta FROM nueva_venta));


WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-04-10', 84.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1, 42.0, 55, 2, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 1, 42.0, 55, 2, (SELECT id_venta FROM nueva_venta));


WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-04-13', 46.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta -- <--- Aquí Postgres nos "regresa" el ID que se acaba de crear
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta) 
SELECT nextval('venta_detalle_seq_db'), 1, 46.0, 14, 1, id_venta
FROM nueva_venta;

WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-04-14', 157.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1, 24.0, 7, 1, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 1.07, 30.0, 56, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 0.71, 20.0, 56, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 1.07, 30.0, 56, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 1.5, 54.0, 4, 1, (SELECT id_venta FROM nueva_venta));

WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-04-15', 38.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1, 24.0, 7, 1, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 0.375, 15.0, 49, 1, (SELECT id_venta FROM nueva_venta));

WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-04-16', 20.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.217, 10.0, 14, 1, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 0.25, 10.0, 49, 1, (SELECT id_venta FROM nueva_venta));

WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-04-17', 115.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 3.5, 100.0, 56, 1, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 0.55, 15.0, 15, 1, (SELECT id_venta FROM nueva_venta));


WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-04-18', 142.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.543, 25.0, 14, 1, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 1, 15.0, 50, 2, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 0.217, 10.0, 56, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 0.417, 23.0, 7, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 1, 42.0, 55, 2, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 1.07, 30.0, 56, 1, (SELECT id_venta FROM nueva_venta));

WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-04-21', 46.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta -- <--- Aquí Postgres nos "regresa" el ID que se acaba de crear
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta) 
SELECT nextval('venta_detalle_seq_db'), 1, 23.0, 7, 1, id_venta
FROM nueva_venta;


WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-04-22', 111.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.5, 23.0, 17, 1, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 1, 42.0, 55, 2, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 1, 20.0, 48, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 1, 26.0, 15, 1, (SELECT id_venta FROM nueva_venta));


WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-04-23', 107.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1.07, 30.0, 56, 1, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 0.417, 20.0, 44, 2, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 0.313, 15.0, 44, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 0.316, 15.0, 9, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 0.316, 15.0, 9, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 1, 12.0, 51, 2, (SELECT id_venta FROM nueva_venta));


WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-04-24', 158.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1, 12, 20, 2, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 0.357, 20.0, 12, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 0.208, 10.0, 50, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 2, 28.0, 21, 2, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 1, 46.0, 9, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 1, 42.0, 55, 2, (SELECT id_venta FROM nueva_venta));

WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-04-25', 116.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1, 12, 51, 2, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 1, 26.0, 15, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 1, 46.0, 14, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 1.14, 32.0, 21, 1, (SELECT id_venta FROM nueva_venta));

WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-04-27', 84.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 4, 48.0, 21, 2, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 1, 36.0, 4, 1, (SELECT id_venta FROM nueva_venta));

WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-04-28', 92.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 0.208, 10.0, 41, 1, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 1, 26.0, 15, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 0.893, 25.0, 56, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 1, 28.0, 56, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 0.518, 29.0, 12, 1, (SELECT id_venta FROM nueva_venta));

WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-04-29', 130.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 1, 36.0, 59, 1, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 1, 28.0, 56, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 1, 46.0, 14, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 0.417, 20.0, 41, 1, (SELECT id_venta FROM nueva_venta));

WITH nueva_venta AS (
    INSERT INTO venta (id_venta, fecha, total, tipo_pago, cambio, comision, monto) 
    VALUES (nextval('venta_seq_db'), '2026-04-30', 344.0,'EFECTIVO',0.0,0.0,0.0)
    RETURNING id_venta
)
INSERT INTO venta_detalle (id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta)
VALUES 
    (nextval('venta_detalle_seq_db'), 3, 174.0, 12, 1, (SELECT id_venta FROM nueva_venta)),
    (nextval('venta_detalle_seq_db'), 4, 36.0, 25, 2, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 1.07, 28.0, 15, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 1, 28.0, 56, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 0.667, 30.0, 10, 1, (SELECT id_venta FROM nueva_venta)),
	(nextval('venta_detalle_seq_db'), 1, 48.0, 41, 1, (SELECT id_venta FROM nueva_venta));















