-- Clientes

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

INSERT INTO HistorialClientes(ClienteID,Fecha,Descripción)
VALUES (1,'2024-11-22 09:40:20', 'Consulta sobre nuevos productos')
INSERT INTO HistorialClientes(ClienteID,Fecha,Descripción)
VALUES (2,'2024-10-15 10:45:30', 'Reclamación sobre factura incorrecta')
INSERT INTO HistorialClientes(ClienteID,Fecha,Descripción)
VALUES (3,'2024-10-19 15:10:45', 'Pedido de información sobre entrega')
INSERT INTO HistorialClientes(ClienteID,Fecha,Descripción)
VALUES (4,'2024-09-30 14:59:12', 'Solicitud de cambio de dirección de envío')
INSERT INTO HistorialClientes(ClienteID,Fecha,Descripción)
VALUES (5,'2024-11-27 17:30:00', 'Confirmación de recepción de producto')
INSERT INTO HistorialClientes(ClienteID,Fecha,Descripción)
VALUES (6,'2024-09-12 20:20:58', 'Confirmación de recepción de producto')
INSERT INTO HistorialClientes(ClienteID,Fecha,Descripción)
VALUES (7,'2024-09-22 02:41:20', 'Consulta sobre política de devoluciones')
INSERT INTO HistorialClientes(ClienteID,Fecha,Descripción)
VALUES (8,'2024-10-20 16:55:15', 'Sugerencia de mejora en el servicio')
INSERT INTO HistorialClientes(ClienteID,Fecha,Descripción)
VALUES (9,'2024-11-16 18:40:01', 'Sugerencia de mejora en el servicio')
INSERT INTO HistorialClientes(ClienteID,Fecha,Descripción)
VALUES (10,'2024-11-11 12:30:09', 'Confirmación de recepción de producto')
GO
Select *
from HistorialClientes

------------------------------------------------------------------------------------------------

--ReclamacionesClientes

INSERT INTO ReclamacionesClientes(ClienteID,Fecha,Descripción)
VALUES (1,'2024-11-11 12:30:09', 'Reclamación sobre factura incorrecta')
INSERT INTO ReclamacionesClientes(ClienteID,Fecha,Descripción)
VALUES (2,'2024-09-22 02:41:20', 'Reclamación sobre factura incorrecta')
INSERT INTO ReclamacionesClientes(ClienteID,Fecha,Descripción)
VALUES (3,'2024-10-15 10:45:30', 'Reclamación sobre encomienda en mal estado')
INSERT INTO ReclamacionesClientes(ClienteID,Fecha,Descripción)
VALUES (4,'2024-11-11 12:30:09', 'Reclamación sobre encomienda en mal estado')
INSERT INTO ReclamacionesClientes(ClienteID,Fecha,Descripción)
VALUES (5,'2024-10-15 10:45:30', 'Reclamación sobre factura incorrecta')
INSERT INTO ReclamacionesClientes(ClienteID,Fecha,Descripción)
VALUES (6,'2024-11-11 12:30:09', 'Reclamación sobre factura incorrecta')
INSERT INTO ReclamacionesClientes(ClienteID,Fecha,Descripción)
VALUES (7,'2024-11-11 12:30:09', 'Reclamación sobre encomienda en mal estado')
INSERT INTO ReclamacionesClientes(ClienteID,Fecha,Descripción)
VALUES (8,'2024-11-11 12:30:09', 'Reclamación sobre encomienda en mal estado')
INSERT INTO ReclamacionesClientes(ClienteID,Fecha,Descripción)
VALUES (9,'2024-11-11 12:30:09', 'Reclamación sobre encomienda en mal estado')
INSERT INTO ReclamacionesClientes(ClienteID,Fecha,Descripción)
VALUES (10,'2024-11-11 12:30:09', 'Reclamación sobre encomienda en mal estado')
GO

select *
from ReclamacionesClientes

------------------------------------------------------------------------------------------------
--truncate table Pais
--Pais

