INSERT INTO categoria (id_categoria, nombre) VALUES (nextval('categoria_id_seq'), 'CROQUETAS');
INSERT INTO categoria (id_categoria, nombre) VALUES (nextval('categoria_id_seq'), 'SOBRE');
INSERT INTO categoria (id_categoria, nombre) VALUES (nextval('categoria_id_seq'), 'SEMILLA');
INSERT INTO categoria (id_categoria, nombre) VALUES (nextval('categoria_id_seq'), 'CARNAZA');
INSERT INTO categoria (id_categoria, nombre) VALUES (nextval('categoria_id_seq'), 'PREMIO');
INSERT INTO categoria (id_categoria, nombre) VALUES (nextval('categoria_id_seq'), 'HIGIENE');

INSERT INTO tipo_alimento(id_tipo_alimento, nombre) VALUES (nextval('tipo_alimento_id'), 'PERRO');
INSERT INTO tipo_alimento(id_tipo_alimento, nombre) VALUES (nextval('tipo_alimento_id'), 'GATO');
INSERT INTO tipo_alimento(id_tipo_alimento, nombre) VALUES (nextval('tipo_alimento_id'), 'AVES');
INSERT INTO tipo_alimento(id_tipo_alimento, nombre) VALUES (nextval('tipo_alimento_id'), 'OTRO');

INSERT INTO unidad(id_unidad, nombre) VALUES (nextval('unidad_seq_db'),'Kg(s)');
INSERT INTO unidad(id_unidad, nombre) VALUES (nextval('unidad_seq_db'),'pza(s)');
INSERT INTO unidad(id_unidad, nombre) VALUES (nextval('unidad_seq_db'),'bulto');

INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'CAMPIDOG',30.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'LAYKA',35.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'RINGO',27.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'QUIN PET',25.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'BN BASIC',24.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'PERRAZO',34.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'DOG CHOW ADULTO',46.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'DOG CHOW ADULTO,MINI Y PEQUEÑO',45.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'DOG CHOW CACHORRO',57.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'GANADOR PREMIUM ADULTO RAZA GRANDE',56.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'GANADOR PREMIUM ADULTO RAZA PEQUEÑA',56.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'GANADOR',46.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'GUESOS',26.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'NUPEC ADULTO',86.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'PEDIGREE',13.0,2,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'FIDUS PRO',10.0,2,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'DOG CHOW',13.0,2,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'GANADOR',11.0,2,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'HUESO',8.0,4,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'HUESO CON CUERO CAFÉ',9.0,4,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'PATAS POLLO',10.0,5,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'PALO COLORES',3.0,5,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'PALO CON CARNE',9.0,5,1,2);


INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'WISKAS',48.0,1,2,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'GATINA',43.0,1,2,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'MININO PLUS',65.0,1,2,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'CAT CHOW GATITOS',65.0,1,2,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'MININO',48.0,1,2,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'ZOOPREME CAT',40.0,1,2,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'WISKAS',12.0,2,2,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'MININO PLUS',13.0,2,2,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'ZOOPREME CAT',10.0,2,2,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'CHURU',22.0,5,2,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'ARENA',45.0,6,2,2);

INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'ALPISTE',28.0,3,3,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'ALPISTE COMPUESTO',30.0,3,3,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'MAIZ QUEBRADO',13.0,3,3,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'SEMILLA GIRASOL',36.0,3,3,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'PALANQUETA',22.0,3,4,2);

INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'FRIJO PERUANO',42.0,3,4,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'FRIJO FLOR DE MAYO',32.0,3,4,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'FRIJO NEGRO AMERICANO',30.0,3,4,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'ARROZ',25.0,3,4,1);


INSERT INTO venta(id_venta, fecha, total) VALUES (nextval('venta_seq_db'),'2026-04-01',20.0);
INSERT INTO venta_detalle(id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta) VALUES (nextval('venta_detalle_seq_db'),0.571,20.0,2,1,1);

INSERT INTO venta(id_venta, fecha, total) VALUES (nextval('venta_seq_db'),'2026-04-02',112.0);
INSERT INTO venta_detalle(id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta) VALUES (nextval('venta_detalle_seq_db'),0.357,10.0,32,1,2);
INSERT INTO venta_detalle(id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta) VALUES (nextval('venta_detalle_seq_db'),0.277,10.0,35,1,2);
INSERT INTO venta_detalle(id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta) VALUES (nextval('venta_detalle_seq_db'),2.0,92.0,11,1,2);

INSERT INTO venta(id_venta, fecha, total) VALUES (nextval('venta_seq_db'),'2026-04-03',25.0);
INSERT INTO venta_detalle(id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta) VALUES (nextval('venta_detalle_seq_db'),0.543,25.0,11,1,3);

INSERT INTO venta(id_venta, fecha, total) VALUES (nextval('venta_seq_db'),'2026-04-04',239.0);
INSERT INTO venta_detalle(id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta) VALUES (nextval('venta_detalle_seq_db'),0.543,25.0,32,1,4);
INSERT INTO venta_detalle(id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta) VALUES (nextval('venta_detalle_seq_db'),0.543,25.0,11,1,4);
INSERT INTO venta_detalle(id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta) VALUES (nextval('venta_detalle_seq_db'),0.543,25.0,11,1,4);
INSERT INTO venta_detalle(id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta) VALUES (nextval('venta_detalle_seq_db'),0.543,25.0,11,1,4);
INSERT INTO venta_detalle(id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta) VALUES (nextval('venta_detalle_seq_db'),0.543,25.0,11,1,4);
INSERT INTO venta_detalle(id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta) VALUES (nextval('venta_detalle_seq_db'),0.543,25.0,11,1,4);
INSERT INTO venta_detalle(id_venta_detalle, cantidad, total_venta, id_producto, id_unidad, id_venta) VALUES (nextval('venta_detalle_seq_db'),0.543,25.0,11,1,4);