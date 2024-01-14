--Consulta 1
SELECT *
FROM sorpresitasNavideñas.Empleado
WHERE esVendedor = 'yes' AND (sueldo BETWEEN money '3500' AND money '10000');

--Consulta 2
SELECT MAX(costo) AS mayor_costo
FROM sorpresitasNavideñas.Producto;

--Consulta 3
SELECT noempleadocajero, COUNT(idticket) AS compras_por_cajero
FROM sorpresitasNavideñas.Ticket
GROUP BY noempleadocajero;

--Consulta 4
SELECT nombre, paterno, materno, saldo AS saldoporcliente
FROM sorpresitasNavideñas.Monedero,sorpresitasNavideñas.Cliente
WHERE Monedero.correo = Cliente.correo;

--Consulta 5
SELECT nombre, paterno, materno, costoFinal 
FROM sorpresitasNavideñas.Cliente, sorpresitasNavideñas.Ticket, sorpresitasNavideñas.Comprar
WHERE Comprar.idTicket = Ticket.idTicket AND Ticket.correo = Cliente.correo;


--Consulta 6
SELECT noEmpleado, nombre, paterno, materno
FROM sorpresitasNavideñas.Empleado, sorpresitasNavideñas.Ticket, sorpresitasNavideñas.Vender
WHERE (fechaIngreso BETWEEN '2020-01-01' AND '2020-12-31') AND (activo = TRUE) AND (noempleadoCajero = noempleadoVendedor)
GROUP BY noEmpleado,nombre;


--Consulta 7
SELECT nombre, marca, cantidad
FROM sorpresitasNavideñas.Comprar, sorpresitasNavideñas.Producto
WHERE Comprar.codigo = Producto.codigo;

--En la consulta 8 no se especifica cuantos productos deben mostrarse, asi que puse dos opciones:
--Se ordenan desde el menor stock y se visualizan el top 3, top 5...
--1.Se muestran los tres productos con menor stock.
SELECT nombre, marca,stock
FROM sorpresitasNavideñas.Producto
ORDER BY stock LIMIT 3;
--2.Se muestran los cinco productos con menor stock.
SELECT nombre,marca, stock
FROM sorpresitasNavideñas.Producto
ORDER BY stock LIMIT 5;

--Consulta 9
SELECT AVG(saldo::numeric) AS promedio_saldos
FROM sorpresitasNavideñas.Monedero;


--Consulta 10
SELECT COUNT(idTicket) AS cantidadtickets
FROM sorpresitasNavideñas.Ticket
WHERE Ticket.idMonedero = (SELECT idMonedero
FROM sorpresitasNavideñas.Monedero
WHERE saldo = (SELECT MAX(saldo) FROM sorpresitasNavideñas.Monedero));