INSERT INTO Pais(NombrePais)
VALUES('Argentina')
INSERT INTO Pais(NombrePais)
VALUES('España')
INSERT INTO Pais(NombrePais)
VALUES('Brasil')
INSERT INTO Pais(NombrePais)
VALUES('México')
INSERT INTO Pais(NombrePais)
VALUES('México')
INSERT INTO Pais(NombrePais)
VALUES('España')
INSERT INTO Pais(NombrePais)
VALUES('Brasil')
INSERT INTO Pais(NombrePais)
VALUES('México')
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
VALUES('São Paulo')
INSERT INTO Ciudad(NombreCiudad)
VALUES('Chihuahua')
INSERT INTO Ciudad(NombreCiudad)
VALUES('Ciudad de México')
INSERT INTO Ciudad(NombreCiudad)
VALUES('Madrid')
INSERT INTO Ciudad(NombreCiudad)
VALUES('São Paulo')
INSERT INTO Ciudad(NombreCiudad)
VALUES('Ciudad de México	')
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

INSERT INTO Direcciones(Calle,Provincia,Ciudad,Pais,CódigoPostal)
VALUES ('Avenida Libertador 1500', 'Buenos Aires',1,1,'C1001AAG')
INSERT INTO Direcciones(Calle,Provincia,Ciudad,Pais,CódigoPostal)
VALUES ('Calle Gran Vía 45', 'Madrid',2,2,'28013')
INSERT INTO Direcciones(Calle,Provincia,Ciudad,Pais,CódigoPostal)
VALUES ('Rua das Palmeiras 500', 'São Paulo',3,3,'01000-000')
INSERT INTO Direcciones(Calle,Provincia,Ciudad,Pais,CódigoPostal)
VALUES ('Blvd. de los Álamos 128', 'Chihuahua',4,4,'31100')
INSERT INTO Direcciones(Calle,Provincia,Ciudad,Pais,CódigoPostal)
VALUES ('Paseo de la Reforma 1000', 'Ciudad de México',5,5,'06500')
INSERT INTO Direcciones(Calle,Provincia,Ciudad,Pais,CódigoPostal)
VALUES ('Calle de Alcalá 120', 'Madrid',6,6, '28009')
INSERT INTO Direcciones(Calle,Provincia,Ciudad,Pais,CódigoPostal)
VALUES ('Avenida Paulista 500', 'São Paulo',7,7,'01310-000')
INSERT INTO Direcciones(Calle,Provincia,Ciudad,Pais,CódigoPostal)
VALUES ('Calle 9 de Julio 750', 'Buenos Aires',8,8,'C1088AAL')
INSERT INTO Direcciones(Calle,Provincia,Ciudad,Pais,CódigoPostal)
VALUES ('Rua do Mercado 24', 'Porto Alegre',9,9,'90010-002')
INSERT INTO Direcciones(Calle,Provincia,Ciudad,Pais,CódigoPostal)
VALUES ('Rua do Mercado 24', 'Porto Alegre',10,10,'90010-002')
GO
select *
from Direcciones

------------------------------------------------------------------------------------------------

--ContactosClientes

INSERT INTO ContactosClientes(ClienteID,NombreContacto)
VALUES (1,'Ana Fernández')
INSERT INTO ContactosClientes(ClienteID,NombreContacto)
VALUES (2,'Lucía Hernández')
INSERT INTO ContactosClientes(ClienteID,NombreContacto)
VALUES (3,'María Martínez')
INSERT INTO ContactosClientes(ClienteID,NombreContacto)
VALUES (4,'Carlos Ramírez')
INSERT INTO ContactosClientes(ClienteID,NombreContacto)
VALUES (5,'Luis Gómez')
INSERT INTO ContactosClientes(ClienteID,NombreContacto)
VALUES (6,'Luis	López')
INSERT INTO ContactosClientes(ClienteID,NombreContacto)
VALUES (7,'José	Gómez')
INSERT INTO ContactosClientes(ClienteID,NombreContacto)
VALUES (8,'Luis	Fernández')
INSERT INTO ContactosClientes(ClienteID,NombreContacto)
VALUES (9,'Juan	Gómez')
INSERT INTO ContactosClientes(ClienteID,NombreContacto)
VALUES (10,'José Gómez')
go
select *
from ContactosClientes


