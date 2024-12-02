CREATE DATABASE BDEncomiendaV3
GO
USE BDEncomiendaV3
GO
/*CREATE DATABASE BDEncomiendaV3
GO*/--drop DATABASE BDEncomiendaV3

BEGIN TRANSACTION
BEGIN TRY
--CLIENTES
		CREATE TABLE Pais (
			PaisID INT IDENTITY(1,1),
			NombrePais NVARCHAR(30)
		)

		CREATE TABLE Ciudad (
			CiudadID INT IDENTITY(1,1),
			NombreCiudad NVARCHAR(30),
		)
		-----------------------------------------
		CREATE TABLE Direcciones (
			DirecciónID INT IDENTITY(1,1),
			Calle NVARCHAR(50),
			Provincia NVARCHAR(20),
			Ciudad INT,
			Pais INT,
			CódigoPostal NVARCHAR(20)
		)
		
		CREATE TABLE Clientes (
			ClienteID INT IDENTITY(1,1),
			Nombre NVARCHAR(30),
			Apellido NVARCHAR(30),
			Email NVARCHAR(100),
			Teléfono NVARCHAR(20),
			DirecciónID INT 
		)

		CREATE TABLE Remitentes (
			RemitenteID INT IDENTITY(1,1),
			ClienteID INT 
		)

		CREATE TABLE Destinatarios (
			DestinatarioID INT IDENTITY(1,1),
			ClienteID INT 
		)

		CREATE TABLE TiposDeClientes (
			TipoClienteID INT IDENTITY(1,1),
			Descripción NVARCHAR(50)
		)

		CREATE TABLE DescuentosClientes (
			DescuentoID INT IDENTITY(1,1),
			TipoClienteID INT,
			PorcentajeDescuento DECIMAL(5, 2)
		)

		CREATE TABLE HistorialClientes (
			HistorialID INT IDENTITY(1,1),
			ClienteID INT,
			Fecha DATETIME,
			Descripción NVARCHAR(100)
		)

		CREATE TABLE ContactosClientes (
			ContactoID INT IDENTITY(1,1),
			ClienteID INT,
			NombreContacto NVARCHAR(40),

		)

		CREATE TABLE ClientesFrecuentes (
			FrecuenteID INT IDENTITY(1,1),
			ClienteID INT,
			Puntos INT
		)

		CREATE TABLE ReclamacionesClientes (
			ReclamaciónID INT IDENTITY(1,1),
			ClienteID INT,
			Fecha DATETIME,
			Descripción NVARCHAR(500)
		)
		
--EMPLEADOS
		CREATE TABLE Cargos (
			CargoID INT IDENTITY(1,1),
			Descripción NVARCHAR(100)
		)
		CREATE TABLE Empleados (
			EmpleadoID INT IDENTITY(1,1),
			Nombre NVARCHAR(30),
			Apellido NVARCHAR(30),
			CargoID INT,
			FechaContratación DATETIME
		)
		CREATE TABLE HistorialEmpleados (
			HistorialEmpleadoID INT IDENTITY(1,1),
			EmpleadoID INT,
			Fecha DATETIME,
			Descripción NVARCHAR(120)
		)
		
--ENCOMIENDAS
		CREATE TABLE TiposDeEncomiendas (
			TipoEncomiendaID INT IDENTITY(1,1),
			Descripción NVARCHAR(50)
		)
		
		CREATE TABLE Encomiendas (
			EncomiendaID INT IDENTITY(1,1),
			RemitenteID INT,
			DestinatarioID INT,
			TipoEncomiendaID INT,
			Peso DECIMAL(10, 2),
			Volumen DECIMAL(10, 2),
			FechaEnvio DATETIME,
			FechaEntrega DATETIME
		)

		CREATE TABLE EstadoEncomiendas (
			EstadoID INT IDENTITY(1,1),
			Descripción NVARCHAR(50)
		)

		CREATE TABLE SeguimientoEncomiendas (
			SeguimientoID INT IDENTITY(1,1),
			EncomiendaID INT,
			EstadoID INT,
			FechaHora DATETIME,
			Ubicación NVARCHAR(100)
		)

		CREATE TABLE Paquetes (
			PaqueteID INT IDENTITY(1,1),
			EncomiendaID INT,
			Peso DECIMAL(10, 2),
			Dimensiones NVARCHAR(30)
		)

		CREATE TABLE GarantiaEncomiendas (
			GarantiaID INT IDENTITY(1,1),
			EncomiendaID INT,
			ValorAsegurado DECIMAL(10, 2)
		)
		

		CREATE TABLE Contenedores (
			ContenedorID INT IDENTITY(1,1),
			Código NVARCHAR(50),
			CapacidadMaxima DECIMAL(10, 2)
		)

		CREATE TABLE EncomiendasContenedores (
			EncomiendaContenedorID INT IDENTITY(1,1),
			ContenedorID INT,
			EncomiendaID INT 
		)

		CREATE TABLE TiemposDeEntrega (
			TiempoEntregaID INT IDENTITY(1,1),
			EncomiendaID INT,
			TiempoEstimado INT
		)

		CREATE TABLE HistorialDeEnvios (
			HistorialEnvioID INT IDENTITY(1,1),
			EncomiendaID INT,
			Fecha DATETIME,
			Estado NVARCHAR(50)
		)
		
