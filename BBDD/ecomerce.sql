/*
DROP TABLE pedido_linea;
DROP TABLE pedido;
DROP TABLE accesorios;
DROP TABLE ropa;
DROP TABLE producto;
DROP TABLE administrador;
DROP TABLE vendedor;
DROP TABLE cliente;
DROP TABLE usuario;
*/


-- Tabla Usuarios
CREATE TABLE usuario (
    id_usuario NUMBER(5) PRIMARY KEY,
    nombre VARCHAR2(30) NOT NULL UNIQUE,
    email VARCHAR2(100),
    contraseņa VARCHAR2(25),
    fecha_alta DATE
);

-- Tabla Cliente
CREATE TABLE cliente (
    id_cliente NUMBER(5) PRIMARY KEY,
    id_usuario NUMBER(5),
    nombre VARCHAR2(30) NOT NULL,
    ape1 VARCHAR2(30),
    ape2 VARCHAR2(30),
    DNI VARCHAR2(15),
    direccion VARCHAR2(200),
    telefono VARCHAR2(15),
    email VARCHAR2(100),
    tarjeta VARCHAR2(20),
	CONSTRAINT fk_cliente_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

-- Tabla Vendedor
CREATE TABLE vendedor (
    id_vendedor NUMBER(5) PRIMARY KEY,
    id_usuario NUMBER(5),
    nombre VARCHAR2(30),
    ape1 varchar2(30),
    ape2 varchar2(30),
    comision NUMBER(10,2),
    CIF_NIF VARCHAR2(15) NOT NULL UNIQUE,
	CONSTRAINT fk_vendedor_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

-- Tabla Administrador
CREATE TABLE administrador (
    id_administrador NUMBER(5) PRIMARY KEY,
    id_usuario NUMBER(5),
    nombre VARCHAR2(50),
    DNI VARCHAR2(15),
	CONSTRAINT fk_administrador_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

-- Tabla Producto
CREATE TABLE producto (
    id_producto NUMBER(5) PRIMARY KEY,
    id_vendedor NUMBER(5),
	nombre VARCHAR2(30),
    precio_unidad NUMBER(5),
	CONSTRAINT fk_producto_vendedor FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor)
);

-- Tabla Ropa
CREATE TABLE ropa (
    id_prenda NUMBER(5) PRIMARY KEY,
    id_producto NUMBER(5),
    nombre VARCHAR2(30),
    descripcion VARCHAR2(200),
    talla VARCHAR2(10),
    precio NUMBER(10,2),
	CONSTRAINT fk_ropa_producto FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

-- Tabla Accesorios
CREATE TABLE accesorios (
    id_accesorio NUMBER(5) PRIMARY KEY,
    id_producto NUMBER(5),
    nombre VARCHAR2(30),
    descripcion VARCHAR2(200),
    precio NUMBER(10,2),
    talla VARCHAR2(10),
	CONSTRAINT fk_accesorios_producto FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

-- Tabla Pedido
CREATE TABLE pedido (
    id_pedido NUMBER(10) PRIMARY KEY,
    id_cliente NUMBER(5),
    fecha_compra DATE,
	CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- Tabla Pedido_linea
CREATE TABLE pedido_linea (
    id_pedido NUMBER(10),
    linea_pedido NUMBER(3),
    id_producto NUMBER(5),
    cantidad NUMBER(5),
    precio_unidad NUMBER(6,2),
    precio_linea NUMBER(6,2),
    CONSTRAINT pk_pedido_linea PRIMARY KEY (id_pedido,linea_pedido),
	CONSTRAINT fk_pedido_linea_pedido FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    CONSTRAINT fk_producto_linea_pedido FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);
