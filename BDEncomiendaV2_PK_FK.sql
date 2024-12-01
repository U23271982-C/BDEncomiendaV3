USE BDEncomiendaV3
GO
ALTER TABLE Pais
	ADD CONSTRAINT PK_Pais
	PRIMARY KEY (PaisID)
GO
ALTER TABLE Ciudad
	ADD CONSTRAINT PK_Ciudad
	PRIMARY KEY (CiudadID)
GO
ALTER TABLE Direcciones
	ADD CONSTRAINT PK_Direcciones
	PRIMARY KEY (DirecciónID)
GO
ALTER TABLE Direcciones
	ADD CONSTRAINT FK_Direcciones_Ciudad
		FOREIGN KEY (Ciudad)
		REFERENCES Ciudad(CiudadID)
GO
ALTER TABLE Direcciones
	ADD CONSTRAINT FK_Direcciones_Pais
		FOREIGN KEY (Pais)
		REFERENCES Pais(PaisID)
GO
ALTER TABLE Clientes
	ADD CONSTRAINT PK_Clientes
	PRIMARY KEY (ClienteID)
GO
ALTER TABLE Clientes
	ADD CONSTRAINT FK_Cliente_Direcciones
		FOREIGN KEY (DirecciónID)
		REFERENCES Direcciones(DirecciónID)
GO
ALTER TABLE Remitentes
	ADD CONSTRAINT PK_Remitentes
	PRIMARY KEY (RemitenteID)
GO
ALTER TABLE Remitentes
	ADD CONSTRAINT FK_Remitentes_Clientes
		FOREIGN KEY (ClienteID)
		REFERENCES Clientes(ClienteID)
GO
ALTER TABLE Destinatarios
	ADD CONSTRAINT PK_Destinatarios
	PRIMARY KEY (DestinatarioID)
GO
ALTER TABLE Destinatarios
	ADD CONSTRAINT FK_Destinatarios_Clientes
		FOREIGN KEY (ClienteID)
		REFERENCES Clientes(ClienteID)
GO
ALTER TABLE TiposDeClientes
	ADD CONSTRAINT PK_TiposDeClientes
	PRIMARY KEY (TipoClienteID)
GO
ALTER TABLE DescuentosClientes
	ADD CONSTRAINT PK_DescuentosClientes
	PRIMARY KEY (DescuentoID)
GO
ALTER TABLE DescuentosClientes
	ADD CONSTRAINT FK_DescuentosClientes_TiposDeClientes
		FOREIGN KEY (TipoClienteID)
		REFERENCES TiposDeClientes(TipoClienteID)
GO
ALTER TABLE HistorialClientes
	ADD CONSTRAINT PK_HistorialClientes
	PRIMARY KEY (HistorialID)
GO
ALTER TABLE HistorialClientes
	ADD CONSTRAINT FK_HistorialClientes_Clientes
		FOREIGN KEY (ClienteID)
		REFERENCES Clientes(ClienteID)
GO
ALTER TABLE ContactosClientes
	ADD CONSTRAINT PK_ContactosClientes
	PRIMARY KEY (ContactoID)
GO
ALTER TABLE ContactosClientes
	ADD CONSTRAINT FK_ContactosClientes_Clientes
		FOREIGN KEY (ClienteID)
		REFERENCES Clientes(ClienteID)
GO
ALTER TABLE ClientesFrecuentes
	ADD CONSTRAINT PK_ClientesFrecuentes
	PRIMARY KEY (FrecuenteID)
GO
ALTER TABLE ClientesFrecuentes
	ADD CONSTRAINT FK_ClientesFrecuentes_Clientes
		FOREIGN KEY (ClienteID)
		REFERENCES Clientes(ClienteID)
GO
ALTER TABLE ReclamacionesClientes
	ADD CONSTRAINT PK_ReclamacionesClientes
	PRIMARY KEY (ReclamaciónID)
GO
ALTER TABLE ReclamacionesClientes
	ADD CONSTRAINT FK_ReclamacionesClientes_Clientes
		FOREIGN KEY (ClienteID)
		REFERENCES Clientes(ClienteID)
GO
ALTER TABLE Cargos
	ADD CONSTRAINT PK_Cargos
	PRIMARY KEY (CargoID)
GO
ALTER TABLE Empleados
	ADD CONSTRAINT PK_Empleados
	PRIMARY KEY (EmpleadoID)
GO
ALTER TABLE Empleados
	ADD CONSTRAINT FK_Empleados_Cargos
		FOREIGN KEY (CargoID)
		REFERENCES Cargos(CargoID)
