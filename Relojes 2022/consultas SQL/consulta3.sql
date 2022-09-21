--3. El listado de relojes que tengan más de 40 horas de reserva de carga en sus
--   movimientos automáticos.
	
SELECT RE.ID , RE.Modelo as 'reloj' , RM.Reserva as 'reserva de marcha'
FROM Reloj RE, Caja CA , Movimiento MO , TipoMovimiento TM , 
	 CaracteristicaMovimiento CM , ReservaDeMarcha RM	
WHERE CM.caracteristica like '%automatico%' 
	  AND CM.ID = TM.ID_CaracteristicaMovimiento
	  AND TM.ID = MO.ID_TipoMovimiento
	  AND MO.ID = CA.ID_Movimientos
	  AND CA.ID = RE.ID_Caja
	  AND RM.Reserva > 40
	  AND RE.ID_ReservaDeMarcha = RM.ID
	   
	