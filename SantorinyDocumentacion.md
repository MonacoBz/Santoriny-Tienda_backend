# Sistema de Gestion de Ventas - Santorini.

## Contexto 

El objetivo del sistema es apoyar en el registro de ventas que se realizan en la tienda de croquetas Santorini, actualmente el registro se lleva en una libreta. 

En esta libreta se lleva registro de las ventas diarias, las inversiones(productos) que se llegan a registrar, las deboluciones, y se busca obtener las ganancias totales de los meses, con estos registros se busca también mostrar estadisticas, para poder sistematizar los datos logrando convertirlos en información útil para la toma de decisiones futuras. 

Los dueños son personas de mayor edad, por lo cual se tendra que crear un **Cliente(Web)** con una UI facil de entender para facilitar la interacción con el sistema.

## Arquitectura del Sistema

### Arquitectura

Opto por seguir una arquitectura **cliente-servidor**, ya que el sistema se lanzara en local(LAN), donde solo accederemos mis padres y yo.

- **Cliente(Frontend web):** Se creara una página web simple responsiva, optimizada para celulares. Con el objetivo de que sea amigable para mis padres, para que estos puedán guardar las ventas del día.

- **Servidor (Backend API):** Se creare una **API-REST** para manejar las solicitudes que se hagan desde el cliente, y está se guarde en la base de datos.

- **Base de datos:** La base de datos a usar será PostgreSql por su facilidad de uso, estara alojada en el mismo servidor donde se encontrara el Backend.

### Diagrama

![Diagrama Software](Arquitectura_software.svg)



## Listado Entidades

### producto **(EC)**

- id_producto **(PK)**
- nombre_producto
- precio_x_unidad
- activo 
- id_categoria **(FK)**
- id_tipo_alimento **(FK)**

### categoria **(EC)**

- id_categoria **(PK)**
- nombre_categoria

### tipo_alimento **(EC)**

- id_tipo_alimento **(PK)**
- nombre_tipo_alimento

### venta **(ED)**

- id_venta **(PK)**
- fecha_hora
- total_venta


### venta_detalle **(ED)**

- id_venta_detalle **(PK)**
- id_venta **(FK)**
- id_producto **(FK)**
- cantidad
- id_unidad **(FK)**
- precio_venta

### unidad **(EC)**

- id_unidad **(PK)**
- nombre_unidad

## Relaciones

- Un **producto** pertenece a una **categoria**. (1-M)
- Un **producto** es un **tipo_alimento**. (1-M)
- Una **venta_detalle** tiene varias **ventas**. (1-M)
- Una **venta_detalle** tiene un **producto**. (1-M)  
- Una **unidad** pertenece a una **venta_detalle** (1-1)

## diagrama

![Modelo Relacional](SIstema_Santoriny_Relacional.svg) 

## Diccionario de datos

### Producto

| Campo | Tipo de dato | Restriccion(es) | Descripción |
| --- | --- | --- | --- |
| id_producto | INT | UNIQUE, PK, AUTO INCREMENT | Representa el indice del producto. |
| nombre_producto | VARCHAR(255) | NOT NULL | Representa el nombre del producto. | 
| precio_x_unidad | DECIMAL(10,2) | NOT NULL POSITIVO DIFERENTE_CERO | Represneta el precio por unidad(kg,pza,etc) del producto. |
| activo | BOOLEAN | NOT NULL | Representa si el producto esta activo, es decir si se sigue vendiendo |
| id_categoria | FK | NOT NULL | Representa la categoria del producto(croquetas,sobres,etc). |
| id_tipo_alimento | FK | NOT NULL | Represetna el tipo del alimento de producto(humano,perro,gato,etc). |

### Categoria

| Campo | Tipo de dato | Restriccion(es) | Descripción |
| --- | --- | --- | --- |
| id_categoria | INT | UNIQUE, PK, AUTO INCREMENT | Representa el indice de la categoria. |
| nombre_categoria | VARCHAR(255) | UNIQUE, NOT NULL | Representa el nombre de la categoria(croquetas, sobre, etc). |