GO
ALTER TABLE HistorialEmpleados
	ADD CONSTRAINT PK_HistorialEmpleados
	PRIMARY KEY (HistorialEmpleadoID)
GO
ALTER TABLE HistorialEmpleados
	ADD CONSTRAINT FK_HistorialEmpleados_Empleados
		FOREIGN KEY (EmpleadoID)
		REFERENCES Empleados(EmpleadoID)
GO
ALTER TABLE TiposDeEncomiendas
	ADD CONSTRAINT PK_TiposDeEncomiendas
	PRIMARY KEY (TipoEncomiendaID)
GO
ALTER TABLE Encomiendas
	ADD CONSTRAINT PK_Encomiendas
	PRIMARY KEY (EncomiendaID)
GO
ALTER TABLE Encomiendas
	ADD CONSTRAINT FK_Encomiendas_Remitentes
		FOREIGN KEY (RemitenteID)
		REFERENCES Remitentes(RemitenteID)
GO
ALTER TABLE Encomiendas
	ADD CONSTRAINT FK_Encomiendas_Destinatarios
		FOREIGN KEY (DestinatarioID)
		REFERENCES Destinatarios(DestinatarioID)
GO
ALTER TABLE Encomiendas
	ADD CONSTRAINT FK_Encomiendas_TiposDeEncomiendas
		FOREIGN KEY (TipoEncomiendaID)
		REFERENCES TiposDeEncomiendas(TipoEncomiendaID)
GO
ALTER TABLE EstadoEncomiendas
	ADD CONSTRAINT PK_EstadoEncomiendas
	PRIMARY KEY (EstadoID)
GO
ALTER TABLE SeguimientoEncomiendas
	ADD CONSTRAINT PK_SeguimientoEncomiendas
	PRIMARY KEY (SeguimientoID)
GO
ALTER TABLE SeguimientoEncomiendas
	ADD CONSTRAINT FK_SeguimientoEncomiendas_Encomiendas
		FOREIGN KEY (EncomiendaID)
		REFERENCES Encomiendas(EncomiendaID)
GO
ALTER TABLE SeguimientoEncomiendas
	ADD CONSTRAINT FK_SeguimientoEncomiendas_EstadoEncomiendas
		FOREIGN KEY (EstadoID)
		REFERENCES EstadoEncomiendas(EstadoID)
GO
ALTER TABLE Paquetes
	ADD CONSTRAINT PK_Paquetes
	PRIMARY KEY (PaqueteID)
GO
ALTER TABLE Paquetes
	ADD CONSTRAINT FK_Paquetes_Encomiendas
		FOREIGN KEY (EncomiendaID)
		REFERENCES Encomiendas(EncomiendaID)
GO
ALTER TABLE GarantiaEncomiendas
	ADD CONSTRAINT PK_GarantiaEncomiendas
	PRIMARY KEY (GarantiaID)
GO
ALTER TABLE GarantiaEncomiendas
	ADD CONSTRAINT FK_GarantiaEncomiendas_Encomiendas
		FOREIGN KEY (EncomiendaID)
		REFERENCES Encomiendas(EncomiendaID)
GO
ALTER TABLE Contenedores
	ADD CONSTRAINT PK_Contenedores
	PRIMARY KEY (ContenedorID)
GO
ALTER TABLE EncomiendasContenedores
	ADD CONSTRAINT PK_EncomiendasContenedores
	PRIMARY KEY (EncomiendaContenedorID)
GO
ALTER TABLE EncomiendasContenedores
	ADD CONSTRAINT FK_EncomiendasContenedores_Contenedores
		FOREIGN KEY (ContenedorID)
		REFERENCES Contenedores(ContenedorID)
GO
ALTER TABLE EncomiendasContenedores
	ADD CONSTRAINT FK_EncomiendasContenedores_Encomiendas
		FOREIGN KEY (EncomiendaID)
		REFERENCES Encomiendas(EncomiendaID)
GO
ALTER TABLE TiemposDeEntrega
	ADD CONSTRAINT PK_TiemposDeEntrega
	PRIMARY KEY (TiempoEntregaID)
GO
ALTER TABLE TiemposDeEntrega
	ADD CONSTRAINT FK_TiemposDeEntrega_Encomiendas
		FOREIGN KEY (EncomiendaID)
		REFERENCES Encomiendas(EncomiendaID)
GO
ALTER TABLE HistorialDeEnvios
	ADD CONSTRAINT PK_HistorialDeEnvios
	PRIMARY KEY (HistorialEnvioID)