------------------------------------------------------------------------------------------------

--Facturas

INSERT INTO Facturas(ClienteID,MontoTotal,FechaEmisión)
VALUES (1,150.70,'2024-11-30 14:30:00')
INSERT INTO Facturas(ClienteID,MontoTotal,FechaEmisión)
VALUES (2,520.50,'2024-11-14 11:30:50')
INSERT INTO Facturas(ClienteID,MontoTotal,FechaEmisión)
VALUES (3,190.00,'2024-11-30 13:45:40')
INSERT INTO Facturas(ClienteID,MontoTotal,FechaEmisión)
VALUES (4,157.80,'2024-12-10 04:26:10')
INSERT INTO Facturas(ClienteID,MontoTotal,FechaEmisión)
VALUES (5,180.79,'2024-12-18 14:04:35')
INSERT INTO Facturas(ClienteID,MontoTotal,FechaEmisión)
VALUES (6,645.20,'2024-11-14 14:46:12')
INSERT INTO Facturas(ClienteID,MontoTotal,FechaEmisión)
VALUES (7,123.45,'2024-12-26 12:30:00')
INSERT INTO Facturas(ClienteID,MontoTotal,FechaEmisión)
VALUES (8,425.12,'2024-10-30 09:03:00')
INSERT INTO Facturas(ClienteID,MontoTotal,FechaEmisión)
VALUES (9,333.10,'2024-10-12 23:12:00')
INSERT INTO Facturas(ClienteID,MontoTotal,FechaEmisión)
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

--MétodosPago

INSERT INTO MétodosPago(Descripción) 
VALUES ('Efectivo')
INSERT INTO MétodosPago(Descripción) 
VALUES ('Tarjeta de Crédito')
INSERT INTO MétodosPago(Descripción) 
VALUES ('Tarjeta de Débito')
INSERT INTO MétodosPago(Descripción) 
VALUES ('Transferencia Bancaria')
INSERT INTO MétodosPago(Descripción) 
VALUES ('Pago contra Entrega')
INSERT INTO MétodosPago(Descripción) 
VALUES ('Billetera Electrónica')
INSERT INTO MétodosPago(Descripción) 
VALUES ('Pago en Línea')
INSERT INTO MétodosPago(Descripción) 
VALUES ('Cheque')
INSERT INTO MétodosPago(Descripción) 
VALUES ('Depósito Bancario')
INSERT INTO MétodosPago(Descripción) 
VALUES ('Crédito en Cuenta Corriente')
GO
select *
from MétodosPago

------------------------------------------------------------------------------------------------

--Pagos
INSERT INTO Pagos(FacturaID, Monto, FechaPago, MétodoPago) 
VALUES(1, 100.50, '2024-12-25 10:30:00', 1)
INSERT INTO Pagos(FacturaID, Monto, FechaPago, MétodoPago)
VALUES(2, 250.75, '2024-12-12 12:00:00', 2)
INSERT INTO Pagos(FacturaID, Monto, FechaPago, MétodoPago) 
VALUES(3, 300.00, '2024-12-17 14:45:00', 3)
INSERT INTO Pagos(FacturaID, Monto, FechaPago, MétodoPago) 
VALUES(4, 150.00, '2024-12-19 16:00:00', 4)
INSERT INTO Pagos(FacturaID, Monto, FechaPago, MétodoPago) 
VALUES(5, 500.25, '2024-12-29 17:30:00', 5)
INSERT INTO Pagos(FacturaID, Monto, FechaPago, MétodoPago) 
VALUES(6, 75.50, '2024-12-30 18:15:00', 6)
INSERT INTO Pagos(FacturaID, Monto, FechaPago, MétodoPago) 
VALUES(7, 200.00, '2024-12-10 19:45:00', 7)
INSERT INTO Pagos(FacturaID, Monto, FechaPago, MétodoPago) 
VALUES(8, 450.75, '2024-12-20 20:00:00', 8)
INSERT INTO Pagos(FacturaID, Monto, FechaPago, MétodoPago) 
VALUES(9, 120.00, '2024-12-02 21:30:00', 9)
INSERT INTO Pagos(FacturaID, Monto, FechaPago, MétodoPago) 
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

