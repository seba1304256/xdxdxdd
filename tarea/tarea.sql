-- buscar en jugadores donde (mayuscula) nickname donde like es comparador donde busca por letras
SELECT * FROM jugadores;
SELECT * FROM jugadores WHERE upper (NICKNAME) LIKE '%O%';


CREATE TABLE pulentos(
    nombre VARCHAR2(230),
    apellido VARCHAR2(230)
)

insert  into pulentos (nombre, apellido) Values ('Maxito',null);
insert  into pulentos (nombre, apellido) Values ('benjamin','carmona');


SELECT * from pulentos where apellido is null;
-- ordena los nombres por orden alfabetico
select* from pulentos ORDER by nombre;
--ordena los nombres de la misma forma pero al reves
select* from pulentos ORDER by nombre desc;

SELECT * from jugadores order by edad;
--ordena primero los nombres real y depues ordena edad
select * from jugadores order by NOMBRE_REAL,edad;
--
select count(*) as cantidad_de_jugadores from jugadores;
--order by
select nombre, tag, presupuesto_anual from equipos order by PRESUPUESTO_ANUAL desc;
select nickname, edad, nombre_real from JUGADORES order by EDAD ASC;
SELECT PAIS_NATAL,NICKNAME,SUELDO_MENSUAL from JUGADORES ORDER by PAIS_NATAL ASC, SUELDO_MENSUAL DESC;
SELECT * FROM PARTIDAS ORDER BY FECHA_PARTIDA DESC;
SELECT * FROM PARTICIPACIONES WHERE GANO = 'S'  ORDER BY puntaje_combate DESC;
SELECT * FROM PATROCINIOS ORDER BY tipo_contrato ASC, monto_anual DESC;
SELECT nickname from jugadores where nickname like '%a%';




SELECT jugador_id, max(puntaje_combate) as puntaje, j.nombre_real from PARTICIPACIONES p join JUGADORES j on p.ID = j.ID group by JUGADOR_ID, j.NOMBRE_REAL order by puntaje desc;
--group by
SELECT MAX(jugadores) from JUGADORES;

--select y alias
select * from regiones;
SELECT nombre, rol, origen_lore from AGENTES;
SELECT nickname as alias_jugador ,nombre_real as nombre_real ,sueldo_mensual as salario_usd from JUGADORES;
SELECT nickname, sueldo_mensual, SUELDO_MENSUAL * 12 as sueldo_anual from JUGADORES;
SELECT nombre, tag, PRESUPUESTO_ANUAL/1000000 as presupuesto_millones from EQUIPOS;
SELECT id, kills, deaths,kills + assists as participaciones_ofensiva from PARTICIPACIONES;


--where 
SELECT nickname,pais_natal, sueldo_mensual from JUGADORES where PAIS_NATAL = 'Chile';
SELECT nickname,edad,sueldo_mensual from JUGADORES where sueldo_mensual > 25000;
SELECT nombre
