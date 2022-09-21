-- 6. La lista de todos los colores de dial disponibles de los relojes en la base de datos,
--    sin repetir.

SELECT DISTINCT CD.Color 
FROM ColorDial CD , Dial DI , Componentes CO , Caja CA , Reloj RE 
WHERE 
	   CD.ID = DI.ID_ColorDial 
   AND DI.ID = CO.ID_Dial
   AND CO.ID = CA.ID_Componentes
   AND CA.ID = RE.ID_Caja
   AND CD.Color NOT like '%no contiene%' -- se filtra la fila donde la pantalla es digital,(no contiene dial)
	
	 