INSERT INTO Productos(Nombre, Descripción, Peso, Dimensiones) 
VALUES('Laptop', 'Computadora portátil de última generación', 1501.50, '35x25x2 cm')
INSERT INTO Productos(Nombre, Descripción, Peso, Dimensiones) 
VALUES('Teléfono', 'Smartphone con pantalla AMOLED', 600.20, '15x7x0.8 cm')
INSERT INTO Productos(Nombre, Descripción, Peso, Dimensiones) 
VALUES('TV LED', 'Televisor LED de 55 pulgadas', 109.00, '123x71x10 cm')
INSERT INTO Productos(Nombre, Descripción, Peso, Dimensiones) 
VALUES('Refrigerador', 'Refrigerador de dos puertas con dispensador de agua', 80.00, '180x70x70 cm')
INSERT INTO Productos(Nombre, Descripción, Peso, Dimensiones) 
VALUES('Auriculares', 'Auriculares inalámbricos con cancelación de ruido', 0.25, '15x15x5 cm')
INSERT INTO Productos(Nombre, Descripción, Peso, Dimensiones) 
VALUES('Mouse', 'Mouse óptico con conexión Bluetooth', 80.10, '10x6x4 cm')
INSERT INTO Productos(Nombre, Descripción, Peso, Dimensiones) 
VALUES('Impresora', 'Impresora multifuncional de alta velocidad', 68.00, '45x35x20 cm')
INSERT INTO Productos(Nombre, Descripción, Peso, Dimensiones) 
VALUES('Monitor', 'Monitor LED de 24 pulgadas', 34.50, '55x40x10 cm')
INSERT INTO Productos(Nombre, Descripción, Peso, Dimensiones) 
VALUES('Cámara', 'Cámara digital profesional con lente intercambiable', 144.80, '20x15x10 cm')
INSERT INTO Productos(Nombre, Descripción, Peso, Dimensiones) 
VALUES('Parlante', 'Parlante portátil resistente al agua', 80.00, '25x10x10 cm')
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

INSERT INTO Almacenes(Nombre, Ubicación, Capacidad) 
VALUES('Almacén Central', 'Lima, Perú', 5000.50)
INSERT INTO Almacenes(Nombre, Ubicación, Capacidad) 
VALUES('Almacén Norte', 'Trujillo, Perú', 3000.00)
INSERT INTO Almacenes(Nombre, Ubicación, Capacidad) 
VALUES('Almacén Sur', 'Arequipa, Perú', 4500.25)
INSERT INTO Almacenes(Nombre, Ubicación, Capacidad) 
VALUES('Almacén Este', 'Cusco, Perú', 2500.00)
INSERT INTO Almacenes(Nombre, Ubicación, Capacidad) 
VALUES('Almacén Oeste', 'Chiclayo, Perú', 3200.75)
INSERT INTO Almacenes(Nombre, Ubicación, Capacidad) 
VALUES('Depósito Secundario', 'Piura, Perú', 1500.00)
INSERT INTO Almacenes(Nombre, Ubicación, Capacidad) 
VALUES('Centro de Distribución', 'Ica, Perú', 6000.00)
INSERT INTO Almacenes(Nombre, Ubicación, Capacidad) 
VALUES('Almacén de Productos Perecibles', 'Huancayo, Perú', 2000.00)
INSERT INTO Almacenes(Nombre, Ubicación, Capacidad) 
VALUES('Depósito Temporal', 'Tacna, Perú', 1000.50)
INSERT INTO Almacenes(Nombre, Ubicación, Capacidad) 
VALUES('Almacén Principal', 'Pucallpa, Perú', 7000.00)
go
select *
from Almacenes

