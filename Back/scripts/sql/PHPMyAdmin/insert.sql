-- 1) USUARIOS (AUTO_INCREMENT sobre id_usuario)
INSERT INTO `usuario` (`nombre_usuario`,`email`,`contrasenia`,`fecha_alta`) VALUES
('cliente1',       'cliente1@email.com',       'pass1234',    '2023-01-15'),
('vendedor1',      'vendedor1@tienda.com',     'vend123',     '2023-02-20'),
('admin1',         'admin@tienda.com',         'admin123',    '2023-01-10'),
('cliente2',       'cliente2@email.com',       'pass5678',    '2023-03-05'),
('vendedor2',      'vendedor2@tienda.com',     'vend456',     '2023-04-12'),
('cliente3',       'cliente3@email.com',       'pass456',     '2023-04-25'),
('cliente4',       'cliente4@email.com',       'client4_123', '2023-01-10'),
('cliente5',       'cliente5@email.com',       'client5_456', '2020-06-15'),
('vendedor3',      'vendedor3@tienda.com',     'vend3_456',   '2022-09-20'),
('vendedor4',      'vendedor4@tienda.com',     'vend4_456',   '2023-04-12'),
('vendedor5',      'vendedor5@tienda.com',     'vend5_456',   '2023-04-12'),
('admin2',         'admin2@tienda.com',        'admin2_123',  '2020-07-19'),
('admin3',         'admin3@tienda.com',        'admin3_123',  '2020-01-01'),
('admin4',         'admin4@tienda.com',        'admin4_123',  '2019-09-30'),
('admin5',         'admin5@tienda.com',        'admin5_123',  '2024-05-10'),
('cliente6',       'cliente6@email.com',       'clientePass3','2023-08-10'),
('vendedor6',      'vendedor6@tienda.com',     'vendPass3',   '2023-09-05'),
('vendedor7',      'vendedor7@tienda.com',     'vendPass3',   '2023-09-05'),
('Pablo Santos',   'PabloSantos@cliente.com',  'su1234',      '2023-09-08'),
('Raúl Ortega',    'Ortega17@gmail.com',       'usur19',      '2023-09-02'),
('Admin Finanzas', 'finanzas@admin.com',       'AdminAdmin',  '2023-07-03'),
('Admin logística','logistica@admin.com',      'logic1223',   '2023-09-05'),
('Armando Paredes','ArmaPared5@email.com',     'ArMaNdOp45',  '2023-08-10'),
('Ana Lizando',    'AnaLiza2@email.com',       'AnItA25',     '2022-03-12'),
('Lola Mento',     'Lomen12@email.com',        'TobIas15',    '2022-05-20'),
('Elena Nito',     'EleNito44@email.com',      'A@_eTp00',    '2024-10-06'),
('Elsa Broso',     'ElBro75@email.com',        'J#34-p5Y',    '2024-01-28'),
('Aquiles Bailo',  'AquilesBai33@email.com',   'ArMaNdOp',    '2020-02-06'),
('Carlos García',  'CarlosG@email.com',        'Carlos1234',  '2024-01-15'),
('Lucía Martínez', 'LuciaM@email.com',         'LuciA@123',   '2024-02-01'),
('Juan Pérez',     'JuanP@email.com',          'JuaN25!',     '2024-03-03'),
('Marta Sánchez',  'MartaS@email.com',         'Marta2024',   '2024-04-07')
;

-- 2) CLIENTES
INSERT INTO `cliente` (`id_usuario`,`nombre_cliente`,`ape1`,`ape2`,`DNI`,`direccion`,`telefono`,`tarjeta`) VALUES
(1,  'María',   'García',   'López',   '12345678A','Calle Mayor 1',          '611111111','1234567890123456'),
(4,  'Juan',    'Martínez', 'Sánchez', '87654321B','Avenida Sol 45',         '622222222','6543210987654321'),
(6,  'Ana',     'Rodríguez',NULL,      '13579246C','Plaza Central 8',        '633333333',NULL),
(7,  'Carlos',  'Fernández','Gómez',   '24681357D','Calle Luna 12',         NULL,      '9876543210987654'),
(8,  'Laura',   'Díaz',     NULL,      '98765432E','Paseo Marítimo 3',       '644444444',NULL),
(16, 'Elena',   'Morales',  'Gil',     '33445566F','Calle Arboleda 7',      '655555555','1122334455667788'),
(18, 'Pablo',   'Santos',   NULL,      '99887766G','Avenida Parque 22',     '666666666',NULL),
(24, 'Lola',    'Mento',    'Mucho',   '05060234B','Barrio Sesamo 15',      '666332211',NULL),
(22, 'Armando', 'Paredes',  'Grandes', '05676543Y','Calle Wallaby 42',      '6547382',  '559922334455'),
(28, 'Carlos',  'García',   'Fernández','12345678Z','Calle Libertad 15',     '634567890',NULL),
(29, 'Lucía',   'Martínez', 'Pérez',   '23456789A','Calle Palma 25',        '622334455',NULL)
;

