-- 10. El listado de relojes con más de 100 metros de resistencia al agua.

SELECT RE.Modelo as 'reloj' , PS.Presion AS 'presion soportada' , UM.Unidad as 'unidad de medida'
FROM PresionSoportada PS , Caja CA , Reloj RE , UnidadDeMedida UM
WHERE 
	 PS.Presion > 100 
 AND PS.ID_UnidadDeMedida = UM.ID
 AND PS.ID = CA.ID_PresionSoportada
 AND CA.ID = RE.ID_Caja
  