CREATE DATABASE BD_EncomiendaV3
GO
--GO
USE BD_EncomiendaV3
GO
/*CREATE DATABASE BD_EncomiendaV3
GO*/--drop DATABASE BD_EncomiendaV3

BEGIN TRANSACTION
BEGIN TRY
--CLIENTES
		CREATE TABLE Pais (
			PaisID INT PRIMARY KEY IDENTITY(1,1),
			NombrePais NVARCHAR(100)
		)

		CREATE TABLE Ciudad (
			CiudadID INT PRIMARY KEY IDENTITY(1,1),
			NombreCiudad NVARCHAR(100),
		)
		-----------------------------------------
		CREATE TABLE Direcciones (
			Direcci�nID INT PRIMARY KEY IDENTITY(1,1),
			Calle NVARCHAR(150),
			Provincia NVARCHAR(100),
			Ciudad INT FOREIGN KEY REFERENCES Ciudad(CiudadID),
			Pais INT FOREIGN KEY REFERENCES Pais(PaisID),
			C�digoPostal NVARCHAR(20)
		)
		
		CREATE TABLE Clientes (
			ClienteID INT PRIMARY KEY IDENTITY(1,1),
			Nombre NVARCHAR(100),
			Apellido NVARCHAR(100),
			Email NVARCHAR(150),
			Tel�fono NVARCHAR(20),
			Direcci�nID INT FOREIGN KEY REFERENCES Direcciones(Direcci�nID)
		)

		CREATE TABLE Remitentes (
			RemitenteID INT PRIMARY KEY IDENTITY(1,1),
			ClienteID INT FOREIGN KEY REFERENCES Clientes(ClienteID)
		)

		CREATE TABLE Destinatarios (
			DestinatarioID INT PRIMARY KEY IDENTITY(1,1),
			ClienteID INT FOREIGN KEY REFERENCES Clientes(ClienteID)
		)

		CREATE TABLE TiposDeClientes (
			TipoClienteID INT PRIMARY KEY IDENTITY(1,1),
			Descripci�n NVARCHAR(50)
		)

		CREATE TABLE DescuentosClientes (
			DescuentoID INT PRIMARY KEY IDENTITY(1,1),
			TipoClienteID INT FOREIGN KEY REFERENCES TiposDeClientes(TipoClienteID),
			PorcentajeDescuento DECIMAL(5, 2)
		)

		CREATE TABLE HistorialClientes (
			HistorialID INT PRIMARY KEY IDENTITY(1,1),
			ClienteID INT FOREIGN KEY REFERENCES Clientes(ClienteID),
			Fecha DATETIME,
			Descripci�n NVARCHAR(250)
		)

		CREATE TABLE ContactosClientes (
			ContactoID INT PRIMARY KEY IDENTITY(1,1),
			ClienteID INT FOREIGN KEY REFERENCES Clientes(ClienteID),
			NombreContacto NVARCHAR(100),
			Relaci�n NVARCHAR(50)
		)

		CREATE TABLE ClientesFrecuentes (
			FrecuenteID INT PRIMARY KEY IDENTITY(1,1),
			ClienteID INT FOREIGN KEY REFERENCES Clientes(ClienteID),
			Puntos INT
		)

		CREATE TABLE ReclamacionesClientes (
			Reclamaci�nID INT PRIMARY KEY IDENTITY(1,1),
			ClienteID INT FOREIGN KEY REFERENCES Clientes(ClienteID),
			Fecha DATETIME,
			Descripci�n NVARCHAR(500)
		)
		
