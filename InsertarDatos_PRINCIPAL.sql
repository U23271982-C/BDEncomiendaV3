use BDEncomiendaV3
go
BULK INSERT Encomiendas
FROM 'D:\data_BDEncomiendaV2.txt'
WITH (
    FIELDTERMINATOR = ',',  -- Delimitador de campos
    ROWTERMINATOR = '\n',    -- Separador de filas
	FIRSTROW = 2
);
--delete prueba01
select * from Encomiendas