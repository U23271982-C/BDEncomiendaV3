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
SELECT * FROM HistorialDeEnvios
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
/*Rutas*/
INSERT INTO Rutas (RutaID, Origen, Destino, Distancia, TiempoEstimado, FechaCreación)
VALUES
(1, 'Sucursal Lima', 'Sucursal Arequipa', 1000, 18, '2023-01-01'),
(2, 'Sucursal Lima', 'Sucursal Cusco', 1100, 20, '2023-01-01'),
(3, 'Sucursal Trujillo', 'Sucursal Piura', 500, 8, '2022-05-01'),
(4, 'Sucursal Chiclayo', 'Sucursal Tacna', 1500, 24, '2023-03-10'),
(5, 'Sucursal Huancayo', 'Sucursal Lima', 300, 6, '2023-03-10'),
(6, 'Sucursal Arequipa', 'Sucursal Cusco', 450, 7, '2023-02-01'),
(7, 'Sucursal Lima', 'Sucursal Tumbes', 1300, 22, '2023-04-01'),
(8, 'Sucursal Ica', 'Sucursal Piura', 800, 15, '2023-01-01'),
(9, 'Sucursal Cusco', 'Sucursal Arequipa', 450, 8, '2023-03-10'),
(10, 'Sucursal Tacna', 'Sucursal Chiclayo', 1600, 26, '2022-05-01');
/*TipoRutas*/
INSERT INTO TiposDeRutas(TipoRutaID, Descripción)
VALUES
(1, 'Interprovincial'),
(2, 'Interregional'),
(3, 'Urbana'),
(4, 'Internacional'),
(5, 'Especial');
/*RutasProgramadas*/
INSERT INTO RutasProgramadas (RutaProgramadaID, RutaID, TipoRutaID, FechaInicio, FechaFin)
VALUES
(1, 1,1, '2023-01-01 08:00:00', '2023-01-02 02:00:00'),
(2, 2,2, '2023-01-15 07:00:00', '2023-01-16 03:00:00'),
(3, 3,3, '2023-02-01 06:00:00', '2023-02-01 14:00:00'),
(4, 4,4, '2023-02-10 05:00:00', '2023-02-11 07:00:00'),
(5, 5,5, '2023-03-01 08:00:00', '2023-03-01 14:00:00'),
(6, 6,1, '2023-03-10 09:00:00', '2023-03-10 16:00:00'),
(7, 7,2, '2023-03-15 10:00:00', '2023-03-16 08:00:00'),
(8, 8,3, '2023-04-01 07:30:00', '2023-04-01 22:00:00'),
(9, 9,4, '2023-04-10 06:00:00', '2023-04-10 14:00:00'),
(10, 10,5, '2023-05-01 05:00:00', '2023-05-02 07:00:00');
/*ReportesRutas*/
INSERT INTO ReportesRutas (ReporteRutaID, RutaID, Fecha, DistanciaRecorrida, TiempoTotal)
VALUES
(1, 1, '2023-01-02', 103.2, 10),
(2, 2, '2023-01-16', 1005.2, 10),
(3, 3, '2023-02-01', 103.2, 7),
(4, 4, '2023-02-11', 103.2, 12),
(5, 5, '2023-03-01', 103.2, 6),
(6, 6, '2023-03-10', 103.2, 5),
(7, 7, '2023-03-16', 103.2, 3),
(8, 8, '2023-04-01', 103.2, 10),
(9, 9, '2023-04-10', 103.2, 8),
(10, 10, '2023-05-02', 103.2, 9);

