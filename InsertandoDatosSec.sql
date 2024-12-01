USE BD_EncomiendaV3
GO
BEGIN TRANSACTION;
BEGIN TRY
/*TiposDeVeh�culos*/
INSERT INTO TiposDeVeh�culos (Descripci�n)
VALUES 
('Cami�n de carga pesada'),
('Camioneta de reparto'),
('Motocicleta para entregas r�pidas'),
('Cami�n refrigerado'),
('Camioneta para largas distancias'),
('Cami�n con remolque'),
('Furg�n'),
('Motocarro'),
('Cami�n cisterna'),
('Camioneta todoterreno');
/*HistorialVehiculo*/
INSERT INTO HistorialDeVeh�culos (Veh�culoID, Evento, Fecha)
VALUES 
(1, 'Asignado a Ruta Lima-Arequipa', '2023-01-01'),
(2, 'Asignado a Ruta Lima-Cusco', '2023-01-15'),
(3, 'Revisi�n t�cnica aprobada', '2023-02-10'),
(4, 'Reparaci�n de motor completada', '2023-03-20'),
(5, 'Asignado a Ruta Lima-Piura', '2023-03-25'),
(6, 'Cambio de aceite realizado', '2023-04-10'),
(7, 'Mantenimiento preventivo completado', '2023-05-15'),
(8, 'Asignado a Ruta Lima-Trujillo', '2023-06-05'),
(9, 'Revisi�n t�cnica programada', '2023-07-01'),
(10, 'Veh�culo en mantenimiento', '2023-08-15');
/*Cargo*/
INSERT INTO Cargos (Descripci�n)
VALUES
('Conductor, encargado de conducir los veh�culos para el traslado de encomiendas.'),
('Supervisor de Ruta, responsable de la supervisi�n de rutas y conductores.'),
('Mec�nico, encargado de realizar el mantenimiento y reparaciones de veh�culos.'),
('Administrador, encargado de gestionar las operaciones administrativas de la sucursal.'),
('Asistente Administrativo, apoya en la gesti�n de documentos y tareas administrativas.'),
('Gerente de Sucursal, responsable de la gesti�n general de la sucursal.'),
('Almacenista responsable, de gestionar la recepci�n y almacenamiento de las encomiendas.'),
('Operador Log�stico, encargado de la planificaci�n y coordinaci�n de las entregas.'),
('Atenci�n al Cliente, responsable de recibir y resolver las solicitudes de los clientes.'),
('Jefe de Operaciones, encargado de coordinar las operaciones de log�stica y distribuci�n.');

/*Empleados*/
INSERT INTO Empleados (Nombre, Apellido, CargoID,FechaContrataci�n)
VALUES 
('Juan', 'P�rez', 1,'2020-01-15'),
('Ana', 'L�pez', 2, '2019-03-22'),
('Carlos', 'G�mez', 1, '2021-07-10'),
('Mar�a', 'Fern�ndez', 8, '2022-04-01'),
('Jos�', 'Mart�nez', 1, '2018-06-25'),
('Luis', 'Rodr�guez', 1, '2020-11-19'),
('Sof�a', 'Garc�a', 4, '2017-09-13'),
('David', 'Hern�ndez',1, '2023-02-05'),
('Laura', 'Mendoza', 10, '2016-12-30'),
('Ricardo', 'Torres',1, '2019-05-20'	);

/*HistorialEmpleados*/
INSERT INTO HistorialEmpleados (EmpleadoID, Fecha, Evento)
VALUES
(1, '2021-01-15','Empleado contratado como conductor para Sucursal Lima.'),
(2, '2021-06-01','Empleado contratado como conductor para Sucursal Arequipa.'),
(3, '2020-11-20','Empleado contratado como administrador para Sucursal Lima.'),
(4, '2022-02-10','Empleado contratado como supervisor de ruta en Sucursal Trujillo.'),
(5, '2019-09-15','Empleado contratado como mec�nico en Sucursal Lima.'),
(6, '2021-03-18','Empleado contratado como conductor para Sucursal Piura.'),
(7, '2022-07-01', 'Empleado contratado como asistente administrativo en Sucursal Ica.'),
(8, '2020-05-12', 'Empleado contratado como conductor para Sucursal Tacna.'),
(9, '2018-08-10', 'Empleado contratado como supervisor de log�stica en Sucursal Lima.'),
(10, '2021-09-25','Empleado contratado como conductor para Sucursal Chiclayo.');
/*AsignacioDeConductor*/
INSERT INTO Asignaci�nDeConductores (EmpleadoID, Veh�culoID, FechaInicio, FechaFin)
VALUES
(1, 1, '2023-01-01', '2023-01-15'),
(2, 2, '2023-01-15', '2023-02-01'),
(3, 3, '2023-02-01', '2023-02-10'),
(4, 4, '2023-02-10', '2023-03-01'),
(5, 5, '2023-03-01', '2023-03-10'),
(6, 6, '2023-03-10', '2023-03-15'),
(7, 7, '2023-03-15', '2023-04-01'),
(8, 8, '2023-04-01', '2023-04-10'),
(9, 9, '2023-04-10', '2023-05-01'),
(10, 10, '2023-05-01', '2023-06-10');