--EMPLEADOS
		CREATE TABLE Cargos (
					CargoID INT PRIMARY KEY IDENTITY(1,1),
					Descripci�n NVARCHAR(100)
		)
		CREATE TABLE Empleados (
			EmpleadoID INT PRIMARY KEY IDENTITY(1,1),
			Nombre NVARCHAR(100),
			Apellido NVARCHAR(100),
			CargoID INT FOREIGN KEY REFERENCES Cargos(CargoID),
			FechaContrataci�n DATETIME
		)
		CREATE TABLE HistorialEmpleados (
			HistorialEmpleadoID INT PRIMARY KEY IDENTITY(1,1),
			EmpleadoID INT FOREIGN KEY REFERENCES Empleados(EmpleadoID),
			Fecha DATETIME,
			Evento NVARCHAR(250)
		)
		
--ENCOMIENDAS
		CREATE TABLE TiposDeEncomiendas (
			TipoEncomiendaID INT PRIMARY KEY IDENTITY(1,1),
			Descripci�n NVARCHAR(50)
		)
		
		CREATE TABLE Encomiendas (
			EncomiendaID INT PRIMARY KEY IDENTITY(1,1),
			RemitenteID INT FOREIGN KEY REFERENCES Remitentes(RemitenteID),
			DestinatarioID INT FOREIGN KEY REFERENCES Destinatarios(DestinatarioID),
			TipoEncomiendaID INT FOREIGN KEY REFERENCES TiposDeEncomiendas(TipoEncomiendaID),
			Peso DECIMAL(10, 2),
			Volumen DECIMAL(10, 2),
			FechaEnvio DATETIME,
			FechaEntrega DATETIME
		)

		CREATE TABLE EstadoEncomiendas (
			EstadoID INT PRIMARY KEY IDENTITY(1,1),
			Descripci�n NVARCHAR(50)
		)

		CREATE TABLE SeguimientoEncomiendas (
			SeguimientoID INT PRIMARY KEY IDENTITY(1,1),
			EncomiendaID INT FOREIGN KEY REFERENCES Encomiendas(EncomiendaID),
			EstadoID INT FOREIGN KEY REFERENCES EstadoEncomiendas(EstadoID),
			FechaHora DATETIME,
			Ubicaci�n NVARCHAR(150)
		)

		CREATE TABLE Paquetes (
			PaqueteID INT PRIMARY KEY IDENTITY(1,1),
			EncomiendaID INT FOREIGN KEY REFERENCES Encomiendas(EncomiendaID),
			Peso DECIMAL(10, 2),
			Dimensiones NVARCHAR(50)
		)

		CREATE TABLE GarantiaEncomiendas (
			GarantiaID INT PRIMARY KEY IDENTITY(1,1),
			EncomiendaID INT FOREIGN KEY REFERENCES Encomiendas(EncomiendaID),
			ValorAsegurado DECIMAL(10, 2)
		)
		

		CREATE TABLE Contenedores (
			ContenedorID INT PRIMARY KEY IDENTITY(1,1),
			C�digo NVARCHAR(50),
			CapacidadMaxima DECIMAL(10, 2)
		)

		CREATE TABLE EncomiendasContenedores (
			EncomiendaContenedorID INT PRIMARY KEY IDENTITY(1,1),
			ContenedorID INT FOREIGN KEY REFERENCES Contenedores(ContenedorID),
			EncomiendaID INT FOREIGN KEY REFERENCES Encomiendas(EncomiendaID)
		)

		CREATE TABLE TiemposDeEntrega (
			TiempoEntregaID INT PRIMARY KEY IDENTITY(1,1),
			EncomiendaID INT FOREIGN KEY REFERENCES Encomiendas(EncomiendaID),
			TiempoEstimado INT
		)

		CREATE TABLE HistorialDeEnvios (
			HistorialEnvioID INT PRIMARY KEY IDENTITY(1,1),
			EncomiendaID INT FOREIGN KEY REFERENCES Encomiendas(EncomiendaID),
			Fecha DATETIME,
			Estado NVARCHAR(50)
		)
		
