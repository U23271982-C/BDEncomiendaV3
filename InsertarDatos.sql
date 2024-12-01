use hello_mySQL
go
BULK INSERT prueba01
FROM 'D:\data_BDEncomiendaV2.txt'
WITH (
    FIELDTERMINATOR = ',',  -- Delimitador de campos
    ROWTERMINATOR = '\n',    -- Separador de filas
	FIRSTROW = 2
);
--delete prueba01
select * from prueba01