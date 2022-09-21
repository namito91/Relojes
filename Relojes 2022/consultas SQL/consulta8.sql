-- 8. Los nombres de las marcas que no tengan trabajen con relojes digitales.

SELECT MA.Nombre_marca as 'marca de reloj' , TR.Tipo as 'tipo de reloj'
FROM Reloj RE , TipoDeReloj TR , Marca MA 
WHERE 
	  TR.Tipo NOT like '%digital%'
  AND TR.ID = RE.ID_TipoDeReloj
  AND MA.ID = RE.ID_Marca  