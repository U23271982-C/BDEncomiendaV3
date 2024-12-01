-- Clientes

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
select *
from Remitentes
------------------------------------------------------------------------------------------------

--ClientesFrecuentes

INSERT INTO ClientesFrecuentes(ClienteID,Puntos)
VALUES (1, 3)
INSERT INTO ClientesFrecuentes(ClienteID,Puntos)
VALUES (5, 1)
INSERT INTO ClientesFrecuentes(ClienteID,Puntos)
VALUES (7, 1)
INSERT INTO ClientesFrecuentes(ClienteID,Puntos)
VALUES (2, 2)
INSERT INTO ClientesFrecuentes(ClienteID,Puntos)
VALUES (8, 4)
GO
select *
from ClientesFrecuentes

------------------------------------------------------------------------------------------------
--truncate table HistorialClientes
--HistorialClientes   

INSERT INTO HistorialClientes(ClienteID,Fecha,Descripci�n)
VALUES (1,'2024-11-22 09:40:20', 'Consulta sobre nuevos productos')
INSERT INTO HistorialClientes(ClienteID,Fecha,Descripci�n)
VALUES (2,'2024-10-15 10:45:30', 'Reclamaci�n sobre factura incorrecta')
INSERT INTO HistorialClientes(ClienteID,Fecha,Descripci�n)
VALUES (3,'2024-10-19 15:10:45', 'Pedido de informaci�n sobre entrega')
INSERT INTO HistorialClientes(ClienteID,Fecha,Descripci�n)
VALUES (4,'2024-09-30 14:59:12', 'Solicitud de cambio de direcci�n de env�o')
INSERT INTO HistorialClientes(ClienteID,Fecha,Descripci�n)
VALUES (5,'2024-11-27 17:30:00', 'Confirmaci�n de recepci�n de producto')
INSERT INTO HistorialClientes(ClienteID,Fecha,Descripci�n)
VALUES (6,'2024-09-12 20:20:58', 'Confirmaci�n de recepci�n de producto')
INSERT INTO HistorialClientes(ClienteID,Fecha,Descripci�n)
VALUES (7,'2024-09-22 02:41:20', 'Consulta sobre pol�tica de devoluciones')
INSERT INTO HistorialClientes(ClienteID,Fecha,Descripci�n)
VALUES (8,'2024-10-20 16:55:15', 'Sugerencia de mejora en el servicio')
INSERT INTO HistorialClientes(ClienteID,Fecha,Descripci�n)
VALUES (9,'2024-11-16 18:40:01', 'Sugerencia de mejora en el servicio')
INSERT INTO HistorialClientes(ClienteID,Fecha,Descripci�n)
VALUES (10,'2024-11-11 12:30:09', 'Confirmaci�n de recepci�n de producto')
GO
Select *
from HistorialClientes

------------------------------------------------------------------------------------------------

--ReclamacionesClientes

INSERT INTO ReclamacionesClientes(ClienteID,Fecha,Descripci�n)
VALUES (1,'2024-11-11 12:30:09', 'Reclamaci�n sobre factura incorrecta')
INSERT INTO ReclamacionesClientes(ClienteID,Fecha,Descripci�n)
VALUES (2,'2024-09-22 02:41:20', 'Reclamaci�n sobre factura incorrecta')
INSERT INTO ReclamacionesClientes(ClienteID,Fecha,Descripci�n)
VALUES (3,'2024-10-15 10:45:30', 'Reclamaci�n sobre encomienda en mal estado')
INSERT INTO ReclamacionesClientes(ClienteID,Fecha,Descripci�n)
VALUES (4,'2024-11-11 12:30:09', 'Reclamaci�n sobre encomienda en mal estado')
INSERT INTO ReclamacionesClientes(ClienteID,Fecha,Descripci�n)
VALUES (5,'2024-10-15 10:45:30', 'Reclamaci�n sobre factura incorrecta')
INSERT INTO ReclamacionesClientes(ClienteID,Fecha,Descripci�n)
VALUES (6,'2024-11-11 12:30:09', 'Reclamaci�n sobre factura incorrecta')
INSERT INTO ReclamacionesClientes(ClienteID,Fecha,Descripci�n)
VALUES (7,'2024-11-11 12:30:09', 'Reclamaci�n sobre encomienda en mal estado')
INSERT INTO ReclamacionesClientes(ClienteID,Fecha,Descripci�n)
VALUES (8,'2024-11-11 12:30:09', 'Reclamaci�n sobre encomienda en mal estado')
INSERT INTO ReclamacionesClientes(ClienteID,Fecha,Descripci�n)
VALUES (9,'2024-11-11 12:30:09', 'Reclamaci�n sobre encomienda en mal estado')
INSERT INTO ReclamacionesClientes(ClienteID,Fecha,Descripci�n)
VALUES (10,'2024-11-11 12:30:09', 'Reclamaci�n sobre encomienda en mal estado')
GO