### Tipo Alimento

| Campo | Tipo de dato | Restriccion(es) | Descripción |
| --- | --- | --- | --- |
| id_tipo_alimento | INT | UNIQUE, PK, AUTO INCREMENT | Representa el indice del tipo de alimento. |
| nombre_tipo_alimento | VARCHAR(255) | UNIQUE, NOT NULL | Representa el nombre del tipo de alimento(Perro,Humano, Gato). |

### Venta

| Campo | Tipo de dato | Restriccion(es) | Descripción |
| --- | --- | --- | --- |
| id_venta | INT | UNIQUE, PK, AUTO INCREMENT | Representa el indice de la venta. |
| fecha_hora | DATETIME | NOT NULL | Representa la fecha y hora en que se realizo la venta. |
| total_venta | DECIMAL(10,2) | NOT NULL POSITIVO MAYOR_CERO | Representa el costo total de la venta. |

### Venta detalle

| Campo | Tipo de dato | Restriccion(es) | Descripción |
| --- | --- | --- | --- |
| id_venta_detalle | INT | UNIQUE, PK, AUTO INCREMENT | Representa el indice de la venta detalle. |
| id_venta | FK | NOT NULL | Representa el id de la venta. |
| id_producto | FK | NOT NULL | Representa el id del producto. |
| id_unidad | FK | NOT NULL | Representa el id de la unidad. |
| cantidad | DECIMAL(10,3) | NOT NULL POSITIVO DIFERENTE_CERO | Representa la cantidad que se vendio del producto. |
| total_venta | DECIMAL(10,2) | NOT NULL POSITIVO DIFERENTE_CERO | Representa el total que se vendio del producto. | 

### Unidad

| Campo | Tipo de dato | Restriccion(es) | Descripción |
| --- | --- | --- | --- |
| id_unidad | INT | UNIQUE, PK, AUTO INCREMENT | Representa el indice de la unidad. |
| nombre_unidad | VARCHAR(255) | NOT NULL | Representa el nombre de la unidad(kg,pza, caja(s), costal, etc). |


## Reglas de negocio.

### producto
- Se puede crear un **producto**.
- Se puede leer un **producto**.
- Se puede actualizar un **producto**.
- Se puede eliminar(modificar bandera activo) un **producto**.

### categoria

- Se puede crear un **categoria**.
- Se puede leer un **categoria**.
- Se puede actualizar un **categoria**.

### tipo_alimento

- Se puede crear un **tipo_alimento**.
- Se puede leer un **tipo_alimento**.
- Se puede actualizar un **tipo_alimento**.

### venta

- Se puede crear un **venta**.
- Se puede leer un **venta**.
- Se puede actualizar un **venta**.

### venta_detalle

- Se puede crear un **venta_detalle**.
- Se puede leer un **venta_detalle**.
- Se puede actualizar un **venta_detalle**.

### unidad

- Se puede crear un **unidad**.
- Se puede leer un **unidad**.
- Se puede actualizar un **unidad**.

## Principios de diseño (SOLID).

Como el sistema tendera a escalar, se buscara seguir algunos de los  principios **SOLID**, logrando así obtener las ventajas que estos principios nos ofrecen para el escalamiento de aplicaciones.

## Responsabilidad Unica.

- Service Interface: Se creara una interfaz **Service**, con el objetivo de que las clases que implementen esta interfaz tengan el objetivo de solo servir como los servicios de cada entidad.

- Repository Interface: Se creara una interfaz **Respository**, con el objetivo que las clases que implementen esta interfaz, su unico objetivo sea manejar la persistencía de datos.

## Inyección de dependencias.

- Se usara la inyección de dependencias de **Spring (@Service, @Repository)**, para que los controladores dependan de abstracciones y no de implementaciones concretas.

