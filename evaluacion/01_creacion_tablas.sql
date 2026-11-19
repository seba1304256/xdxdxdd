DROP TABLE detalle_factura CASCADE CONSTRAINTS;
DROP TABLE facturas CASCADE CONSTRAINTS;
DROP TABLE vendedores CASCADE CONSTRAINTS;
DROP TABLE articulos CASCADE CONSTRAINTS;
DROP TABLE clientes CASCADE CONSTRAINTS;
DROP TABLE zonas CASCADE CONSTRAINTS;
DROP TABLE categorias CASCADE CONSTRAINTS;
DROP TABLE marcas CASCADE CONSTRAINTS;
DROP TABLE comunas CASCADE CONSTRAINTS;

CREATE TABLE comunas (
    id          NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom_comuna  VARCHAR2(40) NOT NULL
);

CREATE TABLE marcas (
    id          NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom_marca   VARCHAR2(40) NOT NULL
);

CREATE TABLE categorias (
    id             NUMBER       GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom_categoria  VARCHAR2(30) NOT NULL,
    porcentaje     NUMBER(4,1)    NOT NULL check (porcentaje > 0)
);

CREATE TABLE zonas (
    id        NUMBER       GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom_zona  VARCHAR2(40)  NOT NULL UNIQUE,
    porc      NUMBER(4,2)    NOT NULL check (porc > 0)
);




create table clientes (
    id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY key,
    nombre_cliente VARCHAR2(60) not NULL UNIQUE,
    direccion VARCHAR2(60) not NULL,
    telefono VARCHAR2(15) not NULL,
    comuna_id NOT NULL REFERENCES comunas(id)
);

CREATE table articulos (
    id number GENERATED ALWAYS as IDENTITY PRIMARY key,
    nom_articulo VARCHAR2(50) not NULL UNIQUE,
    precio number(8) not NULL,
    stock_actual NUMBER(5),
    stock_minimo number(5),
    marca_id not NULL REFERENCES marcas(id) 
);
create table vendedores(
    id number GENERATED ALWAYS as IDENTITY PRIMARY key,
    rut_vendedor VARCHAR2(12) not NULL UNIQUE,
    nombres VARCHAR2(30) not NULL,
    paterno VARCHAR2(30) not NULL,
    materno VARCHAR2(30),
    fec_nac DATE not NULL,
    fec_contrato DATE not NULL,
    sueldo NUMBER(8) not NULL ,
    comision NUMBER(4,2),
    zona_id REFERENCES zonas(id),
    categoria_id not NULL REFERENCES categorias(id)
);
CREATE TABLE facturas (
    id number GENERATED ALWAYS as IDENTITY PRIMARY key,
    cliente_id not NULL REFERENCES clientes(id),
    vendedor_id not NULL REFERENCES vendedores(id),
    fecha_factura date not NULL
);
CREATE table detalle_factura(
    factura_id  number not NULL REFERENCES facturas(id),
    articulo_id number not NULL REFERENCES articulos(id),
    cantidad NUMBER(4) not NULL check(cantidad > 0)
);