select *
from ReclamacionesClientes

------------------------------------------------------------------------------------------------
--truncate table Pais
--Pais

INSERT INTO Pais(NombrePais)
VALUES('Argentina')
INSERT INTO Pais(NombrePais)
VALUES('Espa�a')
INSERT INTO Pais(NombrePais)
VALUES('Brasil')
INSERT INTO Pais(NombrePais)
VALUES('M�xico')
INSERT INTO Pais(NombrePais)
VALUES('M�xico')
INSERT INTO Pais(NombrePais)
VALUES('Espa�a')
INSERT INTO Pais(NombrePais)
VALUES('Brasil')
INSERT INTO Pais(NombrePais)
VALUES('M�xico')
INSERT INTO Pais(NombrePais)
VALUES('Argentina')
INSERT INTO Pais(NombrePais)
VALUES('Brasil')
GO
select *
from Pais

------------------------------------------------------------------------------------------------
--delete from Ciudad
--ciudad

INSERT INTO Ciudad(NombreCiudad)
VALUES('Buenos Aires')
INSERT INTO Ciudad(NombreCiudad)
VALUES('Madrid')
INSERT INTO Ciudad(NombreCiudad)
VALUES('S�o Paulo')
INSERT INTO Ciudad(NombreCiudad)
VALUES('Chihuahua')
INSERT INTO Ciudad(NombreCiudad)
VALUES('Ciudad de M�xico')
INSERT INTO Ciudad(NombreCiudad)
VALUES('Madrid')
INSERT INTO Ciudad(NombreCiudad)
VALUES('S�o Paulo')
INSERT INTO Ciudad(NombreCiudad)
VALUES('Ciudad de M�xico	')
INSERT INTO Ciudad(NombreCiudad)
VALUES('Buenos Aires')
INSERT INTO Ciudad(NombreCiudad)
VALUES('Porto Alegre')
GO
select *
from Ciudad

------------------------------------------------------------------------------------------------
--delete from Direcciones
--Direcciones

