--USUARIOS

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (1, 'cliente1', 'cliente1@email.com', 'pass1234', TO_DATE('2023-01-15', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (2, 'vendedor1', 'vendedor1@tienda.com', 'vend123', TO_DATE('2023-02-20', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (3, 'admin1', 'admin@tienda.com', 'admin123', TO_DATE('2023-01-10', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (4, 'cliente2', 'cliente2@email.com', 'pass5678', TO_DATE('2023-03-05', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (5, 'vendedor2', 'vendedor2@tienda.com', 'vend456', TO_DATE('2023-04-12', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (6, 'cliente3', 'cliente3@email.com', 'pass456', TO_DATE('2023-04-25', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (7, 'cliente4', 'cliente4@email.com', 'client4_123', TO_DATE('2023-01-10', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (8, 'cliente5', 'cliente5@email.com', 'client5_456', TO_DATE('2020-06-15', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (9, 'vendedor3', 'vendedor3@tienda.com', 'vend3_456', TO_DATE('2022-09-20', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (10, 'vendedor4', 'vendedor4@tienda.com', 'vend4_456', TO_DATE('2023-04-12', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (11, 'vendedor5', 'vendedor5@tienda.com', 'vend5_456', TO_DATE('2023-04-12', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (12, 'admin2', 'admin2@tienda.com', 'admin2_123', TO_DATE('2020-07-19', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (13, 'admin3', 'admin3@tienda.com', 'admin3_123', TO_DATE('2020-01-01', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (14, 'admin4', 'admin4@tienda.com', 'admin4_123', TO_DATE('2019-09-30', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (15, 'admin5', 'admin5@tienda.com', 'admin5_123', TO_DATE('2024-05-10', 'YYYY-MM-DD'));



-- CLIENTE
INSERT INTO cliente (id_usuario, nombre_cliente, ape1, ape2, DNI, direccion, telefono, tarjeta) 
VALUES (1, 'María', 'García', 'López', '12345678A', 'Calle Mayor 1', '611111111', '1234567890123456');

INSERT INTO cliente (id_usuario, nombre_cliente, ape1, ape2, DNI, direccion, telefono, tarjeta) 
VALUES (4, 'Juan', 'Martínez', 'Sánchez', '87654321B', 'Avenida Sol 45', '622222222', '6543210987654321');

INSERT INTO cliente (id_usuario, nombre_cliente, ape1, DNI, direccion, telefono) 
VALUES (6, 'Ana', 'Rodríguez', '13579246C', 'Plaza Central 8', '633333333');

INSERT INTO cliente (id_usuario, nombre_cliente, ape1, ape2, DNI, direccion, tarjeta) 
VALUES (7, 'Carlos', 'Fernández', 'Gómez', '24681357D', 'Calle Luna 12', '9876543210987654');

INSERT INTO cliente (id_usuario, nombre_cliente, ape1, DNI, direccion, telefono) 
VALUES (8, 'Laura', 'Díaz', '98765432E', 'Paseo Marítimo 3', '644444444');

--VENDEDOR
INSERT INTO vendedor (id_usuario, nombre_vendedor, ape1, ape2, comision, CIF_NIF) 
VALUES (2, 'Pedro', 'Sánchez', 'Ruiz', 10.50, 'A12345678');

INSERT INTO vendedor (id_usuario, nombre_vendedor, ape1, comision, CIF_NIF) 
VALUES (5, 'Marta', 'Jiménez', 8.75, 'B87654321');

INSERT INTO vendedor (id_usuario, nombre_vendedor, ape1, ape2, comision, CIF_NIF) 
VALUES (9, 'Alberto', 'Gómez', 'Pérez', 12.00, 'C11223344');

INSERT INTO vendedor (id_usuario, nombre_vendedor, ape1, comision, CIF_NIF) 
VALUES (10, 'Sofía', 'López', 9.25, 'D55667788');

INSERT INTO vendedor (id_usuario, nombre_vendedor, ape1, ape2, comision, CIF_NIF) 
VALUES (11, 'David', 'Hernández', 'Martín', 7.50, 'E99887766');


--ADMIN
INSERT INTO administrador (id_usuario, nombre_admin, DNI) 
VALUES (3, 'Administrador Principal', '11222333A');

INSERT INTO administrador (id_usuario, nombre_admin, DNI) 
VALUES (12, 'Admin Soporte', '44555666B');

INSERT INTO administrador (id_usuario, nombre_admin, DNI) 
VALUES (13, 'Admin Marketing', '77888999C');

INSERT INTO administrador (id_usuario, nombre_admin, DNI) 
VALUES (14, 'Admin Sistemas', '22333444D');

INSERT INTO administrador (id_usuario, nombre_admin, DNI) 
VALUES (15, 'Admin Ventas', '55666777E');

--PRODUCTO

INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion) 
VALUES (1, 2, 'Camiseta básica', 'Camiseta de algodón 100% en varios colores');

INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion) 
VALUES (2, 5, 'Pantalón vaquero', 'Pantalón jeans ajustado para mujer');

INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion) 
VALUES (3, 2, 'Collar plata', 'Collar de plata esterlina con colgante');

INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion) 
VALUES (4, 9, 'Vestido verano', 'Vestido ligero para días calurosos');

INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion) 
VALUES (5, 10, 'Reloj madera', 'Reloj de pulsera con correa de madera');

--ROPA

INSERT INTO ropa (id_producto, talla, precio) 
VALUES (1, 'M', 19.99);

INSERT INTO ropa (id_producto, talla, precio) 
VALUES (2, 'S', 39.95);

INSERT INTO ropa (id_producto, talla, precio) 
VALUES (4, 'L', 29.50);

INSERT INTO ropa (id_producto, talla, precio) 
VALUES (6, 'XL', 24.99);

INSERT INTO ropa (id_producto, talla, precio) 
VALUES (7, 'M', 35.75);

--ACCESORIO

INSERT INTO accesorios (id_accesorio, id_producto, precio) 
VALUES (1, 3, 45.00);

INSERT INTO accesorios (id_accesorio, id_producto, precio) 
VALUES (2, 5, 59.99);

INSERT INTO accesorios (id_accesorio, id_producto, precio) 
VALUES (3, 8, 15.50);

INSERT INTO accesorios (id_accesorio, id_producto, precio) 
VALUES (4, 9, 22.75);

INSERT INTO accesorios (id_accesorio, id_producto, precio) 
VALUES (5, 10, 89.99);


--PEDIDO

INSERT INTO pedido (id_pedido, id_cliente, fecha_compra) 
VALUES (1001, 1, TO_DATE('2023-05-10', 'YYYY-MM-DD'));

INSERT INTO pedido (id_pedido, id_cliente) 
VALUES (1002, 4);

INSERT INTO pedido (id_pedido, id_cliente, fecha_compra) 
VALUES (1003, 1, TO_DATE('2023-06-15', 'YYYY-MM-DD'));

INSERT INTO pedido (id_pedido, id_cliente) 
VALUES (1004, 6);

INSERT INTO pedido (id_pedido, id_cliente, fecha_compra) 
VALUES (1005, 4, TO_DATE('2023-07-20', 'YYYY-MM-DD'));


--PEDIDO-PROD

INSERT INTO pedido_producto (id_pedido, id_producto, cantidad) 
VALUES (1001, 1, 2);

INSERT INTO pedido_producto (id_pedido, id_producto, cantidad) 
VALUES (1001, 3, 1);

INSERT INTO pedido_producto (id_pedido, id_producto, cantidad) 
VALUES (1002, 2, 1);

INSERT INTO pedido_producto (id_pedido, id_producto, cantidad) 
VALUES (1003, 5, 3);

INSERT INTO pedido_producto (id_pedido, id_producto, cantidad) 
VALUES (1004, 4, 1);