GO
ALTER TABLE HistorialDeEnvios
	ADD CONSTRAINT FK_HistorialDeEnvios_Encomiendas
		FOREIGN KEY (EncomiendaID)
		REFERENCES Encomiendas(EncomiendaID)
GO
ALTER TABLE TiposDeVehículos
	ADD CONSTRAINT PK_TiposDeVehículos
	PRIMARY KEY (TipoVehículoID)
GO
ALTER TABLE Vehículos
	ADD CONSTRAINT PK_Vehículos
	PRIMARY KEY (VehículoID)
GO
ALTER TABLE Vehículos
	ADD CONSTRAINT FK_Vehículos_TiposDeVehículos
		FOREIGN KEY (TipoVehículo)
		REFERENCES TiposDeVehículos(TipoVehículoID)
GO
ALTER TABLE HistorialDeVehículos
	ADD CONSTRAINT PK_HistorialDeVehículos
	PRIMARY KEY (HistorialID)
GO
ALTER TABLE HistorialDeVehículos
	ADD CONSTRAINT FK_HistorialDeVehículos_Vehículos
		FOREIGN KEY (VehículoID)
		REFERENCES Vehículos(VehículoID)
GO
ALTER TABLE AsignacióndeConductores
	ADD CONSTRAINT PK_AsignacióndeConductores
	PRIMARY KEY (AsignaciónConductorID)
GO
ALTER TABLE AsignacióndeConductores
	ADD CONSTRAINT FK_AsignacióndeConductores_Empleados
		FOREIGN KEY (EmpleadoID)
		REFERENCES Empleados(EmpleadoID)
GO
ALTER TABLE AsignacióndeConductores
	ADD CONSTRAINT FK_AsignacióndeConductores_Vehículos
		FOREIGN KEY (VehículoID)
		REFERENCES Vehículos(VehículoID)
GO
ALTER TABLE Rutas
	ADD CONSTRAINT PK_Rutas
	PRIMARY KEY (RutaID)
GO
ALTER TABLE ParadasRuta
	ADD CONSTRAINT PK_ParadasRuta
	PRIMARY KEY (ParadaID)
GO
ALTER TABLE ParadasRuta
	ADD CONSTRAINT FK_ParadasRuta_Rutas
		FOREIGN KEY (RutaID)
		REFERENCES Rutas(RutaID)
GO
ALTER TABLE TiposDeRutas
	ADD CONSTRAINT PK_TiposDeRutas
	PRIMARY KEY (TipoRutaID)
GO
ALTER TABLE RutasProgramadas
	ADD CONSTRAINT PK_RutasProgramadas
	PRIMARY KEY (RutaProgramadaID)
GO
ALTER TABLE RutasProgramadas
	ADD CONSTRAINT FK_RutasProgramadas_Rutas
		FOREIGN KEY (RutaID)
		REFERENCES Rutas(RutaID)
GO
ALTER TABLE RutasProgramadas
	ADD CONSTRAINT FK_RutasProgramadas_TiposDeRutas
		FOREIGN KEY (TipoRutaID)
		REFERENCES TiposDeRutas(TipoRutaID)
GO
ALTER TABLE ReportesRutas
	ADD CONSTRAINT PK_ReportesRutas
	PRIMARY KEY (ReporteRutaID)
GO
ALTER TABLE ReportesRutas
	ADD CONSTRAINT FK_ReportesRutas_Rutas
		FOREIGN KEY (RutaID)
		REFERENCES Rutas(RutaID)
GO
ALTER TABLE Almacenes
	ADD CONSTRAINT PK_Almacenes
	PRIMARY KEY (AlmacénID)
GO
ALTER TABLE Productos
	ADD CONSTRAINT PK_Productos
	PRIMARY KEY (ProductoID)
GO
ALTER TABLE InventarioAlmacén
	ADD CONSTRAINT PK_InventarioAlmacén
	PRIMARY KEY (InventarioID)
GO
ALTER TABLE InventarioAlmacén
	ADD CONSTRAINT FK_InventarioAlmacén_Almacenes
		FOREIGN KEY (AlmacénID)
		REFERENCES Almacenes(AlmacénID)
GO
ALTER TABLE InventarioAlmacén
	ADD CONSTRAINT FK_InventarioAlmacén_Productos
		FOREIGN KEY (ProductoID)
		REFERENCES Productos(ProductoID)
GO
ALTER TABLE HistorialAlmacenes
	ADD CONSTRAINT PK_HistorialAlmacenes
	PRIMARY KEY (HistorialID)
GO
ALTER TABLE HistorialAlmacenes
	ADD CONSTRAINT FK_HistorialAlmacenes_Almacenes
		FOREIGN KEY (AlmacénID)
		REFERENCES Almacenes(AlmacénID)
