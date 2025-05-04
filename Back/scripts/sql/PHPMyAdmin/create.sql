-- Eliminar tablas si existen
DROP TABLE IF EXISTS `pedido_producto`;
DROP TABLE IF EXISTS `pedido`;
DROP TABLE IF EXISTS `accesorios`;
DROP TABLE IF EXISTS `ropa`;
DROP TABLE IF EXISTS `producto`;
DROP TABLE IF EXISTS `administrador`;
DROP TABLE IF EXISTS `vendedor`;
DROP TABLE IF EXISTS `cliente`;
DROP TABLE IF EXISTS `usuario`;

-- Tabla usuario
CREATE TABLE `usuario` (
  `id_usuario` INT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre_usuario` VARCHAR(30) NOT NULL UNIQUE,
  `email` VARCHAR(100),
  `contrasenia` VARCHAR(25),
  `fecha_alta` DATE DEFAULT CURRENT_DATE,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tabla cliente
CREATE TABLE `cliente` (
  `id_usuario` INT(5) UNSIGNED NOT NULL,
  `nombre_cliente` VARCHAR(30) NOT NULL,
  `ape1` VARCHAR(30),
  `ape2` VARCHAR(30),
  `DNI` VARCHAR(15) NOT NULL UNIQUE,
  `direccion` VARCHAR(200),
  `telefono` VARCHAR(15),
  `tarjeta` VARCHAR(20),
  PRIMARY KEY (`id_usuario`),
  CONSTRAINT `fk_cliente_usuario`
    FOREIGN KEY (`id_usuario`) REFERENCES `usuario`(`id_usuario`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tabla vendedor
CREATE TABLE `vendedor` (
  `id_usuario` INT(5) UNSIGNED NOT NULL,
  `nombre_vendedor` VARCHAR(30),
  `ape1` VARCHAR(30),
  `ape2` VARCHAR(30),
  `comision` DECIMAL(10,2),
  `CIF_NIF` VARCHAR(15) NOT NULL UNIQUE,
  PRIMARY KEY (`id_usuario`),
  CONSTRAINT `fk_vendedor_usuario`
    FOREIGN KEY (`id_usuario`) REFERENCES `usuario`(`id_usuario`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tabla administrador
CREATE TABLE `administrador` (
  `id_usuario` INT(5) UNSIGNED NOT NULL,
  `nombre_admin` VARCHAR(50),
  `DNI` VARCHAR(15) NOT NULL UNIQUE,
  PRIMARY KEY (`id_usuario`),
  CONSTRAINT `fk_administrador_usuario`
    FOREIGN KEY (`id_usuario`) REFERENCES `usuario`(`id_usuario`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tabla producto
CREATE TABLE `producto` (
  `id_producto` INT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_vendedor` INT(5) UNSIGNED,
  `nombre` VARCHAR(30),
  `descripcion` VARCHAR(200),
  PRIMARY KEY (`id_producto`),
  CONSTRAINT `fk_producto_vendedor`
    FOREIGN KEY (`id_vendedor`) REFERENCES `vendedor`(`id_usuario`)
    ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tabla ropa
CREATE TABLE `ropa` (
  `id_producto` INT(5) UNSIGNED NOT NULL,
  `talla` ENUM('XS','S','M','L','XL','XXL') NOT NULL,
  `precio` DECIMAL(10,2) NOT NULL CHECK (`precio` >= 0),
  PRIMARY KEY (`id_producto`),
  CONSTRAINT `fk_ropa_producto`
    FOREIGN KEY (`id_producto`) REFERENCES `producto`(`id_producto`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tabla accesorios
CREATE TABLE `accesorios` (
  `id_accesorio` INT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_producto` INT(5) UNSIGNED,
  `precio` DECIMAL(10,2) NOT NULL CHECK (`precio` >= 0),
  PRIMARY KEY (`id_accesorio`),
  CONSTRAINT `fk_accesorios_producto`
    FOREIGN KEY (`id_producto`) REFERENCES `producto`(`id_producto`)
    ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tabla pedido
CREATE TABLE `pedido` (
  `id_pedido` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cliente` INT(5) UNSIGNED,
  `fecha_compra` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pedido`),
  CONSTRAINT `fk_pedido_cliente`
    FOREIGN KEY (`id_cliente`) REFERENCES `cliente`(`id_usuario`)
    ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tabla pedido_producto
CREATE TABLE `pedido_producto` (
  `id_pedido` INT(10) UNSIGNED NOT NULL,
  `id_producto` INT(5) UNSIGNED NOT NULL,
  `cantidad` INT(5) NOT NULL CHECK (`cantidad` > 0),
  PRIMARY KEY (`id_pedido`,`id_producto`),
  CONSTRAINT `fk_pedido_producto_pedido`
    FOREIGN KEY (`id_pedido`) REFERENCES `pedido`(`id_pedido`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_pedido_producto_producto`
    FOREIGN KEY (`id_producto`) REFERENCES `producto`(`id_producto`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
