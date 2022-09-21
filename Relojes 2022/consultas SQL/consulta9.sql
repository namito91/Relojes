-- 9. La lista de las marcas que tengan al menos 2 relojes en el sistema con un diámetro de
--    menos de 39mm.


SELECT (CASE WHEN (count(RE.ID_Marca ) >= 2) THEN MA.Nombre_marca ELSE 'ninguna marca con estas condiciones' END ) as 'consulta 9'
FROM LugToLug LU , Agarradera AG , Componentes CO , Caja CA , Reloj RE , Marca MA
WHERE 
	 LU.Medida < 39    	 
 AND LU.ID = AG.ID_Lug_To_Lug
 AND AG.ID = CO.ID_Agarradera 
 AND CO.ID = CA.ID_Componentes
 AND CA.ID = RE.ID_Caja 
 AND RE.ID_Marca = MA.ID