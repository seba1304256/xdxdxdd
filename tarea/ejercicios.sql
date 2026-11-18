--group by
--que pasa si ademas quiero traer el nombre de los jugadores
SELECT AVG(edad) AS edad_promedio, nombre_real FROM jugadores GROUP by nombre_real;
--busquemos que si tenga sentido 
SELECT AVG();
--Calcular en una sola fila la cantidad total de jugadores, el sueldo promedio, el sueldo mínimo y el sueldo máximo.

SELECT count(ID) AS TOTAL_JUGADORES,ROUND(AVG(JUGADORES.SUELDO_MENSUAL), 2) AS SUELDO_PROMEDIO,MIN(SUELDO_MENSUAL) AS SUELDO_MAS_BAJO,max(SUELDO_MENSUAL) AS SUELDO_MAS_ALTO, PAIS_NATAL FROM JUGADORES GROUP BY PAIS_NATAL ORDER BY SUELDO_MAS_ALTO DESC;
--Mostrar cuántos agentes existen por cada rol.
SELECT * FROM AGENTES;
SELECT COUNT(ID), ROL FROM AGENTES GROUP BY ROL;
--Mostrar cuántos jugadores hay por cada pais_natal, ordenando de mayor a menor cantidad.
SELECT * FROM JUGADORES;
SELECT COUNT(ID) AS CANTIDAD,PAIS_NATAL FROM JUGADORES GROUP BY PAIS_NATAL ORDER BY CANTIDAD DESC;
-- Por cada fase en la tabla partidas, mostrar cuántas partidas se jugaron, la duración promedio y el total de público acumulado.
SELECT * FROM PARTIDAS;
SELECT COUNT(ID) AS PARTIDAS_JUGADAS,AVG(DURACION_MIN),SUM(ASISTENCIA_PUBLICO), FASE FROM PARTIDAS GROUP BY FASE;
--Mostrar cuántos patrocinadores existen por cada rubro.
SELECT * FROM PATROCINADORES;
SELECT COUNT(ID) AS PATROCINADORES, RUBRO FROM PATROCINADORES GROUP BY RUBRO;
-- En patrocinios, mostrar por cada tipo_contrato la cantidad de contratos y la suma de monto_anual, ordenado de mayor a menor monto total.
SELECT * FROM PATROCINIOS;
SELECT COUNT(ID) AS CONTRATOS, TIPO_CONTRATO,SUM(MONTO_ANUAL) AS MONTO_TOTAL FROM PATROCINIOS GROUP BY TIPO_CONTRATO ORDER BY MONTO_TOTAL DESC;
--En participaciones, agrupar por gano (S o N) y mostrar la cantidad de registros, el promedio de kills y el promedio de puntaje_combate.
SELECT * FROM PARTICIPACIONES;




--JOIN

--Mostrar el nickname del jugador, la fase de la partida, el nombre del mapa y las kills logradas únicamente en la 'Gran Final'.
SELECT * FROM JUGADORES;
SELECT * FROM PARTIDAS;
SELECT * FROM MAPAS;
SELECT * FROM PARTICIPACIONES;

SELECT j.NICKNAME, p.KILLS, pa.FASE,ma.NOMBRE FROM JUGADORES j join PARTICIPACIONES p on j.id = p.JUGADOR_ID
join PARTIDAS pa on p.PARTIDA_ID = pa.ID
join MAPAS ma on ma.id = pa.MAPA_ID where pa.FASE = 'Gran Final';