INSERT INTO Direcciones(Calle,Provincia,Ciudad,Pais,C�digoPostal)
VALUES ('Avenida Libertador 1500', 'Buenos Aires',1,1,'C1001AAG')
INSERT INTO Direcciones(Calle,Provincia,Ciudad,Pais,C�digoPostal)
VALUES ('Calle Gran V�a 45', 'Madrid',2,2,'28013')
INSERT INTO Direcciones(Calle,Provincia,Ciudad,Pais,C�digoPostal)
VALUES ('Rua das Palmeiras 500', 'S�o Paulo',3,3,'01000-000')
INSERT INTO Direcciones(Calle,Provincia,Ciudad,Pais,C�digoPostal)
VALUES ('Blvd. de los �lamos 128', 'Chihuahua',4,4,'31100')
INSERT INTO Direcciones(Calle,Provincia,Ciudad,Pais,C�digoPostal)
VALUES ('Paseo de la Reforma 1000', 'Ciudad de M�xico',5,5,'06500')
INSERT INTO Direcciones(Calle,Provincia,Ciudad,Pais,C�digoPostal)
VALUES ('Calle de Alcal� 120', 'Madrid',6,6, '28009')
INSERT INTO Direcciones(Calle,Provincia,Ciudad,Pais,C�digoPostal)
VALUES ('Avenida Paulista 500', 'S�o Paulo',7,7,'01310-000')
INSERT INTO Direcciones(Calle,Provincia,Ciudad,Pais,C�digoPostal)
VALUES ('Calle 9 de Julio 750', 'Buenos Aires',8,8,'C1088AAL')
INSERT INTO Direcciones(Calle,Provincia,Ciudad,Pais,C�digoPostal)
VALUES ('Rua do Mercado 24', 'Porto Alegre',9,9,'90010-002')
INSERT INTO Direcciones(Calle,Provincia,Ciudad,Pais,C�digoPostal)
VALUES ('Rua do Mercado 24', 'Porto Alegre',10,10,'90010-002')
GO
select *
from Direcciones

------------------------------------------------------------------------------------------------

--ContactosClientes

INSERT INTO ContactosClientes(ClienteID,NombreContacto)
VALUES (1,'Ana Fern�ndez')
INSERT INTO ContactosClientes(ClienteID,NombreContacto)
VALUES (2,'Luc�a Hern�ndez')
INSERT INTO ContactosClientes(ClienteID,NombreContacto)
VALUES (3,'Mar�a Mart�nez')
INSERT INTO ContactosClientes(ClienteID,NombreContacto)
VALUES (4,'Carlos Ram�rez')
INSERT INTO ContactosClientes(ClienteID,NombreContacto)
VALUES (5,'Luis G�mez')
INSERT INTO ContactosClientes(ClienteID,NombreContacto)
VALUES (6,'Luis	L�pez')
INSERT INTO ContactosClientes(ClienteID,NombreContacto)
VALUES (7,'Jos�	G�mez')
INSERT INTO ContactosClientes(ClienteID,NombreContacto)
VALUES (8,'Luis	Fern�ndez')
INSERT INTO ContactosClientes(ClienteID,NombreContacto)
VALUES (9,'Juan	G�mez')
INSERT INTO ContactosClientes(ClienteID,NombreContacto)
VALUES (10,'Jos� G�mez')
go
select *
from ContactosClientes


------------------------------------------------------------------------------------------------

--Facturas

INSERT INTO Facturas(ClienteID,MontoTotal,FechaEmisi�n)
VALUES (1,150.70,'2024-11-30 14:30:00')
INSERT INTO Facturas(ClienteID,MontoTotal,FechaEmisi�n)
VALUES (2,520.50,'2024-11-14 11:30:50')
INSERT INTO Facturas(ClienteID,MontoTotal,FechaEmisi�n)
VALUES (3,190.00,'2024-11-30 13:45:40')
INSERT INTO Facturas(ClienteID,MontoTotal,FechaEmisi�n)
VALUES (4,157.80,'2024-12-10 04:26:10')
INSERT INTO Facturas(ClienteID,MontoTotal,FechaEmisi�n)
VALUES (5,180.79,'2024-12-18 14:04:35')
INSERT INTO Facturas(ClienteID,MontoTotal,FechaEmisi�n)
VALUES (6,645.20,'2024-11-14 14:46:12')
INSERT INTO Facturas(ClienteID,MontoTotal,FechaEmisi�n)
VALUES (7,123.45,'2024-12-26 12:30:00')
INSERT INTO Facturas(ClienteID,MontoTotal,FechaEmisi�n)
VALUES (8,425.12,'2024-10-30 09:03:00')
INSERT INTO Facturas(ClienteID,MontoTotal,FechaEmisi�n)
VALUES (9,333.10,'2024-10-12 23:12:00')
INSERT INTO Facturas(ClienteID,MontoTotal,FechaEmisi�n)
VALUES (10,110.20,'2024-12-23 22:22:00')
GO
select *
from Facturas

