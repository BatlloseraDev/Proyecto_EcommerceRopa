--Usuario 
INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (22, 'Armando Paredes', 'ArmaPared5@email.com', 'ArMaNdOp45', TO_DATE('2023-08-10', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (23, 'Ana Lizando', 'AnaLiza2@email.com', 'AnItA25', TO_DATE('2022-03-12', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (24, 'Lola Mento', 'Lomen12@email.com', 'TobIas15', TO_DATE('2022-05-20', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (25, 'Elena Nito', 'EleNito44@email.com', 'A@_eTp00', TO_DATE('2024-10-06', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (26, 'Elsa Broso', 'ElBro75@email.com', 'J#34-p5Y', TO_DATE('2024-01-28', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (27, 'Aquiles Bailo', 'AquilesBai33@email.com', 'ArMaNdOp', TO_DATE('2020-02-06', 'YYYY-MM-DD'));

--Cliente
INSERT INTO cliente (id_usuario, nombre_cliente, ape1, ape2, DNI, direccion, telefono)
VALUES (24, 'Lola', 'Mento','Mucho', '05060234B', 'Barrio Sesamo 15', '666332211');

INSERT INTO cliente (id_usuario, nombre_cliente, ape1, ape2, DNI, direccion, telefono, tarjeta)
VALUES (22, 'Armando', 'Paredes', 'Grandes', '05676543Y', 'Calle Wallaby 42', '6547382', '559922334455');

--Vendedor
INSERT INTO vendedor (id_usuario, nombre_vendedor, ape1, ape2, comision, CIF_NIF)
VALUES(23, 'Ana', 'Lizando', 'Flores', 12.50, '05695342D');

INSERT INTO vendedor (id_usuario, nombre_vendedor, ape1, ape2, comision, CIF_NIF)
VALUES(26, 'Elsa', 'Broso', 'Vino', 7.60, '05543210T');

--Admin
INSERT INTO administrador (id_usuario, nombre_admin, DNI)
VALUES(25, 'Admin Finanzas', '05634972H');

INSERT INTO administrador (id_usuario, nombre_admin, DNI)
VALUES(27,'Admin Marketing', '05786952P');

--Producto
INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion)
VALUES(16, 23, 'Camiseta Linkin Park', 'Camiseta 100% algodón de la banda Linkin Park');

INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion)
VALUES(17, 26, 'Pendientes Pentagrama', 'Pendientes de Acero Inoxidable con la forma de un pentagrama');

INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion)
VALUES(18, 26, 'Anillo Dragon', 'Anillo de Aleacion de Zinc con forma de Dragón');

INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion)
VALUES(19, 23, 'Gorro Gengar', 'Gorro de lana basado en el Pokemon Gengar');

INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion)
VALUES(20, 23, 'Mini Falda', 'Falda corta de Tela');

--Ropa
INSERT INTO ropa (id_producto, talla, precio)
VALUES(16, 'XL', 16.99);

INSERT INTO ropa (id_producto, talla, precio)
VALUES(19, 'M', 9.99);

INSERT INTO ropa (id_producto, talla, precio)
VALUES(20, 'S', 11.99);

--Accesorios

INSERT INTO accesorios (id_accesorio, id_producto, precio) 
VALUES(8,17,4.99);

INSERT INTO accesorios (id_accesorio, id_producto, precio) 
VALUES(9,18,3.99);

--Pedidos
INSERT INTO pedido (id_pedido, id_cliente, fecha_compra) 
VALUES (1008, 22, TO_DATE('2025-01-10', 'YYYY-MM-DD'));

INSERT INTO pedido (id_pedido, id_cliente, fecha_compra) 
VALUES(1009, 24, TO_DATE('2025-03-28','YYYY-MM-DD'));

--Pedidos-Producto
INSERT INTO pedido_producto (id_pedido, id_producto, cantidad) 
VALUES(1008, 16, 1);

INSERT INTO pedido_producto (id_pedido, id_producto, cantidad) 
VALUES(1008, 17, 2);

INSERT INTO pedido_producto (id_pedido, id_producto, cantidad) 
VALUES(1009, 19, 1);

INSERT INTO pedido_producto (id_pedido, id_producto, cantidad) 
VALUES(1009, 18, 3);

INSERT INTO pedido_producto (id_pedido, id_producto, cantidad) 
VALUES(1009, 20, 2);