/*
DROP TABLE pedido_producto;
DROP TABLE pedido;
DROP TABLE accesorios;
DROP TABLE ropa;
DROP TABLE producto;
DROP TABLE administrador;
DROP TABLE vendedor;
DROP TABLE cliente;
DROP TABLE usuario;
*/
-- ++++++ CREATES ++++++++ ------

-- Tabla Usuarios
CREATE TABLE usuario (
    id_usuario NUMBER(5) PRIMARY KEY,
    nombre_usuario VARCHAR2(30) NOT NULL UNIQUE,
    email VARCHAR2(100),
    contrasenia VARCHAR2(25),
    fecha_alta DATE
);

-- Tabla Cliente
CREATE TABLE cliente ( 
    id_usuario NUMBER(5) PRIMARY KEY,
    nombre_CLIENTE VARCHAR2(30) NOT NULL,
    ape1 VARCHAR2(30),
    ape2 VARCHAR2(30),
    DNI VARCHAR2(15) NOT NULL UNIQUE,
    direccion VARCHAR2(200),
    telefono VARCHAR2(15),
    tarjeta VARCHAR2(20),
	CONSTRAINT fk_cliente_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE CASCADE
);

-- Tabla Vendedor
CREATE TABLE vendedor ( 
    id_usuario NUMBER(5) PRIMARY KEY,
    nombre_VENDEDOR VARCHAR2(30),
    ape1 varchar2(30),
    ape2 varchar2(30),
    comision NUMBER(10,2),
    CIF_NIF VARCHAR2(15) NOT NULL UNIQUE,
	CONSTRAINT fk_vendedor_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE CASCADE
);

-- Tabla Administrador
CREATE TABLE administrador (
    id_usuario NUMBER(5) PRIMARY KEY,
    nombre_ADMIN VARCHAR2(50),
    DNI VARCHAR2(15) NOT NULL UNIQUE,
	CONSTRAINT fk_administrador_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE CASCADE
);

-- Tabla Producto
CREATE TABLE producto (
    id_producto NUMBER(5) PRIMARY KEY,
    id_vendedor NUMBER(5),
	nombre VARCHAR2(30),
    descripcion VARCHAR2(200),
	CONSTRAINT fk_producto_vendedor FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_usuario) 
);

-- Tabla Ropa
CREATE TABLE ropa ( 
    id_producto NUMBER(5) PRIMARY KEY,
    talla VARCHAR2(5) CHECK (talla IN ('XS', 'S', 'M', 'L', 'XL', 'XXL')), 
    precio NUMBER(10,2) CHECK (precio >= 0),
	CONSTRAINT fk_ropa_producto FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

-- Tabla Accesorios
CREATE TABLE accesorios ( 
    id_accesorio NUMBER(5) PRIMARY KEY,
    id_producto NUMBER(5),
    precio NUMBER(10,2) CHECK (precio >= 0),
	CONSTRAINT fk_accesorios_producto FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

-- Tabla Pedido
CREATE TABLE pedido (
    id_pedido NUMBER(10) PRIMARY KEY,
    id_cliente NUMBER(5),
    fecha_compra DATE DEFAULT SYSDATE,
	CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id_usuario)
);

-- Tabla Pedido_linea
--CREATE TABLE pedido_producto ( 
    --id_pedido NUMBER(10),
   -- id_producto NUMBER(5),
   -- cantidad NUMBER(5) CHECK (cantidad > 0),
    --CONSTRAINT pk_pedido_linea PRIMARY KEY (id_pedido,id_producto),
	--CONSTRAINT fk_pedido_linea_pedido FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    --CONSTRAINT fk_producto_linea_pedido FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
--);
-- Tabla Pedido_producto
CREATE TABLE pedido_producto ( 
    id_pedido NUMBER(10),
    id_producto NUMBER(5),
    cantidad NUMBER(5) CHECK (cantidad > 0),
    CONSTRAINT pk_pedido_producto PRIMARY KEY (id_pedido,id_producto),
	CONSTRAINT fk_pedido_producto_pedido FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    CONSTRAINT fk_producto_producto_pedido FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);



-------INSERTS----------

--Victor


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

INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion) 
VALUES (6, 5, 'Vestido invierno', 'Vestido para días invernales');

INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion) 
VALUES (7, 11, 'Falda escocesa', 'Falda para hombres de verdad');

INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion) 
VALUES (8, 10, 'Navaja', 'Para un apuñalamiento entre colegas');

INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion) 
VALUES (9, 2, 'Gafas de sol', 'Horteras como ellas solas pero la nueva moda');

INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion) 
VALUES (10, 11, 'Lagrima Postiza', 'Hay quien le gusta');

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


--Jose



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



--Daniel

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
VALUES(16, 23, 'Camiseta Linkin Park', 'Camiseta 100% algod�n de la banda Linkin Park');

INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion)
VALUES(17, 26, 'Pendientes Pentagrama', 'Pendientes de Acero Inoxidable con la forma de un pentagrama');

INSERT INTO producto (id_producto, id_vendedor, nombre, descripcion)
VALUES(18, 26, 'Anillo Dragon', 'Anillo de Aleacion de Zinc con forma de Drag�n');

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




--Carlos

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