------------------------------------------------------------------------------------------------

--DescuentosFactura

INSERT INTO DescuentosFactura(FacturaID, PorcentajeDescuento, MontoDescuento) 
VALUES (1, 10.00, 50.00)
INSERT INTO DescuentosFactura(FacturaID, PorcentajeDescuento, MontoDescuento) 
VALUES (2, 15.00, 75.00)
INSERT INTO DescuentosFactura(FacturaID, PorcentajeDescuento, MontoDescuento) 
VALUES (3, 5.00, 25.00)
INSERT INTO DescuentosFactura(FacturaID, PorcentajeDescuento, MontoDescuento) 
VALUES (4, 20.00, 100.00)
INSERT INTO DescuentosFactura(FacturaID, PorcentajeDescuento, MontoDescuento) 
VALUES (5, 12.50, 62.50)
INSERT INTO DescuentosFactura(FacturaID, PorcentajeDescuento, MontoDescuento) 
VALUES (6, 7.50, 37.50)
INSERT INTO DescuentosFactura(FacturaID, PorcentajeDescuento, MontoDescuento) 
VALUES (7, 8.00, 40.00)
INSERT INTO DescuentosFactura(FacturaID, PorcentajeDescuento, MontoDescuento) 
VALUES (8, 18.00, 90.00)
INSERT INTO DescuentosFactura(FacturaID, PorcentajeDescuento, MontoDescuento) 
VALUES (9, 25.00, 125.00)
INSERT INTO DescuentosFactura(FacturaID, PorcentajeDescuento, MontoDescuento) 
VALUES (10, 30.00, 150.00)
GO
select *
from DescuentosFactura

------------------------------------------------------------------------------------------------

--M�todosPago

INSERT INTO M�todosPago(Descripci�n) 
VALUES ('Efectivo')
INSERT INTO M�todosPago(Descripci�n) 
VALUES ('Tarjeta de Cr�dito')
INSERT INTO M�todosPago(Descripci�n) 
VALUES ('Tarjeta de D�bito')
INSERT INTO M�todosPago(Descripci�n) 
VALUES ('Transferencia Bancaria')
INSERT INTO M�todosPago(Descripci�n) 
VALUES ('Pago contra Entrega')
INSERT INTO M�todosPago(Descripci�n) 
VALUES ('Billetera Electr�nica')
INSERT INTO M�todosPago(Descripci�n) 
VALUES ('Pago en L�nea')
INSERT INTO M�todosPago(Descripci�n) 
VALUES ('Cheque')
INSERT INTO M�todosPago(Descripci�n) 
VALUES ('Dep�sito Bancario')
INSERT INTO M�todosPago(Descripci�n) 
VALUES ('Cr�dito en Cuenta Corriente')
GO
select *
from M�todosPago

------------------------------------------------------------------------------------------------

--Pagos
INSERT INTO Pagos(FacturaID, Monto, FechaPago, M�todoPago) 
VALUES(1, 100.50, '2024-12-25 10:30:00', 1)
INSERT INTO Pagos(FacturaID, Monto, FechaPago, M�todoPago)
VALUES(2, 250.75, '2024-12-12 12:00:00', 2)
INSERT INTO Pagos(FacturaID, Monto, FechaPago, M�todoPago) 
VALUES(3, 300.00, '2024-12-17 14:45:00', 3)
INSERT INTO Pagos(FacturaID, Monto, FechaPago, M�todoPago) 
VALUES(4, 150.00, '2024-12-19 16:00:00', 4)
INSERT INTO Pagos(FacturaID, Monto, FechaPago, M�todoPago) 
VALUES(5, 500.25, '2024-12-29 17:30:00', 5)
INSERT INTO Pagos(FacturaID, Monto, FechaPago, M�todoPago) 
VALUES(6, 75.50, '2024-12-30 18:15:00', 6)
INSERT INTO Pagos(FacturaID, Monto, FechaPago, M�todoPago) 
VALUES(7, 200.00, '2024-12-10 19:45:00', 7)
INSERT INTO Pagos(FacturaID, Monto, FechaPago, M�todoPago) 
VALUES(8, 450.75, '2024-12-20 20:00:00', 8)
INSERT INTO Pagos(FacturaID, Monto, FechaPago, M�todoPago) 
VALUES(9, 120.00, '2024-12-02 21:30:00', 9)
INSERT INTO Pagos(FacturaID, Monto, FechaPago, M�todoPago) 
VALUES(10, 600.50, '2024-12-01 22:15:00', 10)
go
select *
from Pagos

