INSERT INTO comunas(nom_comuna) VALUES ('Puerto Montt');
INSERT INTO comunas(nom_comuna) VALUES ('Puerto Varas');
INSERT INTO comunas(nom_comuna) VALUES ('Osorno');
INSERT INTO comunas(nom_comuna) VALUES ('Castro');
INSERT INTO comunas(nom_comuna) VALUES ('Valdivia');
commit;


insert into MARCAS(NOM_MARCA) VALUES ('Bandai Namco');
insert into MARCAS(NOM_MARCA) VALUES ('Panini Manga');
insert into MARCAS(NOM_MARCA) VALUES ('Editorial Ivrea');
insert into MARCAS(NOM_MARCA) VALUES ('Konami TCG');
insert into MARCAS(NOM_MARCA) VALUES ('Good Smile');
COMMIT;

INSERT INTO categorias (nom_categoria, porcentaje) VALUES ('Categoria S', 17.5);
INSERT INTO categorias (nom_categoria, porcentaje) VALUES ('Categoria A', 12.6);
INSERT INTO categorias (nom_categoria, porcentaje) VALUES ('Categoria B', 9.4);
INSERT INTO categorias (nom_categoria, porcentaje) VALUES ('Categoria C', 7.2);
INSERT INTO categorias (nom_categoria, porcentaje) VALUES ('Categoria D', 5.4);


INSERT INTO zonas (nom_zona, porc) VALUES ('Norte Lagos', 8.56);
INSERT INTO zonas (nom_zona, porc) VALUES ('Sur Austral', 10.48);
INSERT INTO zonas (nom_zona, porc) VALUES ('Cordillera', 11.27);
INSERT INTO zonas (nom_zona, porc) VALUES ('Costera', 7.24);
INSERT INTO zonas (nom_zona, porc) VALUES ('Insular Chiloe', 7.24);
COMMIT;

--CLINETES
INSERT into CLIENTES(NOMBRE_CLIENTE,DIRECCION,TELEFONO,COMUNA_ID) VALUES ('ALCARAZ NOVOA MONTSERRAT', 'AV.DIEGO PORTALES 450', '5694522114',1);
INSERT into CLIENTES(NOMBRE_CLIENTE,DIRECCION,TELEFONO,COMUNA_ID) VALUES ('	JIMENEZ LORCA ELENA', 'SAN PEDRO 520 DPTO. K', '5696665443',2);
INSERT into CLIENTES(NOMBRE_CLIENTE,DIRECCION,TELEFONO,COMUNA_ID) VALUES ('	TORRES ROCA MARIA', 'MACKENNA 7421', '5695626134',4);
INSERT into CLIENTES(NOMBRE_CLIENTE,DIRECCION,TELEFONO,COMUNA_ID) VALUES ('	LOPEZ ROJAS THOMAS', 'BLANCO ENCALADA 2007 ', '5692989233',5);
INSERT into CLIENTES(NOMBRE_CLIENTE,DIRECCION,TELEFONO,COMUNA_ID) VALUES ('ZAMORA MOLINA TOMAS', 'WALKER MARTINEZ 1294', '5694343456',2);
COMMIT;
--ARTICULOS
INSERT INTO ARTICULOS(NOM_ARTICULO,PRECIO,STOCK_ACTUAL,STOCK_MINIMO,MARCA_ID) VALUES ('MANGA ONE PIECE VOL 100',11990,150,80,2);