------------------------------------------------------------------------------------------------

--InventarioAlmacén

INSERT INTO InventarioAlmacén(AlmacénID, ProductoID, Cantidad) 
VALUES(1, 1, 500)
INSERT INTO InventarioAlmacén(AlmacénID, ProductoID, Cantidad) 
VALUES(2, 2, 200)
INSERT INTO InventarioAlmacén(AlmacénID, ProductoID, Cantidad) 
VALUES(3, 3, 300)
INSERT INTO InventarioAlmacén(AlmacénID, ProductoID, Cantidad) 
VALUES(4, 4, 150)
INSERT INTO InventarioAlmacén(AlmacénID, ProductoID, Cantidad) 
VALUES(5, 5, 100)
INSERT INTO InventarioAlmacén(AlmacénID, ProductoID, Cantidad) 
VALUES(6, 6, 250)
INSERT INTO InventarioAlmacén(AlmacénID, ProductoID, Cantidad) 
VALUES(7, 7, 400)
INSERT INTO InventarioAlmacén(AlmacénID, ProductoID, Cantidad) 
VALUES(8, 8, 350)
INSERT INTO InventarioAlmacén(AlmacénID, ProductoID, Cantidad) 
VALUES(9, 9, 600)
INSERT INTO InventarioAlmacén(AlmacénID, ProductoID, Cantidad) 
VALUES(10,10, 750)
go
select *
from InventarioAlmacén


------------------------------------------------------------------------------------------------

--HistorialAlmacenes

INSERT INTO HistorialAlmacenes(AlmacénID, Evento, Fecha) 
VALUES(1, 'Ingreso de 500 unidades del producto 101', '2024-11-01 10:00:00')
INSERT INTO HistorialAlmacenes(AlmacénID, Evento, Fecha) 
VALUES(2, 'Salida de 200 unidades del producto 102', '2024-11-02 14:30:00')
INSERT INTO HistorialAlmacenes(AlmacénID, Evento, Fecha) 
VALUES(3, 'Inventario ajustado por auditoría', '2024-11-03 09:00:00')
INSERT INTO HistorialAlmacenes(AlmacénID, Evento, Fecha) 
VALUES(4, 'Ingreso de 300 unidades del producto 103', '2024-11-03 11:15:00')
INSERT INTO HistorialAlmacenes(AlmacénID, Evento, Fecha) 
VALUES(5, 'Reubicación de 100 unidades del producto 105', '2024-11-04 08:45:00')
INSERT INTO HistorialAlmacenes(AlmacénID, Evento, Fecha) 
VALUES(6, 'Reporte de pérdida de 50 unidades del producto 106', '2024-11-04 15:20:00')
INSERT INTO HistorialAlmacenes(AlmacénID, Evento, Fecha) 
VALUES(7, 'Recepción de 400 unidades del producto 107', '2024-11-05 13:30:00')
INSERT INTO HistorialAlmacenes(AlmacénID, Evento, Fecha) 
VALUES(8, 'Salida programada de 350 unidades del producto 108', '2024-11-05 16:00:00')
INSERT INTO HistorialAlmacenes(AlmacénID, Evento, Fecha) 
VALUES(9, 'Mantenimiento del sistema de almacenamiento', '2024-11-06 09:30:00')
INSERT INTO HistorialAlmacenes(AlmacénID, Evento, Fecha) 
VALUES(10, 'Ingreso de 750 unidades del producto 110', '2024-11-06 11:45:00')
go
select *
from HistorialAlmacenes














