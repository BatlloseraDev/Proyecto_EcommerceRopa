-- Usuario 
INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (45, 'Carlos García', 'CarlosG@email.com', 'Carlos1234', TO_DATE('2024-01-15', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (46, 'Lucía Martínez', 'LuciaM@email.com', 'LuciA@123', TO_DATE('2024-02-01', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (47, 'Juan Pérez', 'JuanP@email.com', 'JuaN25!', TO_DATE('2024-03-03', 'YYYY-MM-DD'));

INSERT INTO usuario (id_usuario, nombre_usuario, email, contrasenia, fecha_alta) 
VALUES (48, 'Marta Sánchez', 'MartaS@email.com', 'Marta2024', TO_DATE('2024-04-07', 'YYYY-MM-DD'));

-- Cliente
INSERT INTO cliente (id_usuario, nombre_cliente, ape1, ape2, DNI, direccion, telefono) 
VALUES (45, 'Carlos', 'García', 'Fernández', '12345678Z', 'Calle Libertad 15', '634567890');

INSERT INTO cliente (id_usuario, nombre_cliente, ape1, ape2, DNI, direccion, telefono) 
VALUES (46, 'Lucía', 'Martínez', 'Pérez', '23456789A', 'Calle Palma 25', '622334455');

-- Vendedor
INSERT INTO vendedor (id_usuario, nombre_vendedor, ape1, ape2, comision, CIF_NIF) 
VALUES (47, 'Juan', 'Pérez', 'González', 8.50, 'B12345678');

INSERT INTO vendedor (id_usuario, nombre_vendedor, ape1, ape2, comision, CIF_NIF) 
VALUES (48, 'Marta', 'Sánchez', 'Ramírez', 10.00, 'B23456789');

-- Producto
INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion) 
VALUES (36, 47, 'Chaqueta de Lana', 'Chaqueta de lana con botones grandes');

INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion) 
VALUES (37, 48, 'Botines de Cuero', 'Botines de cuero para mujer, cómodos y elegantes');

-- Ropa
INSERT INTO ropa (id_producto, talla, precio) 
VALUES (36, 'L', 29.99);

INSERT INTO ropa (id_producto, talla, precio) 
VALUES (37, 'M', 49.99);

-- Pedidos
INSERT INTO pedido (id_pedido, id_cliente, fecha_compra) 
VALUES (1031, 45, TO_DATE('2024-01-20', 'YYYY-MM-DD'));

INSERT INTO pedido (id_pedido, id_cliente, fecha_compra) 
VALUES (1032, 46, TO_DATE('2024-02-15', 'YYYY-MM-DD'));

-- Pedidos-Producto
INSERT INTO pedido_producto (id_pedido, id_producto, cantidad) 
VALUES (1031, 36, 1);

INSERT INTO pedido_producto (id_pedido, id_producto, cantidad) 
VALUES (1032, 37, 2);
