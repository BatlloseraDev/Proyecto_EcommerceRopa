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
    nombre VARCHAR2(30) NOT NULL UNIQUE, --esto hay que hacerlo con cuidado si es el nombre de usuario o es el nombre de la persona
    email VARCHAR2(100),
    contrase�a VARCHAR2(25), --no poner ñ como variable
    fecha_alta DATE
);

-- Tabla Cliente
CREATE TABLE cliente ( --como es una ISA la PK siempre es id_usuario, id_cliente es un notnull unique
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
CREATE TABLE vendedor ( --como es una ISA la PK siempre es id_usuario, id_vendedor es un notnull unique
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
CREATE TABLE administrador ( --como es una ISA la PK siempre es id_usuario, id_administrador es un notnull unique, falta el NSS
    id_administrador NUMBER(5) PRIMARY KEY,
    id_usuario NUMBER(5),
    nombre VARCHAR2(50),
    DNI VARCHAR2(15),--Tiene que ser unique ya que es SK 
	CONSTRAINT fk_administrador_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

-- Tabla Producto
CREATE TABLE producto ( --quitar precio, ya que es propio del producto hijo no del producto padre
    id_producto NUMBER(5) PRIMARY KEY,
    id_vendedor NUMBER(5),
	nombre VARCHAR2(30),
    precio_unidad NUMBER(5),
	CONSTRAINT fk_producto_vendedor FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor)
);

-- Tabla Ropa
CREATE TABLE ropa ( -- La primary key debería de ser compuesta de id_prenda, id_producto
    id_prenda NUMBER(5) PRIMARY KEY,
    id_producto NUMBER(5),
    nombre VARCHAR2(30),
    descripcion VARCHAR2(200),
    talla VARCHAR2(10), --dominio
    precio NUMBER(10,2),
	CONSTRAINT fk_ropa_producto FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);
/*Esta es mas compleja de cambiar por que hay que analizarlo de tal manera, de que,
dependiendo de la talla cambia el precio ?, si es asi hay que añadir una tabla mas si no no*/




-- Tabla Accesorios
CREATE TABLE accesorios ( --cambiar precio, dominio, la primary key tiene  que serde producto y de accesorio
    id_accesorio NUMBER(5) PRIMARY KEY,
    id_producto NUMBER(5),
    nombre VARCHAR2(30),
    descripcion VARCHAR2(200),
    precio NUMBER(10,2),
    talla VARCHAR2(10),--dominio
	CONSTRAINT fk_accesorios_producto FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

/*Al final accesorios es lo mismo que ropa tal y como esta puesto por lo que fran seguramente nos diga algo*/

-- Tabla Pedido
CREATE TABLE pedido ( --Se tiene que crear de forma secuendia
    id_pedido NUMBER(10) PRIMARY KEY,
    id_cliente NUMBER(5),
    fecha_compra DATE,
	CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- Tabla Pedido_linea
CREATE TABLE pedido_linea ( -- quitar precio unidad, precio linea ?
    id_pedido NUMBER(10),
    linea_pedido NUMBER(3), --linea pedido es un atributo que no sirve para nada
    id_producto NUMBER(5),
    cantidad NUMBER(5),
    precio_unidad NUMBER(6,2), --precio unidad, ese precio ya viene de producto por lo que se esta creando rendundancia
    precio_linea NUMBER(6,2), --precio linea imagino que es el precio total del pedido
    CONSTRAINT pk_pedido_linea PRIMARY KEY (id_pedido,linea_pedido), -- la primary key deberia de ser entre id_pedido e id_producto
	CONSTRAINT fk_pedido_linea_pedido FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    CONSTRAINT fk_producto_linea_pedido FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);
