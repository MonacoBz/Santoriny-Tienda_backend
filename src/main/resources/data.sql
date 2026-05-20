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

INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'CAMPIDOG',30.0,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'LAYKA',35.0,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'RINGO',27.0,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'QUIN PET',25.0,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'BN BASIC',24.0,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'PERRAZO',34.0,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'DOGCHAW ADULTO',46.0,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'DOGCHAW ADULTO,MINI Y PEQUEÑO',45.0,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'DOGCHAW CACHORRO',57.0,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'GANADOR PREMIUM',56.0,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'GANADOR',46.0,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'NUPEC ADULTO',86.0,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'PEDIGREE',13.0,2,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'FIDUS PRO',10.0,2,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'DOG CHAW',13.0,2,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'GANADOR',11.0,2,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'HUESO',8.0,4,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'HUESO CON CUERO CAFÉ',9.0,4,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'PATAS POLLO',10.0,5,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'PALO COLORES',3.0,5,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'PALO CON CARNE',9.0,5,1);


INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'WISKAS',48.0,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'GATINA',43.0,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'MININO PLUS',65.0,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'MININO',48.0,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'ZOOPREME CAT',40.0,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'WISKAS',12.0,2,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'MININO PLUS',13.0,2,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'ZOOPREME CAT',10.0,2,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'CHURU',22.0,5,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'ARENA',45.0,6,2);

INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'ALPISTE',28.0,3,3);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'ALPISTE COMPUESTO',30.0,3,3);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'MAIZ QUEBRADO',13.0,3,3);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'SEMILLA GIRASOL',36.0,3,3);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'PALANQUETA',22.0,3,4);

INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'FRIJO PERUANO',42.0,3,4);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'FRIJO FLOR DE MAYO',32.0,3,4);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'FRIJO NEGRO AMERICANO',30.0,3,4);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento) VALUES (nextval('public.producto_seq_db'),true,'ARROZ',25.0,3,4);