------------------------------------------------------------------------------------------------

--ImpuestosFactura

INSERT INTO ImpuestosFactura(FacturaID, PorcentajeImpuesto, MontoImpuesto) 
VALUES(1, 18.00, 90.00)
INSERT INTO ImpuestosFactura(FacturaID, PorcentajeImpuesto, MontoImpuesto) 
VALUES(2, 10.00, 50.00)
INSERT INTO ImpuestosFactura(FacturaID, PorcentajeImpuesto, MontoImpuesto) 
VALUES(3, 5.00, 25.00)
INSERT INTO ImpuestosFactura(FacturaID, PorcentajeImpuesto, MontoImpuesto) 
VALUES(4, 12.00, 60.00)
INSERT INTO ImpuestosFactura(FacturaID, PorcentajeImpuesto, MontoImpuesto) 
VALUES(5, 20.00, 100.00)
INSERT INTO ImpuestosFactura(FacturaID, PorcentajeImpuesto, MontoImpuesto) 
VALUES(6, 15.00, 75.00)
INSERT INTO ImpuestosFactura(FacturaID, PorcentajeImpuesto, MontoImpuesto) 
VALUES(7, 8.00, 40.00)
INSERT INTO ImpuestosFactura(FacturaID, PorcentajeImpuesto, MontoImpuesto) 
VALUES(8, 25.00, 125.00)
INSERT INTO ImpuestosFactura(FacturaID, PorcentajeImpuesto, MontoImpuesto) 
VALUES(9, 18.00, 180.00)
INSERT INTO ImpuestosFactura(FacturaID, PorcentajeImpuesto, MontoImpuesto) 
VALUES(10, 7.50, 37.50)
go 
select *
from ImpuestosFactura

------------------------------------------------------------------------------------------------

--Productos

INSERT INTO Productos(Nombre, Descripci�n, Peso, Dimensiones) 
VALUES('Laptop', 'Computadora port�til de �ltima generaci�n', 1501.50, '35x25x2 cm')
INSERT INTO Productos(Nombre, Descripci�n, Peso, Dimensiones) 
VALUES('Tel�fono', 'Smartphone con pantalla AMOLED', 600.20, '15x7x0.8 cm')
INSERT INTO Productos(Nombre, Descripci�n, Peso, Dimensiones) 
VALUES('TV LED', 'Televisor LED de 55 pulgadas', 109.00, '123x71x10 cm')
INSERT INTO Productos(Nombre, Descripci�n, Peso, Dimensiones) 
VALUES('Refrigerador', 'Refrigerador de dos puertas con dispensador de agua', 80.00, '180x70x70 cm')
INSERT INTO Productos(Nombre, Descripci�n, Peso, Dimensiones) 
VALUES('Auriculares', 'Auriculares inal�mbricos con cancelaci�n de ruido', 0.25, '15x15x5 cm')
INSERT INTO Productos(Nombre, Descripci�n, Peso, Dimensiones) 
VALUES('Mouse', 'Mouse �ptico con conexi�n Bluetooth', 80.10, '10x6x4 cm')
INSERT INTO Productos(Nombre, Descripci�n, Peso, Dimensiones) 
VALUES('Impresora', 'Impresora multifuncional de alta velocidad', 68.00, '45x35x20 cm')
INSERT INTO Productos(Nombre, Descripci�n, Peso, Dimensiones) 
VALUES('Monitor', 'Monitor LED de 24 pulgadas', 34.50, '55x40x10 cm')
INSERT INTO Productos(Nombre, Descripci�n, Peso, Dimensiones) 
VALUES('C�mara', 'C�mara digital profesional con lente intercambiable', 144.80, '20x15x10 cm')
INSERT INTO Productos(Nombre, Descripci�n, Peso, Dimensiones) 
VALUES('Parlante', 'Parlante port�til resistente al agua', 80.00, '25x10x10 cm')
go
select *
from Productos

