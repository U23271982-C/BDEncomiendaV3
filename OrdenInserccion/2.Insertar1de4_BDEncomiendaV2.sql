USE BDEncomiendaV4
GO
/*TiposEncomienda*/
INSERT INTO TiposDeEncomiendas(Descripción)
VALUES
( 'Documentos'),
('Paquetería pequeña'),
('Paquetería mediana'),
('Paquetería grande'),
('Electrodomésticos'),
('Material frágil'),
('Ropa y textiles'),
('Libros y revistas'),
('Artículos de oficina'),
('Productos especiales');
go
/*Clientes*/
INSERT INTO Clientes (Nombre,Apellido, Email, Teléfono) 
VALUES ('Ana','Fernández', 'deftwer@gmail.com','023698541');
INSERT INTO Clientes (Nombre,Apellido, Email, Teléfono) 
VALUES ('Lucía','Hernández', 'grefdt@gmail.com','741321654');
INSERT INTO Clientes (Nombre,Apellido, Email, Teléfono) 
VALUES ('María','Martínez', 'linux@gmail.com','123753654');
INSERT INTO Clientes (Nombre,Apellido, Email, Teléfono) 
VALUES ('Lucía','Ramírez', 'deftwer@gmail.com','654369120');
INSERT INTO Clientes (Nombre,Apellido, Email, Teléfono) 
VALUES ('Luis','Gómez', 'wanameger@gmail.com','913752684');
INSERT INTO Clientes (Nombre,Apellido, Email, Teléfono) 
VALUES ('Luis','López', 'gutywer@gmail.com','123753654');
INSERT INTO Clientes (Nombre,Apellido, Email, Teléfono) 
VALUES ('José','Gómez', 'deftwer@gmail.com','741321654');
INSERT INTO Clientes (Nombre,Apellido, Email, Teléfono) 
VALUES ('Luis','Fernández', 'petete@gmail.com','123753654');
INSERT INTO Clientes (Nombre,Apellido, Email, Teléfono) 
VALUES ('Juan','Gómez', 'tuyerwe@gmail.com','741321654');
INSERT INTO Clientes (Nombre,Apellido, Email, Teléfono) 
VALUES ('José','Gómez', 'gutywer@gmail.com','654369120');
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