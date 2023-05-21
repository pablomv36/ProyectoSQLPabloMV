create table PMV_Almacen (
nº_almacen VARCHAR2 (10),
calle VARCHAR (20),
numero VARCHAR2 (3),
nombre VARCHAR2 (20),
descripcion VARCHAR2 (20),
CONSTRAINT almacen_pk PRIMARY KEY (nº_almacen)
);

drop table PMV_Almacen;
drop table PMV_Almacena;
drop table prepara;
drop table plato;
drop table PMV_Usa;
drop table trabajador;
drop table ingrediente;

create table PMV_Ingrediente (
id_ingrediente VARCHAR2(10),
nombre  VARCHAR2(30),
CONSTRAINT ingrediente_pk primary key (id_ingrediente)
);

create table PMV_Plato (
id_plato VARCHAR2(10),
nombre VARCHAR2(30),
tipo VARCHAR2(20),
CONSTRAINT plato_pk primary key (id_plato)
);

create table PMV_Trabajador (
dni varchar2(9),
nombre varchar2(20),
apellidos varchar2 (30),
tlfo_fijo varchar2 (20),
tlfo_movil varchar2 (9),
funcion varchar2 (30),
CONSTRAINT trabajador_pk primary key (dni)
);

create table PMV_Prepara (
id_plato number,
dni varchar2 (9),
constraint prepara_pk primary key (id_plato, dni)
);


create table PMV_Almacena (
cantidad_palets number,
nº_almacen number,
id_ingrediente number,
constraint almacena_pk primary key (id_ingrediente, nº_almacen)
);

create table PMV_Usa (
cantidad varchar2(30),
id_ingrediente varchar2(3),
id_plato varchar2(6),
constraint usa_pk primary key (id_ingrediente, id_plato)
);


INSERT ALL 
INTO PMV_Almacen (nº_almacen, calle, numero, nombre, descripcion)
VALUES  (1, 'Peral', 24, 'Almacenes Vidal', 'Temporal')
INTO PMV_Almacen (nº_almacen, calle, numero, nombre, descripcion)
values (2, 'Lorca', 11, 'Luciano Almacenes', 'Central')
INTO PMV_Almacen (nº_almacen, calle, numero, nombre, descripcion)
values (3, 'Duero', 51, 'DRT Almacenes', 'Regional')
INTO PMV_Almacen (nº_almacen, calle, numero, nombre, descripcion)
values (4, 'Argelia', 49, 'Campu Almacenes', 'Transito')
SELECT * FROM dual;

INSERT all
INTO PMV_Ingrediente (id_ingrediente, nombre)
values (1, 'Sal')
INTO PMV_Ingrediente (id_ingrediente, nombre)
values (2, 'Azafran')
INTO PMV_Ingrediente (id_ingrediente, nombre)
values (3, 'Agua')
INTO PMV_Ingrediente (id_ingrediente, nombre)
values (4, 'Cebolla')
INTO PMV_Ingrediente (id_ingrediente, nombre)
values (5, 'Dientes de ajo')
INTO PMV_Ingrediente (id_ingrediente, nombre)
values (6, 'Queso')
INTO PMV_Ingrediente (id_ingrediente, nombre)
values (7, 'Oregano')
INTO PMV_Ingrediente (id_ingrediente, nombre)
values (8, 'Harina')
INTO PMV_Ingrediente (id_ingrediente, nombre)
values (9, 'Huevo')
INTO PMV_Ingrediente (id_ingrediente, nombre)
values (10, 'Jamon')
INTO PMV_Ingrediente (id_ingrediente, nombre)
values (11, 'Patatas')
SELECT * FROM dual;

Insert all 
Into PMV_Plato (id_plato, nombre, tipo)
values (1, 'Macarrones', 'Pasta')
Into PMV_Plato (id_plato, nombre, tipo)
values (2, 'Judias', 'Legumbres')
Into PMV_Plato (id_plato, nombre, tipo)
values (3, 'Chuleton', 'Carne')
Into PMV_Plato (id_plato, nombre, tipo)
values (4, 'Asedias', 'Pescado')
Into PMV_Plato (id_plato, nombre, tipo)
values (5, 'Sopa', 'Consome')
SELECT * FROM dual;

INSERT INTO PMV_Trabajador (dni, nombre, apellidos, tlfo_fijo, tlfo_movil, funcion)
VALUES ('56746347D', 'Alejandro', 'Lopez', '923523550', '634234213', 'Cocinero');

INSERT INTO PMV_Trabajador (dni, nombre, apellidos, tlfo_fijo, tlfo_movil, funcion)
VALUES ('59856263P', 'Rogelio', 'Fernandez', '957037128', '684322947', 'Pinche');

INSERT INTO PMV_Trabajador (dni, nombre, apellidos, tlfo_fijo, tlfo_movil, funcion)
VALUES ('74285495C', 'Paco', 'Gómez', '954321987', '677345678', 'Pinche');

INSERT INTO PMV_Trabajador (dni, nombre, apellidos, tlfo_fijo, tlfo_movil, funcion)
VALUES ('95214224Y', 'Pili', 'Delgado', '967341236', '698345325', 'Pinche');

ALTER TABLE PMV_Trabajador
ADD CONSTRAINT ck_trabajador_tlfo_fijo CHECK (tlfo_fijo LIKE '9__');

ALTER TABLE PMV_Trabajador
ADD CONSTRAINT ck_trabajador_funcion CHECK (funcion IN ('Cocinero', 'Pinche'));

INSERT ALL
INTO PMV_Almacena (cantidad_palets, nº_almacen, id_ingrediente)
VALUES (2, 2, 1)
INTO PMV_Almacena (cantidad_palets, nº_almacen, id_ingrediente)
VALUES (5, 1, 2)
INTO PMV_Almacena (cantidad_palets, nº_almacen, id_ingrediente)
VALUES (3, 1, 4)
INTO PMV_Almacena (cantidad_palets, nº_almacen, id_ingrediente)
VALUES (6, 2, 6)
INTO PMV_Almacena (cantidad_palets, nº_almacen, id_ingrediente)
VALUES (4, 3, 7)
INTO PMV_Almacena (cantidad_palets, nº_almacen, id_ingrediente)
VALUES (3, 4, 8)
INTO PMV_Almacena (cantidad_palets, nº_almacen, id_ingrediente)
VALUES (4, 4, 10)
SELECT 1 FROM dual;

INSERT ALL
INTO PMV_Prepara (id_plato, dni)
VALUES (3, '56746347D')
INTO PMV_Prepara (id_plato, dni)
VALUES (2, '74285495C')
INTO PMV_Prepara (id_plato, dni)
VALUES (4, '95214224Y')
SELECT * FROM dual;

INSERT ALL
INTO PMV_Usa (cantidad, id_ingrediente, id_plato)
VALUES ('200 gr', 6, 1)
INTO PMV_Usa (cantidad, id_ingrediente, id_plato)
VALUES ('Al gusto', 7, 1)
INTO PMV_Usa (cantidad, id_ingrediente, id_plato)
VALUES ('Al gusto', 2, 2)
INTO PMV_Usa (cantidad, id_ingrediente, id_plato)
VALUES ('300 gr a trozos', 10, 2)
INTO PMV_Usa (cantidad, id_ingrediente, id_plato)
VALUES ('1 huevo frito', 9, 3)
INTO PMV_Usa (cantidad, id_ingrediente, id_plato)
VALUES ('4 lonchas grandes', 10, 3)
SELECT 1 FROM dual;
