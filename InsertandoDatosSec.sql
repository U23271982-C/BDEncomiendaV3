USE BD_EncomiendaV3
GO
BEGIN TRANSACTION;
BEGIN TRY
/*TiposDeVehículos*/
INSERT INTO TiposDeVehículos (Descripción)
VALUES 
('Camión de carga pesada'),
('Camioneta de reparto'),
('Motocicleta para entregas rápidas'),
('Camión refrigerado'),
('Camioneta para largas distancias'),
('Camión con remolque'),
('Furgón'),
('Motocarro'),
('Camión cisterna'),
('Camioneta todoterreno');
/*HistorialVehiculo*/
INSERT INTO HistorialDeVehículos (VehículoID, Evento, Fecha)
VALUES 
(1, 'Asignado a Ruta Lima-Arequipa', '2023-01-01'),
(2, 'Asignado a Ruta Lima-Cusco', '2023-01-15'),
(3, 'Revisión técnica aprobada', '2023-02-10'),
(4, 'Reparación de motor completada', '2023-03-20'),
(5, 'Asignado a Ruta Lima-Piura', '2023-03-25'),
(6, 'Cambio de aceite realizado', '2023-04-10'),
(7, 'Mantenimiento preventivo completado', '2023-05-15'),
(8, 'Asignado a Ruta Lima-Trujillo', '2023-06-05'),
(9, 'Revisión técnica programada', '2023-07-01'),
(10, 'Vehículo en mantenimiento', '2023-08-15');
/*Cargo*/
INSERT INTO Cargos (Descripción)
VALUES
('Conductor, encargado de conducir los vehículos para el traslado de encomiendas.'),
('Supervisor de Ruta, responsable de la supervisión de rutas y conductores.'),
('Mecánico, encargado de realizar el mantenimiento y reparaciones de vehículos.'),
('Administrador, encargado de gestionar las operaciones administrativas de la sucursal.'),
('Asistente Administrativo, apoya en la gestión de documentos y tareas administrativas.'),
('Gerente de Sucursal, responsable de la gestión general de la sucursal.'),
('Almacenista responsable, de gestionar la recepción y almacenamiento de las encomiendas.'),
('Operador Logístico, encargado de la planificación y coordinación de las entregas.'),
('Atención al Cliente, responsable de recibir y resolver las solicitudes de los clientes.'),
('Jefe de Operaciones, encargado de coordinar las operaciones de logística y distribución.');

/*Empleados*/
INSERT INTO Empleados (Nombre, Apellido, CargoID,FechaContratación)
VALUES 
('Juan', 'Pérez', 1,'2020-01-15'),
('Ana', 'López', 2, '2019-03-22'),
('Carlos', 'Gómez', 1, '2021-07-10'),
('María', 'Fernández', 8, '2022-04-01'),
('José', 'Martínez', 1, '2018-06-25'),
('Luis', 'Rodríguez', 1, '2020-11-19'),
('Sofía', 'García', 4, '2017-09-13'),
('David', 'Hernández',1, '2023-02-05'),
('Laura', 'Mendoza', 10, '2016-12-30'),
('Ricardo', 'Torres',1, '2019-05-20'	);

/*HistorialEmpleados*/
INSERT INTO HistorialEmpleados (EmpleadoID, Fecha, Evento)
VALUES
(1, '2021-01-15','Empleado contratado como conductor para Sucursal Lima.'),
(2, '2021-06-01','Empleado contratado como conductor para Sucursal Arequipa.'),
(3, '2020-11-20','Empleado contratado como administrador para Sucursal Lima.'),
(4, '2022-02-10','Empleado contratado como supervisor de ruta en Sucursal Trujillo.'),
(5, '2019-09-15','Empleado contratado como mecánico en Sucursal Lima.'),
(6, '2021-03-18','Empleado contratado como conductor para Sucursal Piura.'),
(7, '2022-07-01', 'Empleado contratado como asistente administrativo en Sucursal Ica.'),
(8, '2020-05-12', 'Empleado contratado como conductor para Sucursal Tacna.'),
(9, '2018-08-10', 'Empleado contratado como supervisor de logística en Sucursal Lima.'),
(10, '2021-09-25','Empleado contratado como conductor para Sucursal Chiclayo.');
/*AsignacioDeConductor*/
INSERT INTO AsignaciónDeConductores (EmpleadoID, VehículoID, FechaInicio, FechaFin)
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

/*Vehículo*/
INSERT INTO Vehículos(Placa, TipoVehículo, Capacidad, FechaRegistro, Estado) 
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
INSERT INTO Contenedores (ContenedorID, Código, CapacidadMaxima)
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
INSERT INTO TiposDeEncomiendas(TipoEncomiendaID, Descripción)
VALUES
(1, 'Documentos'),
(2, 'Paquetería pequeña'),
(3, 'Paquetería mediana'),
(4, 'Paquetería grande'),
(5, 'Electrodomésticos'),
(6, 'Material frágil'),
(7, 'Ropa y textiles'),
(8, 'Libros y revistas'),
(9, 'Artículos de oficina'),
(10, 'Productos especiales');
/*EstadoEncomienda*/
INSERT INTO EstadoEncomiendas(EstadoID, Descripción)
VALUES
(1, 'En tránsito'),
(2, 'Pendiente'),
(3, 'Entregado'),
(4, 'Cancelado'),
(5, 'En revisión'),
(6, 'Retrasado'),
(7, 'Extraviado'),
(8, 'Reprogramado'),
(9, 'No entregado'),
(10, 'Devuelto al remitente');
/*SeguimientoEncomiendas*/
INSERT INTO SeguimientoEncomiendas(SeguimientoID, EncomiendaID, FechaHora, Ubicación, EstadoID)
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