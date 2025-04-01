/*
DROP TABLE pedido_linea_accesorio;
DROP TABLE pedido_linea_prenda;
DROP TABLE pedido;
DROP TABLE accesorio;
DROP TABLE prenda;
DROP TABLE producto;
DROP TABLE administrador;
DROP TABLE vendedor;
DROP TABLE cliente;
DROP TABLE usuario;
*/

-- Tabla usuario
CREATE TABLE usuario (
    id_usuario NUMBER(5) PRIMARY KEY,
    nombre_usuario VARCHAR2(30) NOT NULL UNIQUE,
    email VARCHAR2(100),
    contrasena VARCHAR2(25) NOT NULL,
    fecha_alta DATE
);

-- Tabla cliente
CREATE TABLE cliente (
    id_usuario NUMBER(5) PRIMARY KEY,
	id_cliente NUMBER(5) NOT NULL UNIQUE,
    nombre_cliente VARCHAR2(30) NOT NULL,
    ape1 VARCHAR2(30),
    ape2 VARCHAR2(30),
    DNI VARCHAR2(15),
    direccion VARCHAR2(200),
    telefono VARCHAR2(15),
    email VARCHAR2(100),
    tarjeta VARCHAR2(20),
	CONSTRAINT fk_cliente_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

-- Tabla vendedor
CREATE TABLE vendedor (
	id_usuario NUMBER(5) PRIMARY KEY,
	id_vendedor NUMBER(5) NOT NULL UNIQUE,
    nombre_vendedor VARCHAR2(30),
    ape1 varchar2(30),
    ape2 varchar2(30),
    comision NUMBER(10,2),
    CIF_NIF VARCHAR2(15) NOT NULL UNIQUE,
	CONSTRAINT fk_vendedor_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

-- Tabla administrador
CREATE TABLE administrador (
	id_usuario NUMBER(5) PRIMARY KEY,
	id_administrador NUMBER(5) NOT NULL UNIQUE,
    nombre_administrador VARCHAR2(30) NOT NULL,
	ape1 varchar2(30),
    ape2 varchar2(30),
    DNI VARCHAR2(15) NOT NULL UNIQUE,
	numero_seguridad_social VARCHAR2(15) NOT NULL UNIQUE,
	CONSTRAINT fk_administrador_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

-- Tabla producto
CREATE TABLE producto (
    id_producto NUMBER(5) PRIMARY KEY,
    id_vendedor NUMBER(5),
	nombre_producto VARCHAR2(50),
	CONSTRAINT fk_producto_vendedor FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor)
);

-- Tabla ropa
CREATE TABLE prenda (
	id_producto NUMBER(5),
    id_prenda NUMBER(5),
    nombre_prenda VARCHAR2(30),
    descripcion_prenda VARCHAR2(200),
    talla_prenda VARCHAR2(10),
    precio_unidad_prenda NUMBER(10,2),
	CONSTRAINT pk_prenda PRIMARY KEY (id_producto,id_prenda),
	CONSTRAINT fk_prenda_producto FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

-- Tabla accesorios
CREATE TABLE accesorio (
    id_producto NUMBER(5),
	id_accesorio NUMBER(5),
    nombre_accesorio VARCHAR2(30),
    descripcion_accesorio VARCHAR2(200),
	talla_accesorio VARCHAR2(10),
    precio_unidad_accesorio NUMBER(10,2),
	CONSTRAINT pk_ropa PRIMARY KEY (id_producto,id_accesorio),
	CONSTRAINT fk_accesorios_producto FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

-- Tabla pedido
CREATE TABLE pedido (
    id_pedido NUMBER(5) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_cliente NUMBER(5),
    fecha_pedido DATE,
	CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE pedido_linea_prenda (
    id_pedido NUMBER(5),
	id_producto NUMBER(5),
    id_prenda NUMBER(5),
    cantidad NUMBER(5),
	precio_unidad NUMBER(6,2),
    precio_linea NUMBER(6,2),
	CONSTRAINT pk_pedido_linea_prenda PRIMARY KEY (id_pedido,id_producto,id_prenda),
	CONSTRAINT fk_pedido_linea_prenda_pedido FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    CONSTRAINT fk_pedido_linea_prenda_prenda FOREIGN KEY (id_producto,id_prenda) REFERENCES prenda(id_producto,id_prenda)
);

CREATE TABLE pedido_linea_accesorio (
    id_pedido NUMBER(5),
	id_producto NUMBER(5),
    id_accesorio NUMBER(5),
    cantidad NUMBER(5),
	precio_unidad NUMBER(6,2),
    precio_linea NUMBER(6,2),
	CONSTRAINT pk_pedido_linea_accesorio PRIMARY KEY (id_pedido,id_producto,id_accesorio),
	CONSTRAINT fk_pedido_linea_accesorio_pedido FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    CONSTRAINT fk_pedido_linea_accesorio_accesorio FOREIGN KEY (id_producto,id_accesorio) REFERENCES accesorio(id_producto,id_accesorio)
);

