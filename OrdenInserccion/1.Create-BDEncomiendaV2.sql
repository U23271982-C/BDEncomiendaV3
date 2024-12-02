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
			Direcci�nID INT IDENTITY(1,1),
			Calle NVARCHAR(50),
			Provincia NVARCHAR(20),
			Ciudad INT,
			Pais INT,
			C�digoPostal NVARCHAR(20)
		)
		
		CREATE TABLE Clientes (
			ClienteID INT IDENTITY(1,1),
			Nombre NVARCHAR(30),
			Apellido NVARCHAR(30),
			Email NVARCHAR(100),
			Tel�fono NVARCHAR(20),
			Direcci�nID INT 
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
			Descripci�n NVARCHAR(50)
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
			Descripci�n NVARCHAR(100)
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
			Reclamaci�nID INT IDENTITY(1,1),
			ClienteID INT,
			Fecha DATETIME,
			Descripci�n NVARCHAR(500)
		)
		
--EMPLEADOS
		CREATE TABLE Cargos (
			CargoID INT IDENTITY(1,1),
			Descripci�n NVARCHAR(100)
		)
		CREATE TABLE Empleados (
			EmpleadoID INT IDENTITY(1,1),
			Nombre NVARCHAR(30),
			Apellido NVARCHAR(30),
			CargoID INT,
			FechaContrataci�n DATETIME
		)
		CREATE TABLE HistorialEmpleados (
			HistorialEmpleadoID INT IDENTITY(1,1),
			EmpleadoID INT,
			Fecha DATETIME,
			Descripci�n NVARCHAR(120)
		)
		
--ENCOMIENDAS
		CREATE TABLE TiposDeEncomiendas (
			TipoEncomiendaID INT IDENTITY(1,1),
			Descripci�n NVARCHAR(50)
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
			Descripci�n NVARCHAR(50)
		)

		CREATE TABLE SeguimientoEncomiendas (
			SeguimientoID INT IDENTITY(1,1),
			EncomiendaID INT,
			EstadoID INT,
			FechaHora DATETIME,
			Ubicaci�n NVARCHAR(100)
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
			C�digo NVARCHAR(50),
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
		CREATE TABLE TiposDeVeh�culos (
			TipoVeh�culoID INT IDENTITY(1,1),
			Descripci�n NVARCHAR(100)
		)

		CREATE TABLE Veh�culos (
			Veh�culoID INT IDENTITY(1,1),
			Placa NVARCHAR(30),
			TipoVeh�culo INT,
			Capacidad DECIMAL(10, 2),
			FechaRegistro DATETIME,
			Estado NVARCHAR(50)
		)
		

		CREATE TABLE HistorialDeVeh�culos (
			HistorialID INT IDENTITY(1,1),
			Veh�culoID INT,
			Evento NVARCHAR(250),
			Fecha DATETIME
		)

		CREATE TABLE Asignaci�ndeConductores (
			Asignaci�nConductorID INT IDENTITY(1,1),
			EmpleadoID INT,
			Veh�culoID INT,
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
			FechaCreaci�n DATETIME
		)
		CREATE TABLE ParadasRuta (
			ParadaID INT IDENTITY(1,1),
			RutaID INT,
			Ubicaci�n NVARCHAR(100),
			TiempoEstimado INT  -- En minutos
		)

		CREATE TABLE TiposDeRutas (
			TipoRutaID INT IDENTITY(1,1),
			Descripci�n NVARCHAR(100)
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
			Almac�nID INT IDENTITY(1,1),
			Nombre NVARCHAR(100),
			Ubicaci�n NVARCHAR(100),
			Capacidad DECIMAL(10, 2)
		)

		CREATE TABLE Productos (
			ProductoID INT IDENTITY(1,1),
			Nombre NVARCHAR(100),
			Descripci�n NVARCHAR(150),
			Peso DECIMAL(10, 2),
			Dimensiones NVARCHAR(30)
		)

		CREATE TABLE InventarioAlmac�n (
			InventarioID INT IDENTITY(1,1),
			Almac�nID INT,
			ProductoID INT,
			Cantidad INT
		)


		CREATE TABLE HistorialAlmacenes (
			HistorialID INT IDENTITY(1,1),
			Almac�nID INT,
			Descripci�n NVARCHAR(100),
			Fecha DATETIME
		)

--FACTURAS
		CREATE TABLE Facturas (
			FacturaID INT IDENTITY(1,1),
			ClienteID INT,
			MontoTotal DECIMAL(10, 2),
			FechaEmisi�n DATETIME
		)

		CREATE TABLE M�todosPago (
			M�todoPagoID INT IDENTITY(1,1),
			Descripci�n NVARCHAR(50)
		)

		CREATE TABLE Pagos (
			PagoID INT IDENTITY(1,1),
			FacturaID INT,
			Monto DECIMAL(10, 2),
			FechaPago DATETIME,
			M�todoPago INT 
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
			Veh�culoID INT,
			RutaID INT,
			FechaHora DATETIME,
			Ubicaci�n NVARCHAR(150),
			EstadoEnRuta NVARCHAR(50)
		)

		CREATE TABLE RastreoUbicaci�n (
			Ubicaci�nID INT IDENTITY(1,1),
			RastreoID INT,
			FechaHora DATETIME,
			Ubicaci�n NVARCHAR(150),

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
			Ubicaci�n NVARCHAR(150)
		)
	COMMIT TRANSACTION;
END TRY   
BEGIN CATCH
	IF (XACT_STATE() <> 0) BEGIN
		ROLLBACK TRANSACTION;
	END
END CATCH 


