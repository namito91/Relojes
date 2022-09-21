-- Buscar que marca de reloj tiene el valor aceroinoxidable, en la caja 
-- que le corresponde (la cual esta definida en la tabla material de caja),
-- tambien debe tener Movimiento automatico,complicacion de fecha dia y 
-- estar fabricado en suiza.  	
-- Consulta #1
SELECT DISTINCT RE.ID , MA.Nombre_marca , MC.Material as 'material de la caja' , 
				CM.caracteristica as 'tipo de movimiento' , 
			    PA.posee as 'posee ventana de dia' , PO.Nombre_pais as 'pais de origen'

FROM  Marca MA , Reloj RE , MaterialDeCaja MC , Caja CA , 
	  Movimiento MO , CaracteristicaMovimiento CM , TipoMovimiento TM ,	
	  Complicaciones COM , Fecha F , PoseeAtributo PA ,
	  PaisorigenFabricante PO
	  
		
WHERE  (CA.ID_MaterialDeLaCaja = 2 OR CA.ID_MaterialDeLaCaja = 4)  
	   AND -- filtra los relojes con caja de acero inoxidable
	   ( MC.ID = CA.ID_MaterialDeLaCaja   
			AND CA.ID = RE.ID
			AND RE.ID_Marca = MA.ID )	
	   
	   AND -- filtra los relojes con movimiento automatico
	   ( CM.caracteristica like '%automatico%'
			AND TM.ID_CaracteristicaMovimiento = CM.ID 
			AND TM.ID = MO.ID_TipoMovimiento
			AND MO.ID = CA.ID_Movimientos ) 
	   
	   AND -- filtra los relojes con complicacion de ventana de dia solamente
	   (( F.ID_Contiene_Dia = 1 AND F.ID_Contiene_Mes = 2 AND F.ID_ContieneAnio = 2)
			AND F.ID = COM.ID_Fecha
			AND COM.ID = RE.ID
		    AND PA.ID = F.ID_Contiene_Dia )	
	   
	   AND -- filtra el pais de origen ( suiza )
	   ( PO.Nombre_pais like '%suiza%' 
		 AND PO.ID = RE.ID_PaisOrigenFabricante	)	
		 
































		 
		 
		 