/*Veh�culo*/
INSERT INTO Veh�culos(Placa, TipoVeh�culo, Capacidad, FechaRegistro, Estado) 
VALUES
('ABC-123', 1, 20000, '2018/02/12','Activo'),
('DEF-456', 2, '2020/03/18', 1000, 'Activo'),
('GHI-789', 3, '2020/03/18', 200, 'Mantenimiento'),
('JKL-012', 4, '2020/03/18', 15000, 'Activo'),
('MNO-345', 5, '2020/03/18', 1200, 'Activo'),
('PQR-678', 6, '2020/03/18', 25000, 'Activo'),
('STU-901', 7, '2020/03/18', 1300, 'Activo'),
('VWX-234', 8, '2020/03/18', 300, 'Activo'),
('YZA-567', 9, '2020/03/18', 18000, 'Activo'),
('BCD-890', 10, '2020/03/18', 1500, 'Activo');
/*Paquetes*/
INSERT INTO Paquetes (PaqueteID, EncomiendaID, Peso, Dimensiones)
VALUES
(1, 1, 3.5, '30x20x15 cm'),
(2, 1, 2.0, '25x20x10 cm'),
(3, 2, 0.5, '10x15x5 cm'),
(4, 3, 1.2, '20x15x10 cm'),
(5, 3, 4.0, '40x30x20 cm'),
(6, 4, 1.8, '25x20x10 cm'),
(7, 5, 3.0, '35x25x15 cm'),
(8, 6, 2.5, '30x20x15 cm'),
(9, 7, 5.0, '40x30x25 cm'),
(10, 8, 3.2, '30x25x20 cm');
/*Contenedores*/
INSERT INTO Contenedores (ContenedorID, C�digo, CapacidadMaxima)
VALUES
(1, 'ALJ252', 50.0),
(2, '52DF522', 100.0),
(3, '895DFDS', 200.0),
(4, 'FDS47', 100.0),
(5, '452AD', 50.0),
(6, '52SEDS', 200.0),
(7, 'QDS547', 100.0),
(8, '52DF0Z', 50.0),
(9, '52SADA', 200.0),
(10, '741ASD', 100.0);

/*EncomiendasContenedores*/
INSERT INTO EncomiendasContenedores (EncomiendaID, ContenedorID)
VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 3),
(6, 4),
(7, 5),
(8, 6),
(9, 7),
(10, 8);
/*TiposEncomienda*/
INSERT INTO TiposDeEncomiendas(TipoEncomiendaID, Descripci�n)
VALUES
(1, 'Documentos'),
(2, 'Paqueter�a peque�a'),
(3, 'Paqueter�a mediana'),
(4, 'Paqueter�a grande'),
(5, 'Electrodom�sticos'),
(6, 'Material fr�gil'),
(7, 'Ropa y textiles'),
(8, 'Libros y revistas'),
(9, 'Art�culos de oficina'),
(10, 'Productos especiales');
/*EstadoEncomienda*/
INSERT INTO EstadoEncomiendas(EstadoID, Descripci�n)
VALUES
(1, 'En tr�nsito'),
(2, 'Pendiente'),
(3, 'Entregado'),
(4, 'Cancelado'),
(5, 'En revisi�n'),
(6, 'Retrasado'),
(7, 'Extraviado'),
(8, 'Reprogramado'),
(9, 'No entregado'),
(10, 'Devuelto al remitente');
/*SeguimientoEncomiendas*/
INSERT INTO SeguimientoEncomiendas(SeguimientoID, EncomiendaID, FechaHora, Ubicaci�n, EstadoID)
VALUES
(1, 1, '2023-01-02', 'Sucursal Lima', 1),
(2, 2, '2023-01-16', 'Sucursal Arequipa', 3),
(3, 3, '2023-02-11', 'Sucursal Trujillo', 1),
(4, 4, '2023-02-26', 'Sucursal Cusco', 2),
(5, 5, '2023-03-02', 'Sucursal Ica', 1),
(6, 6, '2023-03-16', 'Sucursal Piura', 3),
(7, 7, '2023-03-21', 'Sucursal Tacna', 2),
(8, 8, '2023-04-02', 'Sucursal Chiclayo', 1),
(9, 9, '2023-04-16', 'Sucursal Huancayo', 2),
(10, 10, '2023-05-02', 'Sucursal Tumbes', 1);
/*HistorialDeEnvios*/
INSERT INTO HistorialDeEnvios (HistorialEnvioID, EncomiendaID, Fecha, Estado)
VALUES
(1, 1, '2023-01-01', 'Entregado'),
(2, 2, '2023-01-15', 'Entregado'),
(3, 3, '2023-02-01', 'Entregado'),
(4, 4, '2023-02-10', 'Entregado'),
(5, 5, '2023-03-01', 'Entregado'),
(6, 6, '2023-03-10', 'Entregado'),
(7, 7, '2023-03-15', 'Entregado'),
(8, 8, '2023-04-01', 'Entregado'),
(9, 9, '2023-04-10', 'Entregado'),
(10, 10, '2023-05-01', 'Entregado');




	COMMIT TRANSACTION;
END TRY
BEGIN CATCH
	IF (XACT_STATE() <> 0) ROLLBACK TRANSACTION;
END CATCH;