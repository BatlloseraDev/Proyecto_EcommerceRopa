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

CREATE SEQUENCE usuario_seq --para creacion de usuarios
START WITH 1 
INCREMENT BY 1 
NOCACHE 
NOCYCLE;

CREATE SEQUENCE producto_seq --para creacion de productos
START WITH 1 
INCREMENT BY 1 
NOCACHE 
NOCYCLE;

CREATE SEQUENCE accesorio_seq --para creacion de accesorios
START WITH 1 
INCREMENT BY 1 
NOCACHE 
NOCYCLE;

CREATE SEQUENCE pedido_seq --para creacion de pedidos
START WITH 1001 
INCREMENT BY 1 
NOCACHE 
NOCYCLE;