--VEHICULOS
		CREATE TABLE TiposDeVehículos (
			TipoVehículoID INT IDENTITY(1,1),
			Descripción NVARCHAR(100)
		)

		CREATE TABLE Vehículos (
			VehículoID INT IDENTITY(1,1),
			Placa NVARCHAR(30),
			TipoVehículo INT,
			Capacidad DECIMAL(10, 2),
			FechaRegistro DATETIME,
			Estado NVARCHAR(50)
		)
		

		CREATE TABLE HistorialDeVehículos (
			HistorialID INT IDENTITY(1,1),
			VehículoID INT,
			Evento NVARCHAR(250),
			Fecha DATETIME
		)

		CREATE TABLE AsignacióndeConductores (
			AsignaciónConductorID INT IDENTITY(1,1),
			EmpleadoID INT,
			VehículoID INT,
			FechaInicio DATETIME,
			FechaFin DATETIME
		)
--RUTAS
		CREATE TABLE Rutas (
			RutaID INT IDENTITY(1,1),
			Origen NVARCHAR(100),
			Destino NVARCHAR(100),
			Distancia DECIMAL(10, 2),
			TiempoEstimado INT,  -- En minutos
			FechaCreación DATETIME
		)
		CREATE TABLE ParadasRuta (
			ParadaID INT IDENTITY(1,1),
			RutaID INT,
			Ubicación NVARCHAR(100),
			TiempoEstimado INT  -- En minutos
		)

		CREATE TABLE TiposDeRutas (
			TipoRutaID INT IDENTITY(1,1),
			Descripción NVARCHAR(100)
		)

		CREATE TABLE RutasProgramadas (
			RutaProgramadaID INT IDENTITY(1,1),
			RutaID INT,
			TipoRutaID INT,
			FechaInicio DATETIME,
			FechaFin DATETIME
		)

		CREATE TABLE ReportesRutas (
			ReporteRutaID INT IDENTITY(1,1),
			RutaID INT,
			Fecha DATETIME,
			DistanciaRecorrida DECIMAL(10, 2),
			TiempoTotal INT  -- En minutos
		)
--ALMACENES
		CREATE TABLE Almacenes (
			AlmacénID INT IDENTITY(1,1),
			Nombre NVARCHAR(100),
			Ubicación NVARCHAR(100),
			Capacidad DECIMAL(10, 2)
		)

		CREATE TABLE Productos (
			ProductoID INT IDENTITY(1,1),
			Nombre NVARCHAR(100),
			Descripción NVARCHAR(150),
			Peso DECIMAL(10, 2),
			Dimensiones NVARCHAR(30)
		)

		CREATE TABLE InventarioAlmacén (
			InventarioID INT IDENTITY(1,1),
			AlmacénID INT,
			ProductoID INT,
			Cantidad INT
		)


		CREATE TABLE HistorialAlmacenes (
			HistorialID INT IDENTITY(1,1),
			AlmacénID INT,
			Descripción NVARCHAR(100),
			Fecha DATETIME
		)

--FACTURAS
		CREATE TABLE Facturas (
			FacturaID INT IDENTITY(1,1),
			ClienteID INT,
			MontoTotal DECIMAL(10, 2),
			FechaEmisión DATETIME
		)

		CREATE TABLE MétodosPago (
			MétodoPagoID INT IDENTITY(1,1),
			Descripción NVARCHAR(50)
		)

		CREATE TABLE Pagos (
			PagoID INT IDENTITY(1,1),
			FacturaID INT,
			Monto DECIMAL(10, 2),
			FechaPago DATETIME,
			MétodoPago INT 
		)

		CREATE TABLE DetallesFactura (
			DetalleFacturaID INT IDENTITY(1,1),
			FacturaID INT,
			ProductoID INT,
			Cantidad INT,
			PrecioUnitario DECIMAL(10, 2),
			Subtotal DECIMAL(10, 2)
		)

		CREATE TABLE ImpuestosFactura (
			ImpuestoFacturaID INT IDENTITY(1,1),
			FacturaID INT,
			PorcentajeImpuesto DECIMAL(5, 2),
			MontoImpuesto DECIMAL(10, 2)
		)

		CREATE TABLE DescuentosFactura (
			DescuentoFacturaID INT IDENTITY(1,1),
			FacturaID INT,
			PorcentajeDescuento DECIMAL(5, 2),
			MontoDescuento DECIMAL(10, 2)
		)
--RASTREO
		CREATE TABLE RastreoEncomiendas (
			RastreoID INT IDENTITY(1,1),
			EncomiendaID INT,
			VehículoID INT,
			RutaID INT,
			FechaHora DATETIME,
			Ubicación NVARCHAR(150),
			EstadoEnRuta NVARCHAR(50)
		)

		CREATE TABLE RastreoUbicación (
			UbicaciónID INT IDENTITY(1,1),
			RastreoID INT,
			FechaHora DATETIME,
			Ubicación NVARCHAR(150),

		)


		CREATE TABLE RastreoDetalles (
			DetalleRastreoID INT IDENTITY(1,1),
			RastreoID INT,
			FechaHora DATETIME,
			Detalle NVARCHAR(150)
		)

		CREATE TABLE RastreoHistorial (
			HistorialRastreoID INT IDENTITY(1,1),
			RastreoID INT,
			Fecha DATETIME,
			Estado NVARCHAR(100),
			Ubicación NVARCHAR(150)
		)
	COMMIT TRANSACTION;
END TRY   
BEGIN CATCH
	IF (XACT_STATE() <> 0) BEGIN
		ROLLBACK TRANSACTION;
	END
END CATCH 


