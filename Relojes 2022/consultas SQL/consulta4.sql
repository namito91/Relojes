-- 4. Todos los modelos Seiko que tengan una medida lug-to-lug menor a 47mm
-- nota : el unico reloj seiko tiene un lug to lug de 47 mm,
-- pero el ejercicio pide menor a 47 mm,
-- por eso el output es vacio.

SELECT RE.Modelo , LU.Medida 
FROM LugToLug LU , Agarradera AG , Componentes CO , Caja CA , Reloj RE
WHERE 
	     LU.Medida < 47
	 AND LU.ID = AG.ID_Lug_To_Lug
	 AND AG.ID = CO.ID_Agarradera
	 AND CO.ID = CA.ID_Componentes
	 AND CA.ID = RE.ID_Caja
	 AND RE.Modelo like '%seiko%' 