--VEHICULOS
		CREATE TABLE TiposDeVeh�culos (
					TipoVeh�culoID INT PRIMARY KEY IDENTITY(1,1),
					Descripci�n NVARCHAR(100)
		)

		CREATE TABLE Veh�culos (
			Veh�culoID INT PRIMARY KEY IDENTITY(1,1),
			Placa NVARCHAR(50),
			TipoVeh�culo INT FOREIGN KEY REFERENCES TiposDeVeh�culos(TipoVeh�culoID),
			Capacidad DECIMAL(10, 2),
			FechaRegistro DATETIME,
			Estado NVARCHAR(50)
		)
		

		CREATE TABLE HistorialDeVeh�culos (
			HistorialID INT PRIMARY KEY IDENTITY(1,1),
			Veh�culoID INT FOREIGN KEY REFERENCES Veh�culos(Veh�culoID),
			Evento NVARCHAR(250),
			Fecha DATETIME
		)

		CREATE TABLE Asignaci�ndeConductores (
			Asignaci�nConductorID INT PRIMARY KEY IDENTITY(1,1),
			EmpleadoID INT FOREIGN KEY REFERENCES Empleados(EmpleadoID),
			Veh�culoID INT FOREIGN KEY REFERENCES Veh�culos(Veh�culoID),
			FechaInicio DATETIME,
			FechaFin DATETIME
		)
--RUTAS
		CREATE TABLE Rutas (
			RutaID INT PRIMARY KEY IDENTITY(1,1),
			Origen NVARCHAR(150),
			Destino NVARCHAR(150),
			Distancia DECIMAL(10, 2),
			TiempoEstimado INT,  -- En minutos
			FechaCreaci�n DATETIME
		)
		CREATE TABLE ParadasRuta (
			ParadaID INT PRIMARY KEY IDENTITY(1,1),
			RutaID INT FOREIGN KEY REFERENCES Rutas(RutaID),
			Ubicaci�n NVARCHAR(150),
			TiempoEstimado INT  -- En minutos
		)

		CREATE TABLE TiposDeRutas (
			TipoRutaID INT PRIMARY KEY IDENTITY(1,1),
			Descripci�n NVARCHAR(100)
		)

		CREATE TABLE RutasProgramadas (
			RutaProgramadaID INT PRIMARY KEY IDENTITY(1,1),
			RutaID INT FOREIGN KEY REFERENCES Rutas(RutaID),
			TipoRutaID INT FOREIGN KEY REFERENCES TiposDeRutas(TipoRutaID),
			FechaInicio DATETIME,
			FechaFin DATETIME
		)

		CREATE TABLE ReportesRutas (
			ReporteRutaID INT PRIMARY KEY IDENTITY(1,1),
			RutaID INT FOREIGN KEY REFERENCES Rutas(RutaID),
			Fecha DATETIME,
			DistanciaRecorrida DECIMAL(10, 2),
			TiempoTotal INT  -- En minutos
		)
--ALMACENES
		CREATE TABLE Almacenes (
			Almac�nID INT PRIMARY KEY IDENTITY(1,1),
			Nombre NVARCHAR(100),
			Ubicaci�n NVARCHAR(150),
			Capacidad DECIMAL(10, 2)
		)

		CREATE TABLE Productos (
			ProductoID INT PRIMARY KEY IDENTITY(1,1),
			Nombre NVARCHAR(100),
			Descripci�n NVARCHAR(250),
			Peso DECIMAL(10, 2),
			Dimensiones NVARCHAR(50)
		)

		CREATE TABLE InventarioAlmac�n (
			InventarioID INT PRIMARY KEY IDENTITY(1,1),
			Almac�nID INT FOREIGN KEY REFERENCES Almacenes(Almac�nID),
			ProductoID INT FOREIGN KEY REFERENCES Productos(ProductoID),
			Cantidad INT
		)


		CREATE TABLE HistorialAlmacenes (
			HistorialID INT PRIMARY KEY IDENTITY(1,1),
			Almac�nID INT FOREIGN KEY REFERENCES Almacenes(Almac�nID),
			Evento NVARCHAR(250),
			Fecha DATETIME
		)

