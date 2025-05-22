# Proyecto Ecommerce Ropa

![Estado del Proyecto](https://img.shields.io/badge/Estado-En%20Desarrollo-yellow)

Bienvenido/a al repositorio del **Proyecto Ecommerce Ropa**, una plataforma de comercio electrónico especializada en venta de ropa. Este proyecto está desarrollado con tecnologías web básicas (HTML, CSS, JavaScript) y utiliza una base de datos SQL para gestionar la información.

---

## 📦 Instalación y Configuración

### Requisitos
- Cliente de base de datos compatible con SQL (ej: MySQL, PostgreSQL).
- Navegador web moderno.

### Pasos para Configurar el Proyecto

1. **Descargar la Última Release**  
   Dirígete a la sección [Releases](https://github.com/BatlloseraDev/Proyecto_EcommerceRopa/releases) y descarga el archivo comprimido de la versión más reciente.

2. **Descomprimir el Proyecto**  
   Extrae el contenido del archivo descargado en una carpeta de tu preferencia.

3. **Configurar la Base de Datos**
   - Abre XAMPP
     1. Si no no lo tienes descargado dirigete a [XAMPP LINK](https://www.apachefriends.org/es/index.html) y descarga e instala la ultima versión para tu sistema operativo.
     2. Una vez instalado dale start a los modulos de Apache y MySQL consecutivamente
     3. Dale a 'Admin' del modulo de MySQL
     4. En la ventana que se acaba de abrir, en la barra lateral darle a nueva
     5. En el nombre de la base de datos poner literalmente "proyectoecommerce" y darle a crear
     6. Una vez que este creada situate en ella dandole click a la base de datos de proyectoecommerce.
     7. Dale a importar
     8. Importa los scripts sqls en este orden. 1 `create.sql`, 2 `insert.sql`.
        - Ubica los scripts SQL en la carpeta:  
           `Back/scripts/sql/PHPMyAdmin`
        - **Importa en este orden**:
            1. `create.sql`: Crea las tablas y estructura de la base de datos.
            2. `insert.sql`: Inserta datos iniciales para pruebas.
     9. Ya tendrías la base de datos configurada
4. **Inicial el programa**  
   En la carpeta `consultas` encontrarás ejemplos de consultas SQL realizadas por el equipo para validar el funcionamiento de la base de datos.

---

## 🚀 Uso del Proyecto

- **Frontend**: Navega a la carpeta `Front` y abre los archivos HTML en tu navegador para explorar la interfaz del sitio web.
- **Funcionalidades Actuales**:
  - Catálogo de productos.
  - Interfaz básica de navegación.
  - Estructura inicial de la base de datos.
  - Conexion a base de datos local
  - Interfaz en JAVAFX
  - LogIng de distintos usuarios

---


---

## 🛠️ Futuras Actualizaciones

El proyecto se encuentra en **fase de desarrollo activo**. Próximas características incluyen:
- Conexión completa entre el frontend y la base de datos.
- Sistema de autenticación de usuarios.

---

## 🤝 Contribución

Si deseas contribuir al proyecto, por favor:
1. Haz un fork del repositorio.
2. Crea una rama con tu feature (`git checkout -b feature/nueva-funcionalidad`).
3. Realiza un pull request detallando los cambios.

---

## 📄 Licencia

Este proyecto está bajo licencia del centro educativo: CIFP Virgen de Gracia. 

---

**Nota**: Para cualquier consulta, abre un *issue* en este repositorio o contacta al equipo de desarrollo.


