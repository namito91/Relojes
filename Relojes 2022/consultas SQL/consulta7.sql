-- 7. La lista de relojes que tengan alarmas pero no tengan caja de acero inoxidable.

SELECT DISTINCT RE.Modelo as 'reloj' , PA.posee AS 'contiene alarma' , MC.Material as 'material de la caja'
FROM PoseeAtributo PA , Complicaciones CO , Reloj RE , Caja CA , MaterialDeCaja MC 
WHERE 
   -- se filtran los relojes con alarma
   ( PA.posee like '%si%' 
 AND PA.ID = CO.ID_Contiene_Alarma
 AND CO.ID = RE.ID_Complicaciones )
 
 AND  -- se filtran los relojes sin caja de acero inoxidable
   ( MC.Material NOT like '%inoxidable%'
 AND MC.ID = CA.ID_MaterialDeLaCaja
 AND CA.ID = RE.ID_Caja )  
 
 ORDER by RE.Modelo	
	 
	 