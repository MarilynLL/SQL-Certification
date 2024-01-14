--Vista 1
CREATE VIEW info_empleados AS 
SELECT nombre, paterno, materno, activo, esVendedor,esCajero
FROM sorpresitasNavideñas.Empleado;


--Vista 2
CREATE VIEW info_clientes AS
SELECT nombre, paterno, materno, saldo
FROM sorpresitasNavideñas.Monedero, sorpresitasNavideñas.Cliente
WHERE Cliente.correo = Monedero.correo;


--Vista 3
CREATE VIEW compras_cliente AS
SELECT nombre, paterno, materno, codigo, cantidad
FROM sorpresitasNavideñas.Ticket, sorpresitasNavideñas.Comprar, sorpresitasNavideñas.Cliente
WHERE (Comprar.idTicket = Ticket.idTicket) AND (Ticket.correo = Cliente.correo);


--Vista 4
CREATE VIEW iniciop AS
SELECT nombre
FROM sorpresitasNavideñas.Producto
WHERE LEFT(nombre,1) = 'p';