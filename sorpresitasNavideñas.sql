-- Database: postgres
-- BD: diplomado
CREATE DATABASE diplomado;

--Esquema: sorpresitasNavideñas
CREATE SCHEMA sorpresitasNavideñas;

--Creacion de la tabla empleado
--Los valores esperados en los atributos esVendedor y esCajero son 'yes', 'no'
--Los tipos de contrato abarcan por honorarios y base unicamente.
CREATE TABLE sorpresitasNavideñas.Empleado(
	noEmpleado serial PRIMARY KEY,
	RFC char(13) UNIQUE,
	nombre varchar(50) NOT NULL, 
	paterno varchar(50) NOT NULL,
	materno varchar(50) NOT NULL,
	nss char(11) UNIQUE,
	fechaIngreso Date NOT NULL,
	fechaSalida Date NOT NULL,
	activo BOOLEAN NOT NULL,
	esVendedor BOOLEAN CHECK(esVendedor in('yes', 'no')),
	esCajero BOOLEAN CHECK(esCajero in('yes', 'no')),
	sueldo Money NOT NULL,
	tipoContrato varchar(30) CHECK(tipoContrato in('honorarios', 'base'))
);



--Creacion de la tabla Monedero
--Aqui se tiene una llave primaria compuesta: PRIMARY KEY(col1,col2,...)
CREATE TABLE sorpresitasNavideñas.Monedero(
	correo varchar(80) UNIQUE,
	idMonedero serial NOT NULL, 
	saldo Money NOT NULL,
	PRIMARY KEY(correo, idMonedero)
);



--Creacion de la tabla Cliente.
CREATE TABLE sorpresitasNavideñas.Cliente(
	correo varchar(80) PRIMARY KEY,
	celular int UNIQUE,
	nombre varchar(50) NOT NULL,
	paterno varchar(50) NOT NULL,
	materno varchar(50) NOT NULL,
	nivel varchar(30) CHECK(nivel in ('Primer Nivel', 'Diamante'))
); 

--Creacion de la tabla Producto
CREATE TABLE sorpresitasNavideñas.Producto(
	codigo char(10) PRIMARY KEY,
	nombre varchar(50) NOT NULL,
	descripcion text NOT NULL,
	costo Money NOT NULL,
	stock int NOT NULL,
	marca varchar(50) NOT NULL
);

--Creacion de la tabla Ticket
CREATE TABLE sorpresitasNavideñas.Ticket(
	idTicket serial PRIMARY KEY,
	correo varchar(80) NOT NULL,
	idMonedero serial NOT NULL,
	total Money NOT NULL,
	metodoPago varchar(30) CHECK(metodoPago in ('tarjeta de debido','tarjeta de credito','efectivo')),
	noEmpleadoCajero serial NOT NULL,
	
	FOREIGN KEY (correo,idMonedero) REFERENCES sorpresitasNavideñas.Monedero(correo,idMonedero),
	FOREIGN KEY (noEmpleadoCajero) REFERENCES sorpresitasNavideñas.Empleado(noEmpleado)
);

--Creacion de la tabla Vender
CREATE TABLE sorpresitasNavideñas.Vender(
	noEmpleadoVendedor serial NOT NULL,
	correo varchar(80) NOT NULL,
	idTicket serial NOT NULL,
	
	FOREIGN KEY (noEmpleadoVendedor) REFERENCES sorpresitasNavideñas.Empleado(noEmpleado),
	FOREIGN KEY (correo) REFERENCES sorpresitasNavideñas.Cliente(correo),
	FOREIGN KEY (idTicket) REFERENCES sorpresitasNavideñas.Ticket(idTicket)
);

--Creacion de la tabla Comprar
CREATE TABLE sorpresitasNavideñas.Comprar(
	idTicket serial NOT NULL,
	codigo char(10) UNIQUE,
	cantidad int NOT NULL,
	costoFinal Money NOT NULL,
	
	FOREIGN KEY (idTicket) REFERENCES sorpresitasNavideñas.Ticket(idTicket),
	FOREIGN KEY (codigo) REFERENCES sorpresitasNavideñas.Producto(codigo)
);
