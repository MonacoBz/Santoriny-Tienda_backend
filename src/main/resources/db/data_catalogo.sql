INSERT INTO categoria (id_categoria, nombre) VALUES (nextval('categoria_id_seq'), 'CROQUETAS');
INSERT INTO categoria (id_categoria, nombre) VALUES (nextval('categoria_id_seq'), 'SOBRE');
INSERT INTO categoria (id_categoria, nombre) VALUES (nextval('categoria_id_seq'), 'SEMILLA');
INSERT INTO categoria (id_categoria, nombre) VALUES (nextval('categoria_id_seq'), 'CARNAZA');
INSERT INTO categoria (id_categoria, nombre) VALUES (nextval('categoria_id_seq'), 'PREMIO');
INSERT INTO categoria (id_categoria, nombre) VALUES (nextval('categoria_id_seq'), 'HIGIENE');
INSERT INTO categoria (id_categoria, nombre) VALUES (nextval('categoria_id_seq'), 'ACCESORIOS');

INSERT INTO tipo_alimento(id_tipo_alimento, nombre) VALUES (nextval('tipo_alimento_id'), 'PERRO');
INSERT INTO tipo_alimento(id_tipo_alimento, nombre) VALUES (nextval('tipo_alimento_id'), 'GATO');
INSERT INTO tipo_alimento(id_tipo_alimento, nombre) VALUES (nextval('tipo_alimento_id'), 'AVES');
INSERT INTO tipo_alimento(id_tipo_alimento, nombre) VALUES (nextval('tipo_alimento_id'), 'OTRO');

INSERT INTO unidad(id_unidad, nombre) VALUES (nextval('unidad_seq_db'),'Kg(s)');
INSERT INTO unidad(id_unidad, nombre) VALUES (nextval('unidad_seq_db'),'pza(s)');
INSERT INTO unidad(id_unidad, nombre) VALUES (nextval('unidad_seq_db'),'bulto');

INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'CAMPIDOG',30.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'HI DOG',30.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'DYNO ADULTO',20.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'LAYKA',35.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'RINGO',27.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'QUIN PET',25.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'BN BASIC',24.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'PERRAZO',34.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'DOG CHOW ADULTO',46.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'DOG CHOW ADULTO,MINI Y PEQUEÑO',48.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'DOG CHOW CACHORRO',57.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'GANADOR PREMIUM ADULTO RAZA GRANDE',61.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'GANADOR PREMIUM ADULTO RAZA PEQUEÑA',67.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'GANADOR',52.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'GUESOS',26.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'NUPEC ADULTO',86.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'NUPEC CACHORRO',97.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'NUPEC ADULTO RAZAS PEQUEÑAS',115.0,1,1,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'PEDIGREE',12.0,2,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'FIDUS PRO',10.0,2,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'DOG CHOW',13.0,2,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'GANADOR',11.0,2,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'HUESO',12.0,4,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'HUESO CON CUERO CAFÉ',9.0,4,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'PATAS POLLO',10.0,5,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'PALO COLORES',3.0,5,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'PALO CON CARNE',9.0,5,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'DENTASTIX',11.0,6,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'PECHERA GRANDE',90.0,7,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'COLLAR CHICO CINTETICO',40.0,7,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'COLLAR MEDIANO CINTETICO',50.0,7,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'COLLAR GRANDE CINTETICO',55.0,7,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'COLLAR EXTRA GRANDE CINTETICO',60.0,7,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'CORREA REDONDA CHICA TELA',40.0,7,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'CORREA GRANDE TELA',90.0,7,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'CORREA CON COLLAR CHICO TELA',60.0,7,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'CORREA GRANDE CON COLLAR TELA',110.0,7,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'CORREA GRANDE CON ARNES TELA',90.0,7,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'CORREA CHICA CON ARNES TELA',80.0,7,1,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'PECHERA CHICA',70.0,7,1,2);



INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'WISKAS',51.0,1,2,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'GATINA',43.0,1,2,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'MININO PLUS',62.0,1,2,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'MININO',51.0,1,2,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'FELIX',57.0,1,2,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'CAT CHOW GATITOS',74.0,1,2,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'CAT CHOW ADULTO',50.0,1,2,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'MININO',48.0,1,2,1); --eliminar
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'ZOOPREME CAT',40.0,1,2,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'WISKAS',12.0,2,2,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'MININO PLUS',13.0,2,2,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'ZOOPREME CAT',10.0,2,2,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'FELIX',12.0,2,2,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'CHURU',16.0,5,2,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'ARENA QUIN PET',45.0,6,2,2);

INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'ALPISTE',28.0,3,3,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'ALPISTE COMPUESTO',30.0,3,3,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'MAIZ QUEBRADO',13.0,3,3,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'SEMILLA GIRASOL',36.0,3,3,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'PALANQUETA',22.0,3,4,2);

INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'FRIJO PERUANO',42.0,3,4,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'FRIJO FLOR DE MAYO',32.0,3,4,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'FRIJO NEGRO AMERICANO',30.0,3,4,1);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'ARROZ',25.0,3,4,1);

INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'ARENA ALFA CAT',55.0,6,2,2);
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'MAIZ PALOMERO',28.0,3,3,1); 
INSERT INTO producto(id_producto, activo, nombre, precio_x_unidad, id_categoria, id_tipo_alimento,id_unidad) VALUES (nextval('public.producto_seq_db'),true,'PEDIGREE',44.0,1,1,1);