-- 3) VENDEDORES
INSERT INTO `vendedor` (`id_usuario`,`nombre_vendedor`,`ape1`,`ape2`,`comision`,`CIF_NIF`) VALUES
(2,  'Pedro',   'Sánchez', NULL,      10.50,'A12345678'),
(5,  'Marta',   'Jiménez', NULL,       8.75,'B87654321'),
(9,  'Alberto', 'Gómez',    'Pérez',  12.00,'C11223344'),
(10, 'Sofía',   'López',    NULL,       9.25,'D55667788'),
(11, 'David',   'Hernández','Martín',   7.50,'E99887766'),
(17, 'Lucía',   'Torres',   'Méndez', 11.25,'F44332211'),
(19, 'Raúl',    'Ortega',    NULL,       9.75,'G55443322'),
(23, 'Ana',     'Lizando',  'Flores', 12.50,'05695342D'),
(26, 'Elsa',    'Broso',    'Vino',     7.60,'05543210T'),
(30, 'Juan',    'Pérez',    'González', 8.50,'B12345678'),
(31, 'Marta',   'Sánchez',  'Ramírez',10.00,'B23456789')
;

-- 4) ADMINISTRADORES
INSERT INTO `administrador` (`id_usuario`,`nombre_admin`,`DNI`) VALUES
(3,  'Administrador Principal','11222333A'),
(12, 'Admin Soporte',         '44555666B'),
(13, 'Admin Marketing',       '77888999C'),
(14, 'Admin Sistemas',        '22333444D'),
(15, 'Admin Ventas',          '55666777E'),
(20, 'Admin Finanzas',        '66777888F'),
(21, 'Admin Logística',       '88999000G'),
(25, 'Admin Finanzas',        '05634972H'),
(27, 'Admin Marketing',       '05786952P')
;

-- 5) PRODUCTOS (AUTO_INCREMENT sobre id_producto)
INSERT INTO `producto` (`id_vendedor`,`nombre`,`descripcion`) VALUES
(2,  'Camiseta básica',       'Camiseta de algodón 100% en varios colores'),
(5,  'Pantalón vaquero',      'Pantalón jeans ajustado para mujer'),
(2,  'Collar plata',          'Collar de plata esterlina con colgante'),
(9,  'Vestido verano',        'Vestido ligero para días calurosos'),
(10, 'Reloj madera',          'Reloj de pulsera con correa de madera'),
(5,  'Vestido invierno',      'Vestido para días invernales'),
(11, 'Falda escocesa',        'Falda para hombres de verdad'),
(10, 'Navaja',                'Para un apuñalamiento entre colegas'),
(2,  'Gafas de sol',          'Horteras como ellas solas pero la nueva moda'),
(11, 'Lágrima Postiza',       'Hay quien le gusta'),
(17, 'Sudadera capucha',      'Sudadera con capucha de algodón orgánico'),
(19, 'Pulsera cuero',         'Pulsera artesanal de cuero genuino'),
(17, 'Camiseta Premium',      'Camiseta con diseño premium'),
(19, 'One Piece',             'Literalmente es una pieza de algo'),
(23, 'Camiseta Linkin Park',  'Camiseta 100% algodón de la banda Linkin Park'),
(26, 'Pendientes Pentagrama', 'Pendientes de Acero Inoxidable con la forma de un pentagrama'),
(26, 'Anillo Dragon',         'Anillo de Aleación de Zinc con forma de Dragón'),
(23, 'Gorro Gengar',          'Gorro de lana basado en el Pokémon Gengar'),
(23, 'Mini Falda',            'Falda corta de Tela'),
(30, 'Chaqueta de Lana',      'Chaqueta de lana con botones grandes'),
(31, 'Botines de Cuero',      'Botines de cuero para mujer, cómodos y elegantes')
;

-- 6) ROPA
INSERT INTO `ropa` (`id_producto`,`talla`,`precio`) VALUES 
(1,  'M',  19.99),
(2,  'S',  39.95),
(4,  'L',  29.50),
(6,  'XL', 24.99),
(7,  'M',  35.75),
(11, 'L',  45.99),
(13, 'S',  32.50),
(15, 'XL', 16.99),
(18, 'M',  9.99),
(19, 'S',  11.99),
(20, 'L',  29.99),
(21, 'M',  49.99)
;




-- 7) ACCESORIOS (AUTO_INCREMENT sobre id_accesorio)
INSERT INTO `accesorios` (`id_producto`,`precio`) VALUES
(3,  45.00),
(5,  59.99),
(8,  15.50),
(9,  22.75),
(10, 89.99),
(12, 28.50),
(14, 75.00),
(16,  4.99),
(17,  3.99)
;



ALTER TABLE pedido AUTO_INCREMENT = 1001;

-- 8) PEDIDOS (AUTO_INCREMENT sobre id_pedido, arranca en 1001)
INSERT INTO `pedido` (`id_cliente`,`fecha_compra`) VALUES
(1,  '2023-05-10'),
(4,  NOW()),                -- se omite fecha para usar DEFAULT CURRENT_TIMESTAMP
(1,  '2023-06-15'),
(6,  NOW()),
(4,  '2023-07-20'),
(16, '2023-10-12'),
(18, NOW()),
(22, '2025-01-10'),
(24, '2025-03-28'),
(28, '2024-01-20'),
(29, '2024-02-15')
;



-- 9) LÍNEAS DE PEDIDO 
INSERT INTO `pedido_producto` (`id_pedido`,`id_producto`,`cantidad`) VALUES
(1001, 1, 2),
(1001, 3, 1),
(1002, 2, 1),
(1003, 5, 3),
(1004, 4, 1),
(1005, 6, 1),
(1006, 7, 2),
(1007,16, 1),
(1008,17, 2),
(1009,19, 1),
(1009,18, 3),
(1009,20, 2),
(1010,21, 1),
(1011,21, 2)
;
