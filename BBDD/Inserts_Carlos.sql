-- USUARIO
INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (30, 'cliente30', 'cliente30@email.com', 'clientePass30', TO_DATE('2024-01-15', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (31, 'vendedor31', 'vendedor31@tienda.com', 'vendPass31', TO_DATE('2024-02-10', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (32, 'Laura Martínez', 'LauraMartinez@cliente.com', 'laura1234', TO_DATE('2024-02-20', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (33, 'Carlos Ruiz', 'Ruiz20@gmail.com', 'user33', TO_DATE('2024-03-10', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (34, 'Admin Ventas', 'ventas@admin.com', 'Admin123', TO_DATE('2024-05-05', 'YYYY-MM-DD'));

-- CLIENTE
INSERT INTO cliente (id_usuario, nombre_cliente, ape1, ape2, DNI, direccion, telefono, tarjeta) 
VALUES (30, 'Isabel', 'Lopez', 'Perez', '77665544C', 'Calle Luna 10', '611223344', '9988776655443322');

INSERT INTO cliente (id_usuario, nombre_cliente, ape1, DNI, direccion, telefono) 
VALUES (32, 'Laura', 'Martinez', '88997766D', 'Calle Sol 15', '644556677');

INSERT INTO cliente (id_usuario, nombre_cliente, ape1, ape2, DNI, direccion, telefono, tarjeta) 
VALUES (35, 'Antonio', 'Gomez', 'Sanchez', '11223344J', 'Calle Verde 33', '699887766', '9988776655442233');

INSERT INTO cliente (id_usuario, nombre_cliente, ape1, DNI, direccion, telefono) 
VALUES (36, 'Sofia', 'Diaz', '44556677K', 'Calle Rio 22', '655667788');

INSERT INTO cliente (id_usuario, nombre_cliente, ape1, ape2, DNI, direccion, tarjeta) 
VALUES (37, 'Elena', 'Fernandez', 'Gonzalez', '99887766L', 'Calle Mayor 5', '6677889900112233');

-- VENDEDOR
INSERT INTO vendedor (id_usuario, nombre_vendedor, ape1, ape2, comision, CIF_NIF) 
VALUES (31, 'Miguel', 'Ramirez', 'Herrera', 12.50, 'J33445566');

INSERT INTO vendedor (id_usuario, nombre_vendedor, ape1, comision, CIF_NIF) 
VALUES (33, 'Carlos', 'Ruiz', 8.90, 'K44556677');

INSERT INTO vendedor (id_usuario, nombre_vendedor, ape1, ape2, comision, CIF_NIF) 
VALUES (38, 'Ricardo', 'Sanchez', 'Martin', 9.75, 'L55667788');

INSERT INTO vendedor (id_usuario, nombre_vendedor, ape1, comision, CIF_NIF) 
VALUES (39, 'Ana', 'Perez', 10.30, 'M66778899');

INSERT INTO vendedor (id_usuario, nombre_vendedor, ape1, ape2, comision, CIF_NIF) 
VALUES (40, 'Eva', 'Martínez', 'López', 11.00, 'N77889900');

-- ADMINISTRADOR
INSERT INTO administrador (id_usuario, nombre_admin, DNI) 
VALUES (34, 'Admin Ventas', '66778899F');

INSERT INTO administrador (id_usuario, nombre_admin, DNI) 
VALUES (35, 'Admin Marketing', '88997766G');

INSERT INTO administrador (id_usuario, nombre_admin, DNI) 
VALUES (41, 'Admin TI', '11223344H');

INSERT INTO administrador (id_usuario, nombre_admin, DNI) 
VALUES (42, 'Admin Logística', '22334455I');

INSERT INTO administrador (id_usuario, nombre_admin, DNI) 
VALUES (43, 'Admin Compras', '33445566J');

-- PRODUCTO
INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion) 
VALUES (11, 31, 'Camiseta algodón', 'Camiseta básica de algodón orgánico');

INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion) 
VALUES (12, 33, 'Reloj digital', 'Reloj digital con pantalla táctil');

INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion) 
VALUES (13, 35, 'Chaqueta de cuero', 'Chaqueta de cuero genuino para mujer');

INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion) 
VALUES (14, 38, 'Bolsos de mano', 'Bolsos de mano de diseño exclusivo');

INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion) 
VALUES (15, 39, 'Sombrero de paja', 'Sombrero de paja unisex');

-- PEDIDO
INSERT INTO pedido (id_pedido, id_cliente, fecha_compra) 
VALUES (1011, 30, TO_DATE('2024-01-20', 'YYYY-MM-DD'));

INSERT INTO pedido (id_pedido, id_cliente) 
VALUES (1012, 32);

INSERT INTO pedido (id_pedido, id_cliente, fecha_compra) 
VALUES (1013, 35, TO_DATE('2024-02-25', 'YYYY-MM-DD'));

INSERT INTO pedido (id_pedido, id_cliente) 
VALUES (1014, 36);

INSERT INTO pedido (id_pedido, id_cliente, fecha_compra) 
VALUES (1015, 37, TO_DATE('2024-03-15', 'YYYY-MM-DD'));

-- PEDIDO_PRODUCTO
INSERT INTO pedido_producto (id_pedido, id_producto, cantidad) 
VALUES (1011, 11, 2);

INSERT INTO pedido_producto (id_pedido, id_producto, cantidad) 
VALUES (1012, 12, 1);

INSERT INTO pedido_producto (id_pedido, id_producto, cantidad) 
VALUES (1013, 13, 3);

INSERT INTO pedido_producto (id_pedido, id_producto, cantidad) 
VALUES (1014, 14, 2);

INSERT INTO pedido_producto (id_pedido, id_producto, cantidad) 
VALUES (1015, 15, 1);
