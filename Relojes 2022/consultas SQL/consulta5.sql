--5. La lista de relojes de marca Casio que usan correa de resina, ordenados
--   alfabéticamente por marca.

SELECT RE.Modelo , MC.Material as 'material de la correa' 
FROM MaterialDeCorrea MC , CorreaOBrazalete CB , Agarradera AG , Componentes CO, 
	 Caja CA , Reloj RE

WHERE 
		MC.Material like '%resina%'
	AND MC.ID = CB.ID_MaterialCorrea
	AND CB.ID = AG.ID_Correa_o_Brazalete
	AND AG.ID = CO.ID_Agarradera
	AND CO.ID = CA.ID_Componentes
	AND CA.ID = RE.ID_Caja
	AND RE.Modelo like '%casio%'
	ORDER by RE.Modelo