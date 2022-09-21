-- 2. La cantidad de relojes agrupados por tipo de cristal.


--SELECT DISTINCT 
SELECT count( CR.Material ) as 'cantidad de relojes' , CR.Material as 'material del cristal' 
FROM Reloj RE , Caja CA , Componentes CO , Cristal CR
WHERE 
	 CR.ID     = CO.ID_Cristal  
	 AND CO.ID = CA.ID_Componentes
	 AND CA.ID = RE.ID_Caja
	GROUP by CR.Material
	
	
	
	