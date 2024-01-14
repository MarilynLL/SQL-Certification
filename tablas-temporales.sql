--Tabla temporal que contien la informacion de Empleado
CREATE TEMPORARY TABLE TempEmpleado(
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

INSERT INTO
TempEmpleado(RFC,nombre,paterno,materno,nss,fechaIngreso,fechaSalida,activo,esVendedor,esCajero,sueldo,tipoContrato)
VALUES ('HUNJ589lo54j8','Mauricio','Aguilar','Munguia',48521596,'2020-01-28','2022-02-19',FALSE,'yes','no',8000,'honorarios');
INSERT INTO TempEmpleado(RFC,nombre,paterno,materno,nss,fechaIngreso,fechaSalida,activo,esVendedor,esCajero,sueldo,tipoContrato)
VALUES ('LOJSKIOPY4851','Arturo','Flores', 'Parra',47582465931,'2018-05-15','2025-06-26',TRUE,'no','yes', 5000,'base');
INSERT INTO TempEmpleado(RFC,nombre,paterno,materno,nss,fechaIngreso,fechaSalida,activo,esVendedor,esCajero,sueldo,tipoContrato)
VALUES ('JUHIKONMJ5842', 'Laura', 'Mendoza', 'Garcia',58426934515,'2013-06-15','2019-09-04', FALSE,'no','yes', 4500,'base');
INSERT INTO TempEmpleado(RFC,nombre,paterno,materno,nss,fechaIngreso,fechaSalida,activo,esVendedor,esCajero,sueldo,tipoContrato)
VALUES ('JIKOERDF584RT','Edgar','Romero','Juarez',58945625369,'2008-12-26','2026-11-30',TRUE,'yes','no',9500,'base');
INSERT INTO TempEmpleado(RFC,nombre,paterno,materno,nss,fechaIngreso,fechaSalida,activo,esVendedor,esCajero,sueldo,tipoContrato)
VALUES ('SEDRF48596SRF','Maribel','Sanchez','Muñoz',14528963598,'2006-11-12','2012-12-06',FALSE,'yes','no',5000,'honorarios');
INSERT INTO TempEmpleado(RFC,nombre,paterno,materno,nss,fechaIngreso,fechaSalida,activo,esVendedor,esCajero,sueldo,tipoContrato)
VALUES ('JUYHUNI584986','Isaac','Sanchez','Muñoz',48571895623,'2010-11-12','2013-12-06',FALSE,'yes','no',5500,'honorarios');
INSERT INTO TempEmpleado(RFC,nombre,paterno,materno,nss,fechaIngreso,fechaSalida,activo,esVendedor,esCajero,sueldo,tipoContrato)
VALUES ('TGYRFTDER1547','Jorge','Sanchez','Rodriguez',48517956235,'2020-11-12','2025-12-06',TRUE,'no','yes',10000,'base');
INSERT INTO TempEmpleado(RFC,nombre,paterno,materno,nss,fechaIngreso,fechaSalida,activo,esVendedor,esCajero,sueldo,tipoContrato)
VALUES ('JUIORFT152465','Mariana','Luna','Jaramillo',48512693451,'2010-01-10','2020-12-24',FALSE,'yes','no',7000,'honorarios');
INSERT INTO TempEmpleado(RFC,nombre,paterno,materno,nss,fechaIngreso,fechaSalida,activo,esVendedor,esCajero,sueldo,tipoContrato)
VALUES ('UHITGY1562396','Maria del Carmen','Lopez','Herrera',84859662358,'2017-06-22','2018-02-16',FALSE,'yes','no',9000,'honorarios');
INSERT INTO TempEmpleado(RFC,nombre,paterno,materno,nss,fechaIngreso,fechaSalida,activo,esVendedor,esCajero,sueldo,tipoContrato)
VALUES ('GYHURJ15269R8','Edith','Jaramillo','Muñoz',47815962547,'2011-11-12','2024-12-06',TRUE,'no','yes',8000,'base');
INSERT INTO TempEmpleado(RFC,nombre,paterno,materno,nss,fechaIngreso,fechaSalida,activo,esVendedor,esCajero,sueldo,tipoContrato)
VALUES ('MFRDETG485615','Marlen','Perez','Regil',84596122587,'2018-11-11','2030-12-06',TRUE,'no','yes',4500,'base');
INSERT INTO TempEmpleado(RFC,nombre,paterno,materno,nss,fechaIngreso,fechaSalida,activo,esVendedor,esCajero,sueldo,tipoContrato)
VALUES ('AFPRDTFU15269','Alan','Fuentes','Pastor',88965236987,'2010-04-05','2023-12-06',TRUE,'yes','no',6500,'honorarios');
INSERT INTO TempEmpleado(RFC,nombre,paterno,materno,nss,fechaIngreso,fechaSalida,activo,esVendedor,esCajero,sueldo,tipoContrato)
VALUES ('ASP5846HUJI41','Adrian','Sola','Llanos',58465966858,'2020-11-12','2026-12-06',TRUE,'yes','no',7000,'honorarios');
INSERT INTO TempEmpleado(RFC,nombre,paterno,materno,nss,fechaIngreso,fechaSalida,activo,esVendedor,esCajero,sueldo,tipoContrato)
VALUES ('REMJI15982647','Rafael','Espino','Mendez',78459623157,'2015-06-23','2023-12-30',TRUE,'no','yes',200,'honorarios');
INSERT INTO TempEmpleado(RFC,nombre,paterno,materno,nss,fechaIngreso,fechaSalida,activo,esVendedor,esCajero,sueldo,tipoContrato)
VALUES ('IVLHUJ158462I','Isabel','Villamizar','Luna',78459625485,'2016-01-27','2021-12-06',FALSE,'yes','no',8500,'base');

--Tabla temporal con la informacion de Cliente
CREATE TEMPORARY TABLE tempCliente(
	correo varchar(80) PRIMARY KEY,
	celular int UNIQUE,
	nombre varchar(50) NOT NULL,
	paterno varchar(50) NOT NULL,
	materno varchar(50) NOT NULL,
	nivel varchar(30) CHECK(nivel in ('Primer Nivel', 'Diamante'))
); 

INSERT INTO tempCliente(correo,celular,nombre,paterno,materno,nivel)VALUES('macel@gmail.com',271484857,'Mariano','Razo','Restrepo','Diamante');
INSERT INTO tempCliente(correo,celular,nombre,paterno,materno,nivel)VALUES('dragoncito@hotmail.com',271748512,'Patricio','Razo','Restrepo','Diamante');
INSERT INTO tempCliente(correo,celular,nombre,paterno,materno,nivel)VALUES('miamor@ciencias.unam.mx',271845962,'Paulino','Razo','Restrepo','Diamante');
INSERT INTO tempCliente(correo,celular,nombre,paterno,materno,nivel)VALUES('holi@gmail.com',845962356,'Shakira','Matamoros','Alvarado','Primer Nivel');
INSERT INTO tempCliente(correo,celular,nombre,paterno,materno,nivel)VALUES('bichota@hotmail.com',859452615,'Alejandro','Alvarado','Suarez','Diamante');
INSERT INTO tempCliente(correo,celular,nombre,paterno,materno,nivel)VALUES('primerx@yahoo.com.mx',845012356,'Julian','Montenegro','Suarez','Primer Nivel');
INSERT INTO tempCliente(correo,celular,nombre,paterno,materno,nivel)VALUES('suspiro@gmail.com',874598659,'Alfredo','Ruiz','Martinez','Primer Nivel');
INSERT INTO tempCliente(correo,celular,nombre,paterno,materno,nivel)VALUES('menteyalma@yahoo.com.mx',84596236,'Axel','Didier','Hernandez','Diamante');
INSERT INTO tempCliente(correo,celular,nombre,paterno,materno,nivel)VALUES('reggaetonero@hotmail.com',123456789,'Jaqueline','Hernandez','Mendez','Primer Nivel');
INSERT INTO tempCliente(correo,celular,nombre,paterno,materno,nivel)VALUES('besoparati@gmail.com',987654321,'Angelica','Hernandez','Juarez','Diamante');
INSERT INTO tempCliente(correo,celular,nombre,paterno,materno,nivel)VALUES('unamonos@ciencias.unam.mx',963852741,'Guadalupe','Moreno','Reyes','Diamante');
INSERT INTO tempCliente(correo,celular,nombre,paterno,materno,nivel)VALUES('abuelitalove@gmail.com',741852963,'Mariana','Jaramillo','Perez','Diamante');
INSERT INTO tempCliente(correo,celular,nombre,paterno,materno,nivel)VALUES('perritos@hotmail.com',147258369,'Fernando','Valadez','Juarez','Diamante');
INSERT INTO tempCliente(correo,celular,nombre,paterno,materno,nivel)VALUES('corazon@yahoo.com.mx',369258147,'Jose','Perez','Sanchez','Primer Nivel');
INSERT INTO tempCliente(correo,celular,nombre,paterno,materno,nivel)VALUES('selecto@gmail.com',852741654,'Ana','Reyes','Vergara','Diamante');


--Tabla temporal que contiene la informacion de Monedero
CREATE TEMPORARY TABLE tempMonedero(
	correo varchar(80) UNIQUE,
	idMonedero serial NOT NULL, 
	saldo Money NOT NULL,
	PRIMARY KEY(correo, idMonedero)
);

INSERT INTO tempMonedero(correo,saldo) VALUES ('macel@gmail.com',15699);
INSERT INTO tempMonedero(correo,saldo) VALUES ('dragoncito@hotmail.com',2000);
INSERT INTO tempMonedero(correo,saldo) VALUES ('miamor@ciencias.unam.mx',1599);
INSERT INTO tempMonedero(correo,saldo) VALUES ('holi@gmail.com',15845);
INSERT INTO tempMonedero(correo,saldo) VALUES ('bichota@hotmail.com',254);
INSERT INTO tempMonedero(correo,saldo) VALUES ('primerx@yahoo.com.mx',1699);
INSERT INTO tempMonedero(correo,saldo) VALUES ('suspiro@gmail.com',1558);
INSERT INTO tempMonedero(correo,saldo) VALUES ('menteyalma@yahoo.com.mx',18499);
INSERT INTO tempMonedero(correo,saldo) VALUES ('reggaetonero@hotmail.com',1569);
INSERT INTO tempMonedero(correo,saldo) VALUES ('besoparati@gmail.com',18459);
INSERT INTO tempMonedero(correo,saldo) VALUES ('unamonos@ciencias.unam.mx',18599);
INSERT INTO tempMonedero(correo,saldo) VALUES ('abuelitalove@gmail.com',199);
INSERT INTO tempMonedero(correo,saldo) VALUES ('perritos@hotmail.com',1368);
INSERT INTO tempMonedero(correo,saldo) VALUES ('corazon@yahoo.com.mx',569);
INSERT INTO tempMonedero(correo,saldo) VALUES ('selecto@gmail.com',8451);

--Tabla temporal con la informacion de Ticket
CREATE TEMPORARY TABLE tempTicket(
	idTicket serial PRIMARY KEY,
	correo varchar(80) NOT NULL,
	idMonedero serial NOT NULL,
	total Money NOT NULL,
	metodoPago varchar(30) CHECK(metodoPago in ('tarjeta de debido','tarjeta de credito','efectivo')),
	noEmpleadoCajero serial UNIQUE,
	
	FOREIGN KEY (correo,idMonedero) REFERENCES tempMonedero(correo,idMonedero),
	FOREIGN KEY (noEmpleadoCajero) REFERENCES TempEmpleado(noEmpleado)
												ON UPDATE NO ACTION
												ON DELETE CASCADE
);

INSERT INTO tempTicket(correo,total,metodoPago) VALUES('macel@gmail.com',485,'efectivo');
INSERT INTO tempTicket(correo,total,metodoPago) VALUES('dragoncito@hotmail.com',484,'tarjeta de debido');
INSERT INTO tempTicket(correo,total,metodoPago) VALUES('miamor@ciencias.unam.mx',851,'tarjeta de credito');
INSERT INTO tempTicket(correo,total,metodoPago) VALUES('holi@gmail.com',8457,'tarjeta de credito');
INSERT INTO tempTicket(correo,total,metodoPago) VALUES('bichota@hotmail.com',41551,'efectivo');
INSERT INTO tempTicket(correo,total,metodoPago) VALUES('primerx@yahoo.com.mx',8452,'tarjeta de debido');
INSERT INTO tempTicket(correo,total,metodoPago) VALUES('suspiro@gmail.com',9558,'efectivo');
INSERT INTO tempTicket(correo,total,metodoPago) VALUES('menteyalma@yahoo.com.mx',5584,'tarjeta de credito');
INSERT INTO tempTicket(correo,total,metodoPago) VALUES('reggaetonero@hotmail.com',8457,'efectivo');
INSERT INTO tempTicket(correo,total,metodoPago) VALUES('besoparati@gmail.com',7481,'efectivo');
INSERT INTO tempTicket(correo,total,metodoPago) VALUES('unamonos@ciencias.unam.mx',8596,'tarjeta de debido');
INSERT INTO tempTicket(correo,total,metodoPago) VALUES('abuelitalove@gmail.com',8452,'tarjeta de credito');
INSERT INTO tempTicket(correo,total,metodoPago) VALUES('perritos@hotmail.com',8475,'tarjeta de debido');
INSERT INTO tempTicket(correo,total,metodoPago) VALUES('corazon@yahoo.com.mx',84751,'tarjeta de debido');
INSERT INTO tempTicket(correo,total,metodoPago) VALUES('selecto@gmail.com',584,'efectivo');


--Esta es la primera tabla que se pide en el ejercicio, las otras tablas temporales se crearon para establecer las llaves foraneas correspondientes.
CREATE TEMPORARY TABLE ventas_dia (
	noEmpleadoVendedor serial REFERENCES TempEmpleado(noEmpleado),
	correo varchar(80) REFERENCES tempCliente(correo),
	idTicket serial REFERENCES tempTicket(idTicket),
	fecha Date NOT NULL
);
INSERT INTO ventas_dia(correo,fecha) VALUES('macel@gmail.com','2022-12-29');
INSERT INTO ventas_dia(correo,fecha) VALUES('dragoncito@hotmail.com', '2022-12-29');
INSERT INTO ventas_dia(correo,fecha) VALUES('miamor@ciencias.unam.mx', '2022-12-29');
INSERT INTO ventas_dia(correo,fecha) VALUES('holi@gmail.com', '2022-12-29');
INSERT INTO ventas_dia(correo,fecha) VALUES('bichota@hotmail.com', '2022-12-29');



CREATE TEMPORARY TABLE nuevosp_diciembre(
	codigo char(10) PRIMARY KEY,
	nombre varchar(50) NOT NULL,
	descripcion text NOT NULL,
	costo money NOT NULL,
	marca varchar(50) NOT NULL,
	fecha Date NOT NULL
);

INSERT INTO nuevosp_diciembre(codigo,nombre,descripcion,costo,marca,fecha)
VALUES('F48LOI52', 'agenda','Libreta usada para la oganizacion de tiempos personales.',200,'AKME','2022-12-29');

INSERT INTO nuevosp_diciembre(codigo,nombre,descripcion,costo,marca,fecha)
VALUES('TRED4852KJ','gansito','Pastelillo sabor vainilla con mermelada de fresa',12,'Marinela','2022-12-15');

INSERT INTO nuevosp_diciembre(codigo,nombre,descripcion,costo,marca,fecha)
VALUES('EDR859UJH5','pijama','Ropa usada para dormir, con diseño de dinosaurio.',350,'Dormimundo','2022-12-26');

INSERT INTO nuevosp_diciembre(codigo,nombre,descripcion,costo,marca,fecha)
VALUES('OLKIU5147O','Set de escuadras','Conjunto de reglas y escuadras para uso escolar',105,'Duo Duo Miao','2022-12-23');

INSERT INTO nuevosp_diciembre(codigo,nombre,descripcion,costo,marca,fecha)
VALUES('YTFR445812','Botella','Botella de plastico para entrenamiento fisico',300,'GO SPORT','2022-12-29');