/*ParadasRutas*/
INSERT INTO ParadasRuta (ParadaID, RutaID,Ubicación, TiempoEstimado)
VALUES
(1, 1, 'Parada 1: Chincha', 30),
(2, 1, 'Parada 2: Ica', 45),
(3, 2, 'Parada 1: Abancay', 20),
(4, 3, 'Parada 1: Lambayeque', 15),
(5, 4, 'Parada 1: Moquegua', 40),
(6, 5, 'Parada 1: La Oroya', 25),
(7, 6, 'Parada 1: Puno', 30),
(8, 7, 'Parada 1: Tumbes', 50),
(9, 8, 'Parada 1: Chimbote', 35),
(10, 9, 'Parada 1: Cusco', 20);
/*RatroEncomienda*/
INSERT INTO RastreoEncomiendas
(RastreoID, EncomiendaID, VehículoID, RutaID, FechaHora, Ubicación, EstadoEnRuta)
VALUES
(1, 1, 1, 1, '2023-01-02', 'Chincha', 'En tránsito hacia Arequipa.'),
(2, 2, 3, 3, '2023-01-16', 'Cusco','Entregado exitosamente.'),
(3, 3, 1, 1, '2023-02-01', 'Chimbote','En camino hacia destino final.'),
(4, 4, 2, 2, '2023-02-10', 'Puno','Pendiente por documentación.'),
(5, 5, 1, 1, '2023-03-01', 'La Oroya','Esperando asignación de ruta.'),
(6, 6, 3, 3, '2023-03-10', 'Moquegua','Entregado sin inconvenientes.'),
(7, 7, 2, 2, '2023-03-15', 'Lambayeque','Retraso por condiciones climáticas.'),
(8, 8, 1, 1, '2023-04-01', 'Abancay','En tránsito.'),
(9, 9, 2, 2, '2023-04-10', 'Ica','Problemas con la dirección.'),
(10, 10, 1, 1, '2023-05-01', 'Chincha','En ruta hacia destino final.');
/*RastreoUbicacion*/
INSERT INTO RastreoUbicación(UbicaciónID, RastreoID, FechaHora, Ubicación)
VALUES
(1, 1, '2023-01-02 10:00:00', 'Sucursal Lima'),
(2, 1, '2023-01-02 14:00:00', 'Chincha'),
(3, 2, '2023-01-15 16:00:00', 'Sucursal Arequipa'),
(4, 3, '2023-02-01 18:00:00', 'Sucursal Trujillo'),
(5, 4, '2023-02-10 09:00:00', 'Sucursal Cusco'),
(6, 5, '2023-03-01 12:00:00', 'Sucursal Piura'),
(7, 6, '2023-03-10 14:00:00', 'Sucursal Chiclayo'),
(8, 7, '2023-03-15 10:30:00', 'Tumbes'),
(9, 8, '2023-04-01 11:00:00', 'Chimbote'),
(10, 9, '2023-04-10 15:00:00', 'Sucursal Arequipa');
/*RastreoDetalles*/
INSERT INTO RastreoDetalles (DetalleRastreoID, RastreoID, FechaHora, Detalle)
VALUES
(1, 1, '2023-01-01 08:00:00', 'Todo en orden.'),
(2, 1, '2023-01-01 12:00:00', 'Descarga parcial.'),
(3, 2, '2023-01-15 16:30:00', 'Cliente satisfecho.'),
(4, 3, '2023-02-01 10:00:00', 'Ruta confirmada.'),
(5, 4, '2023-02-10 09:30:00', 'Pendiente de firma.'),
(6, 5, '2023-03-01 13:00:00', 'Asignación de conductor.'),
(7, 6, '2023-03-10 14:30:00', 'Entrega sin problemas.'),
(8, 7, '2023-03-15 11:00:00', 'Ruta retrasada.'),
(9, 8, '2023-04-01 15:00:00', 'Avance en tiempo.'),
(10, 9,'2023-04-10 16:00:00', 'Error en datos de cliente.');
/*RastreoHistorial*/
INSERT INTO RastreoHistorial (HistorialRastreoID, RastreoID, Fecha, Estado, Ubicación)
VALUES
(1, 1, '2023-01-02', 'Pendiente', 'Piura'),
(2, 2, '2023-01-16', 'En tránsito', 'San Borja'),
(3, 3, '2023-02-01', 'Pendiente', 'Túcume'),
(4, 4, '2023-02-10', 'Pendiente', 'Callao'),
(5, 5, '2023-03-01', 'Pendiente', 'Andahuayalas'),
(6, 6, '2023-03-10', 'En tránsito', 'Cerro de Pasco'),
(7, 7, '2023-03-15', 'En tránsito', 'Chimbote'),
(8, 8, '2023-04-01', 'Pendiente', 'Ucayali'),
(9, 9, '2023-04-10', 'Pendiente', 'Loreto'),
(10, 10, '2023-05-01', 'En tránsito', 'Iquitos');
/*GarantiaEncomiendas*/
INSERT INTO GarantiaEncomiendas (GarantiaID, EncomiendaID, ValorAsegurado)
VALUES
(1, 1, 100.00),
(2, 2, 250.00),
(3, 3, 500.00),
(4, 4, 150.00),
(5, 5, 300.00),
(6, 6, 200.00),
(7, 7, 100.00),
(8, 8, 400.00),
(9, 9, 600.00),
(10, 10, 350.00);
	COMMIT TRANSACTION;
END TRY
BEGIN CATCH
	IF (XACT_STATE() <> 0) ROLLBACK TRANSACTION;
	Print CAST(ERROR_MESSAGE() AS VARCHAR)
END CATCH;