------------------------------------------------------------------------------------------------

--DetallesFactura

INSERT INTO DetallesFactura(FacturaID, ProductoID, Cantidad, PrecioUnitario, Subtotal) 
VALUES(1, 1, 2, 50.00, 100.00)
INSERT INTO DetallesFactura(FacturaID, ProductoID, Cantidad, PrecioUnitario, Subtotal) 
VALUES(1, 2, 1, 120.50, 120.50)
INSERT INTO DetallesFactura(FacturaID, ProductoID, Cantidad, PrecioUnitario, Subtotal) 
VALUES(2, 3, 3, 25.00, 75.00)
INSERT INTO DetallesFactura(FacturaID, ProductoID, Cantidad, PrecioUnitario, Subtotal) 
VALUES(2, 4, 1, 500.00, 500.00)
INSERT INTO DetallesFactura(FacturaID, ProductoID, Cantidad, PrecioUnitario, Subtotal) 
VALUES(3, 5, 5, 15.75, 78.75)
INSERT INTO DetallesFactura(FacturaID, ProductoID, Cantidad, PrecioUnitario, Subtotal) 
VALUES(3, 6, 2, 300.00, 600.00)
INSERT INTO DetallesFactura(FacturaID, ProductoID, Cantidad, PrecioUnitario, Subtotal) 
VALUES(4, 7, 1, 1000.00, 1000.00)
INSERT INTO DetallesFactura(FacturaID, ProductoID, Cantidad, PrecioUnitario, Subtotal) 
VALUES(4, 8, 4, 75.25, 301.00)
INSERT INTO DetallesFactura(FacturaID, ProductoID, Cantidad, PrecioUnitario, Subtotal) 
VALUES(5, 9, 3, 45.00, 135.00)
INSERT INTO DetallesFactura(FacturaID, ProductoID, Cantidad, PrecioUnitario, Subtotal) 
VALUES(5, 10, 2, 85.50, 171.00)
go
select *
from DetallesFactura

------------------------------------------------------------------------------------------------

--Almacenes

INSERT INTO Almacenes(Nombre, Ubicaci�n, Capacidad) 
VALUES('Almac�n Central', 'Lima, Per�', 5000.50)
INSERT INTO Almacenes(Nombre, Ubicaci�n, Capacidad) 
VALUES('Almac�n Norte', 'Trujillo, Per�', 3000.00)
INSERT INTO Almacenes(Nombre, Ubicaci�n, Capacidad) 
VALUES('Almac�n Sur', 'Arequipa, Per�', 4500.25)
INSERT INTO Almacenes(Nombre, Ubicaci�n, Capacidad) 
VALUES('Almac�n Este', 'Cusco, Per�', 2500.00)
INSERT INTO Almacenes(Nombre, Ubicaci�n, Capacidad) 
VALUES('Almac�n Oeste', 'Chiclayo, Per�', 3200.75)
INSERT INTO Almacenes(Nombre, Ubicaci�n, Capacidad) 
VALUES('Dep�sito Secundario', 'Piura, Per�', 1500.00)
INSERT INTO Almacenes(Nombre, Ubicaci�n, Capacidad) 
VALUES('Centro de Distribuci�n', 'Ica, Per�', 6000.00)
INSERT INTO Almacenes(Nombre, Ubicaci�n, Capacidad) 
VALUES('Almac�n de Productos Perecibles', 'Huancayo, Per�', 2000.00)
INSERT INTO Almacenes(Nombre, Ubicaci�n, Capacidad) 
VALUES('Dep�sito Temporal', 'Tacna, Per�', 1000.50)
INSERT INTO Almacenes(Nombre, Ubicaci�n, Capacidad) 
VALUES('Almac�n Principal', 'Pucallpa, Per�', 7000.00)
go
select *
from Almacenes