GO
ALTER TABLE Facturas
	ADD CONSTRAINT PK_Facturas
	PRIMARY KEY (FacturaID)
GO
ALTER TABLE Facturas
	ADD CONSTRAINT FK_Facturas_Clientes
		FOREIGN KEY (ClienteID)
		REFERENCES Clientes(ClienteID)
GO
ALTER TABLE MétodosPago
	ADD CONSTRAINT PK_MétodosPago
	PRIMARY KEY (MétodoPagoID)
GO
ALTER TABLE Pagos
	ADD CONSTRAINT PK_Pagos
	PRIMARY KEY (PagoID)
GO
ALTER TABLE Pagos
	ADD CONSTRAINT FK_Pagos_Facturas
		FOREIGN KEY (FacturaID)
		REFERENCES Facturas(FacturaID)
GO
ALTER TABLE Pagos
	ADD CONSTRAINT FK_Pagos_MétodosPago
		FOREIGN KEY (MétodoPago)
		REFERENCES MétodosPago(MétodoPagoID)
GO
ALTER TABLE DetallesFactura
	ADD CONSTRAINT PK_DetallesFactura
	PRIMARY KEY (DetalleFacturaID)
GO
ALTER TABLE DetallesFactura
	ADD CONSTRAINT FK_DetallesFactura_Facturas
		FOREIGN KEY (FacturaID)
		REFERENCES Facturas(FacturaID)
GO
ALTER TABLE DetallesFactura
	ADD CONSTRAINT FK_DetallesFactura_Productos
		FOREIGN KEY (ProductoID)
		REFERENCES Productos(ProductoID)
GO
ALTER TABLE ImpuestosFactura
	ADD CONSTRAINT PK_ImpuestosFactura
	PRIMARY KEY (ImpuestoFacturaID)
GO
ALTER TABLE ImpuestosFactura
	ADD CONSTRAINT FK_ImpuestosFactura_Facturas
		FOREIGN KEY (FacturaID)
		REFERENCES Facturas(FacturaID)
GO
ALTER TABLE DescuentosFactura
	ADD CONSTRAINT PK_DescuentosFactura
	PRIMARY KEY (DescuentoFacturaID)
GO
ALTER TABLE DescuentosFactura
	ADD CONSTRAINT FK_DescuentosFactura_Facturas
		FOREIGN KEY (FacturaID)
		REFERENCES Facturas(FacturaID)
GO
ALTER TABLE RastreoEncomiendas
	ADD CONSTRAINT PK_RastreoEncomiendas
	PRIMARY KEY (RastreoID)
GO
ALTER TABLE RastreoEncomiendas
	ADD CONSTRAINT FK_RastreoEncomiendas_Encomiendas
		FOREIGN KEY (EncomiendaID)
		REFERENCES Encomiendas(EncomiendaID)
GO
ALTER TABLE RastreoEncomiendas
	ADD CONSTRAINT FK_RastreoEncomiendas_Vehículos
		FOREIGN KEY (VehículoID)
		REFERENCES Vehículos(VehículoID)
GO
ALTER TABLE RastreoEncomiendas
	ADD CONSTRAINT FK_RastreoEncomiendas_Rutas
		FOREIGN KEY (RutaID)
		REFERENCES Rutas(RutaID)
GO
ALTER TABLE RastreoUbicación
	ADD CONSTRAINT PK_RastreoUbicación
	PRIMARY KEY (UbicaciónID)
GO
ALTER TABLE RastreoUbicación
	ADD CONSTRAINT FK_RastreoUbicación_RastreoEncomiendas
		FOREIGN KEY (RastreoID)
		REFERENCES RastreoEncomiendas(RastreoID)
GO
ALTER TABLE RastreoDetalles
	ADD CONSTRAINT PK_RastreoDetalles
	PRIMARY KEY (DetalleRastreoID)
GO
ALTER TABLE RastreoDetalles
	ADD CONSTRAINT FK_RastreoDetalles_RastreoEncomiendas
		FOREIGN KEY (RastreoID)
		REFERENCES RastreoEncomiendas(RastreoID)
GO
ALTER TABLE RastreoHistorial
	ADD CONSTRAINT PK_RastreoHistorial
	PRIMARY KEY (HistorialRastreoID)
GO
ALTER TABLE RastreoHistorial
	ADD CONSTRAINT FK_RastreoHistorial_RastreoEncomiendas
		FOREIGN KEY (RastreoID)
		REFERENCES RastreoEncomiendas(RastreoID)
GO

