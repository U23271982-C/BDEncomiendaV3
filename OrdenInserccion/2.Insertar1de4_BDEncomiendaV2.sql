USE BDEncomiendaV4
GO
/*TiposEncomienda*/
INSERT INTO TiposDeEncomiendas(Descripci�n)
VALUES
( 'Documentos'),
('Paqueter�a peque�a'),
('Paqueter�a mediana'),
('Paqueter�a grande'),
('Electrodom�sticos'),
('Material fr�gil'),
('Ropa y textiles'),
('Libros y revistas'),
('Art�culos de oficina'),
('Productos especiales');
go
/*Clientes*/
INSERT INTO Clientes (Nombre,Apellido, Email, Tel�fono) 
VALUES ('Ana','Fern�ndez', 'deftwer@gmail.com','023698541');
INSERT INTO Clientes (Nombre,Apellido, Email, Tel�fono) 
VALUES ('Luc�a','Hern�ndez', 'grefdt@gmail.com','741321654');
INSERT INTO Clientes (Nombre,Apellido, Email, Tel�fono) 
VALUES ('Mar�a','Mart�nez', 'linux@gmail.com','123753654');
INSERT INTO Clientes (Nombre,Apellido, Email, Tel�fono) 
VALUES ('Luc�a','Ram�rez', 'deftwer@gmail.com','654369120');
INSERT INTO Clientes (Nombre,Apellido, Email, Tel�fono) 
VALUES ('Luis','G�mez', 'wanameger@gmail.com','913752684');
INSERT INTO Clientes (Nombre,Apellido, Email, Tel�fono) 
VALUES ('Luis','L�pez', 'gutywer@gmail.com','123753654');
INSERT INTO Clientes (Nombre,Apellido, Email, Tel�fono) 
VALUES ('Jos�','G�mez', 'deftwer@gmail.com','741321654');
INSERT INTO Clientes (Nombre,Apellido, Email, Tel�fono) 
VALUES ('Luis','Fern�ndez', 'petete@gmail.com','123753654');
INSERT INTO Clientes (Nombre,Apellido, Email, Tel�fono) 
VALUES ('Juan','G�mez', 'tuyerwe@gmail.com','741321654');
INSERT INTO Clientes (Nombre,Apellido, Email, Tel�fono) 
VALUES ('Jos�','G�mez', 'gutywer@gmail.com','654369120');
GO
select *
from Clientes

------------------------------------------------------------------------------------------------

-- Destinatarios

INSERT INTO Destinatarios (ClienteID) 
VALUES (1)
INSERT INTO Destinatarios (ClienteID) 
VALUES (3)
INSERT INTO Destinatarios (ClienteID) 
VALUES (5)
INSERT INTO Destinatarios (ClienteID) 
VALUES (7)
INSERT INTO Destinatarios (ClienteID) 
VALUES (9)
GO
select *
from Destinatarios
------------------------------------------------------------------------------------------------

--Remitentes

INSERT INTO Remitentes (ClienteID) 
VALUES (2)
INSERT INTO Remitentes (ClienteID) 
VALUES (4)
INSERT INTO Remitentes (ClienteID) 
VALUES (6)
INSERT INTO Remitentes (ClienteID) 
VALUES (8)
INSERT INTO Remitentes (ClienteID) 
VALUES (10)
GO