------------------------------------------------------------------------------------------------

--InventarioAlmac�n

INSERT INTO InventarioAlmac�n(Almac�nID, ProductoID, Cantidad) 
VALUES(1, 1, 500)
INSERT INTO InventarioAlmac�n(Almac�nID, ProductoID, Cantidad) 
VALUES(2, 2, 200)
INSERT INTO InventarioAlmac�n(Almac�nID, ProductoID, Cantidad) 
VALUES(3, 3, 300)
INSERT INTO InventarioAlmac�n(Almac�nID, ProductoID, Cantidad) 
VALUES(4, 4, 150)
INSERT INTO InventarioAlmac�n(Almac�nID, ProductoID, Cantidad) 
VALUES(5, 5, 100)
INSERT INTO InventarioAlmac�n(Almac�nID, ProductoID, Cantidad) 
VALUES(6, 6, 250)
INSERT INTO InventarioAlmac�n(Almac�nID, ProductoID, Cantidad) 
VALUES(7, 7, 400)
INSERT INTO InventarioAlmac�n(Almac�nID, ProductoID, Cantidad) 
VALUES(8, 8, 350)
INSERT INTO InventarioAlmac�n(Almac�nID, ProductoID, Cantidad) 
VALUES(9, 9, 600)
INSERT INTO InventarioAlmac�n(Almac�nID, ProductoID, Cantidad) 
VALUES(10,10, 750)
go
select *
from InventarioAlmac�n


------------------------------------------------------------------------------------------------

--HistorialAlmacenes

INSERT INTO HistorialAlmacenes(Almac�nID, Evento, Fecha) 
VALUES(1, 'Ingreso de 500 unidades del producto 101', '2024-11-01 10:00:00')
INSERT INTO HistorialAlmacenes(Almac�nID, Evento, Fecha) 
VALUES(2, 'Salida de 200 unidades del producto 102', '2024-11-02 14:30:00')
INSERT INTO HistorialAlmacenes(Almac�nID, Evento, Fecha) 
VALUES(3, 'Inventario ajustado por auditor�a', '2024-11-03 09:00:00')
INSERT INTO HistorialAlmacenes(Almac�nID, Evento, Fecha) 
VALUES(4, 'Ingreso de 300 unidades del producto 103', '2024-11-03 11:15:00')
INSERT INTO HistorialAlmacenes(Almac�nID, Evento, Fecha) 
VALUES(5, 'Reubicaci�n de 100 unidades del producto 105', '2024-11-04 08:45:00')
INSERT INTO HistorialAlmacenes(Almac�nID, Evento, Fecha) 
VALUES(6, 'Reporte de p�rdida de 50 unidades del producto 106', '2024-11-04 15:20:00')
INSERT INTO HistorialAlmacenes(Almac�nID, Evento, Fecha) 
VALUES(7, 'Recepci�n de 400 unidades del producto 107', '2024-11-05 13:30:00')
INSERT INTO HistorialAlmacenes(Almac�nID, Evento, Fecha) 
VALUES(8, 'Salida programada de 350 unidades del producto 108', '2024-11-05 16:00:00')
INSERT INTO HistorialAlmacenes(Almac�nID, Evento, Fecha) 
VALUES(9, 'Mantenimiento del sistema de almacenamiento', '2024-11-06 09:30:00')
INSERT INTO HistorialAlmacenes(Almac�nID, Evento, Fecha) 
VALUES(10, 'Ingreso de 750 unidades del producto 110', '2024-11-06 11:45:00')
go
select *
from HistorialAlmacenes














