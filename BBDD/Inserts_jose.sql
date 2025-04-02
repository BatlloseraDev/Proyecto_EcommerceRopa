-- USUARIO
INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (16, 'cliente3', 'cliente3@email.com', 'clientePass3', TO_DATE('2023-08-10', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (17, 'vendedor3', 'vendedor3@tienda.com', 'vendPass3', TO_DATE('2023-09-05', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (17, 'vendedor3', 'vendedor3@tienda.com', 'vendPass3', TO_DATE('2023-09-05', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (18, 'Pablo Santos', 'PabloSantos@cliente.com', 'su1234', TO_DATE('2023-09-08', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (19, 'Raúl Ortega', 'Ortega17@gmail.com', 'usur19', TO_DATE('2023-09-021', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (20, 'Admin Finanzas', 'finanzas@admin.com', 'AdminAdmin', TO_DATE('2023-07-003', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (21, 'Admin logística', 'logistica@admin.com', 'logic1223', TO_DATE('2023-09-05', 'YYYY-MM-DD'));

--CLIENTE

INSERT INTO cliente (id_usuario, nombre_cliente, ape1, ape2, DNI, direccion, telefono, tarjeta) 
VALUES (16, 'Elena', 'Morales', 'Gil', '33445566F', 'Calle Arboleda 7', '655555555', '1122334455667788');

INSERT INTO cliente (id_usuario, nombre_cliente, ape1, DNI, direccion, telefono) 
VALUES (18, 'Pablo', 'Santos', '99887766G', 'Avenida Parque 22', '666666666');

--VENDEDOR

INSERT INTO vendedor (id_usuario, nombre_vendedor, ape1, ape2, comision, CIF_NIF) 
VALUES (17, 'Lucía', 'Torres', 'Méndez', 11.25, 'F44332211');

INSERT INTO vendedor (id_usuario, nombre_vendedor, ape1, comision, CIF_NIF) 
VALUES (19, 'Raúl', 'Ortega', 9.75, 'G55443322');

--ADMINISTRADOR
INSERT INTO administrador (id_usuario, nombre_admin, DNI) 
VALUES (20, 'Admin Finanzas', '66777888F');

INSERT INTO administrador (id_usuario, nombre_admin, DNI) 
VALUES (21, 'Admin Logística', '88999000G');

--PRODUCTO

INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion) 
VALUES (11, 17, 'Sudadera capucha', 'Sudadera con capucha de algodón orgánico');

INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion) 
VALUES (12, 19, 'Pulsera cuero', 'Pulsera artesanal de cuero genuino');

INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion) 
VALUES (13, 17, 'Camiseta Premium', 'Camiseta con diseño premium');

INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion) 
VALUES (14, 19, 'One Piece', 'Literalmente es una pieza de algo');

--ROPA
INSERT INTO ropa (id_producto, talla, precio) 
VALUES (11, 'L', 45.99);

INSERT INTO ropa (id_producto, talla, precio) 
VALUES (13, 'S', 32.50);

--ACCESORIOS
INSERT INTO accesorios (id_accesorio, id_producto, precio) 
VALUES (6, 12, 28.50);

INSERT INTO accesorios (id_accesorio, id_producto, precio) 
VALUES (7, 14, 75.00);

--PEDIDO

INSERT INTO pedido (id_pedido, id_cliente, fecha_compra) 
VALUES (1006, 16, TO_DATE('2023-10-12', 'YYYY-MM-DD'));

INSERT INTO pedido (id_pedido, id_cliente) 
VALUES (1007, 18);

--PEDIDO_PRODUCTO

INSERT INTO pedido_producto (id_pedido, id_producto, cantidad) 
VALUES (1006, 6, 1);

INSERT INTO pedido_producto (id_pedido, id_producto, cantidad) 
VALUES (1007, 7, 2);