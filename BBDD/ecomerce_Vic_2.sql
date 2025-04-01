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
    nombre_usuario VARCHAR2(30) NOT NULL UNIQUE,
    email VARCHAR2(100),
    contrasenia VARCHAR2(25),
    fecha_alta DATE
);

-- Tabla Cliente
CREATE TABLE cliente ( --cambiar PK
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
CREATE TABLE vendedor ( --cambiar PK
    id_usuario NUMBER(5) PRIMARY KEY,
    nombre_VENDEDOR VARCHAR2(30),
    ape1 varchar2(30),
    ape2 varchar2(30),
    comision NUMBER(10,2),
    CIF_NIF VARCHAR2(15) NOT NULL UNIQUE,
	CONSTRAINT fk_vendedor_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE CASCADE
);

-- Tabla Administrador
CREATE TABLE administrador ( --cambiar PK
    id_usuario NUMBER(5) PRIMARY KEY,
    nombre_ADMIN VARCHAR2(50),
    DNI VARCHAR2(15) NOT NULL UNIQUE,
	CONSTRAINT fk_administrador_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE CASCADE
);

-- Tabla Producto
CREATE TABLE producto ( --cambiar precio
    id_producto NUMBER(5) PRIMARY KEY,
    id_vendedor NUMBER(5),
	nombre VARCHAR2(30),
    descripcion VARCHAR2(200),
	CONSTRAINT fk_producto_vendedor FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_usuario) 
);

-- Tabla Ropa
CREATE TABLE ropa ( --cambiar precio, cambiar primary key, cambiar  talla
    id_producto NUMBER(5) PRIMARY KEY,
    talla VARCHAR2(5) CHECK (talla IN ('XS', 'S', 'M', 'L', 'XL', 'XXL')), --dominio
    recio NUMBER(10,2) CHECK (precio >= 0),
	CONSTRAINT fk_ropa_producto FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

-- Tabla Accesorios
CREATE TABLE accesorios ( --cambiar precio, dominio
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
CREATE TABLE pedido_producto ( 
    id_pedido NUMBER(10),
    id_producto NUMBER(5),
    cantidad NUMBER(5) CHECK (cantidad > 0),
    CONSTRAINT pk_pedido_linea PRIMARY KEY (id_pedido,id_producto),
	CONSTRAINT fk_pedido_linea_pedido FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    CONSTRAINT fk_producto_linea_pedido FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);