--FACTURAS
		CREATE TABLE Facturas (
			FacturaID INT PRIMARY KEY IDENTITY(1,1),
			ClienteID INT FOREIGN KEY REFERENCES Clientes(ClienteID),
			MontoTotal DECIMAL(10, 2),
			FechaEmisi�n DATETIME
		)

		CREATE TABLE M�todosPago (
			M�todoPagoID INT PRIMARY KEY IDENTITY(1,1),
			Descripci�n NVARCHAR(50)
		)

		CREATE TABLE Pagos (
			PagoID INT PRIMARY KEY IDENTITY(1,1),
			FacturaID INT FOREIGN KEY REFERENCES Facturas(FacturaID),
			Monto DECIMAL(10, 2),
			FechaPago DATETIME,
			M�todoPago INT FOREIGN KEY REFERENCES M�todosPago(M�todoPagoID)
		)

		CREATE TABLE DetallesFactura (
			DetalleFacturaID INT PRIMARY KEY IDENTITY(1,1),
			FacturaID INT FOREIGN KEY REFERENCES Facturas(FacturaID),
			ProductoID INT FOREIGN KEY REFERENCES Productos(ProductoID),
			Cantidad INT,
			PrecioUnitario DECIMAL(10, 2),
			Subtotal DECIMAL(10, 2)
		)

		CREATE TABLE ImpuestosFactura (
			ImpuestoFacturaID INT PRIMARY KEY IDENTITY(1,1),
			FacturaID INT FOREIGN KEY REFERENCES Facturas(FacturaID),
			PorcentajeImpuesto DECIMAL(5, 2),
			MontoImpuesto DECIMAL(10, 2)
		)

		CREATE TABLE DescuentosFactura (
			DescuentoFacturaID INT PRIMARY KEY IDENTITY(1,1),
			FacturaID INT FOREIGN KEY REFERENCES Facturas(FacturaID),
			PorcentajeDescuento DECIMAL(5, 2),
			MontoDescuento DECIMAL(10, 2)
		)
--RASTREO
		CREATE TABLE RastreoEncomiendas (
			RastreoID INT PRIMARY KEY IDENTITY(1,1),
			EncomiendaID INT FOREIGN KEY REFERENCES Encomiendas(EncomiendaID),
			Veh�culoID INT FOREIGN KEY REFERENCES Veh�culos(Veh�culoID),
			RutaID INT FOREIGN KEY REFERENCES Rutas(RutaID),
			FechaHora DATETIME,
			Ubicaci�n NVARCHAR(150),
			EstadoEnRuta NVARCHAR(50)
		)

		CREATE TABLE RastreoUbicaci�n (
			Ubicaci�nID INT PRIMARY KEY IDENTITY(1,1),
			RastreoID INT FOREIGN KEY REFERENCES RastreoEncomiendas(RastreoID),
			FechaHora DATETIME,
			Ubicaci�n NVARCHAR(150),

		)


		CREATE TABLE RastreoDetalles (
			DetalleRastreoID INT PRIMARY KEY IDENTITY(1,1),
			RastreoID INT FOREIGN KEY REFERENCES RastreoEncomiendas(RastreoID),
			FechaHora DATETIME,
			Detalle NVARCHAR(250)
		)

		CREATE TABLE RastreoHistorial (
			HistorialRastreoID INT PRIMARY KEY IDENTITY(1,1),
			RastreoID INT FOREIGN KEY REFERENCES RastreoEncomiendas(RastreoID),
			Fecha DATETIME,
			Estado NVARCHAR(100),
			Ubicaci�n NVARCHAR(150)
		)
	COMMIT TRANSACTION;
END TRY   
BEGIN CATCH
	IF (XACT_STATE() <> 0) BEGIN
		ROLLBACK TRANSACTION;
	END
END CATCH 


