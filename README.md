# 🏨 Sistema de Reservas de Hoteles

Sistema robusto de reservas de hoteles desarrollado con **PHP**, **Tailwind CSS**, **JavaScript** y **PostgreSQL**. Diseñado para ser modular, escalable y fácil de mantener. Permite la gestión completa de hoteles, habitaciones, usuarios, reservas, pagos y reportes.

---

## 📋 Contenido

- [📖 Descripción](#descripción)
- [📁 Estructura de Directorios](#estructura-de-directorios)
- [📂 Descripción de Carpetas y Archivos Clave](#descripción-de-carpetas-y-archivos-clave)
- [⚙️ Requisitos](#requisitos)
- [📦 Instalación](#instalación)
- [🔧 Configuración](#configuración)
- [🚀 Uso](#uso)
- [🛡️ Seguridad](#seguridad)
- [🧪 Pruebas](#pruebas)
- [🤝 Contribuciones](#contribuciones)
- [📄 Licencia](#licencia)

---

## 📖 Descripción

Este sistema permite la gestión integral de reservas hoteleras, incluyendo:

- Registro y autenticación de usuarios.
- Gestión de roles: **Clientes**, **Empleados**, **Administradores** y **Gerentes**.
- Administración de hoteles, habitaciones y disponibilidad.
- Creación y seguimiento de reservas.
- Pagos y generación de comprobantes.
- Visualización de reportes y estadísticas para la toma de decisiones.
- Interfaz moderna y responsiva usando **Tailwind CSS**.

---

## 📁 Estructura de Directorios

```
hotel-reservation-system/
│
├── public/               # Accesible públicamente (archivos del cliente)
│   ├── index.php         # Front controller
│   ├── .htaccess         # Reescritura de URLs (Apache)
│   ├── assets/           # Recursos estáticos
│   │   ├── css/
│   │   ├── js/
│   │   └── img/
│   └── uploads/          # Archivos subidos (comprobantes, imágenes)
│
├── src/                  # Código fuente PHP
│   ├── Core/             # Clases base (BD, helpers, middlewares)
│   ├── Controllers/      # Lógica de negocio
│   ├── Models/           # Entidades y consultas a PostgreSQL
│   ├── Routes/           # Definición de rutas
│   └── Views/            # Vistas HTML con Tailwind
│       ├── layout/
│       ├── auth/
│       ├── dashboard/
│       ├── reservations/
│       ├── rooms/
│       ├── hotels/
│       └── components/
│
├── config/               # Configuración global
│   ├── app.php
│   └── database.php
│
├── database/             # SQL y backups
│   ├── migrations/       # Scripts para crear/modificar BD
│   ├── seeders/          # Datos iniciales
│   └── backups/          # Copias de seguridad
│
├── logs/                 # Registro de errores y auditoría
├── .env                  # Variables de entorno
├── README.md             # Documentación (este archivo)
└── composer.json         # Dependencias PHP
```

---

## 📂 Descripción de Carpetas y Archivos Clave

| Carpeta / Archivo | Descripción |
|-------------------|-------------|
| `public/`         | Punto de entrada y recursos del frontend |
| `src/Core/`       | Conexión a BD, clases auxiliares, middlewares |
| `src/Controllers/`| Lógica de cada módulo (usuarios, reservas, etc.) |
| `src/Models/`     | Consultas SQL y manipulación de entidades |
| `src/Views/`      | Vistas estructuradas con componentes reutilizables |
| `config/`         | Configuración de la app y BD |
| `database/`       | Scripts de creación, datos de prueba, backups |
| `logs/`           | Logs del sistema para depuración o auditoría |
| `.env`            | Claves y credenciales sensibles |

---

## ⚙️ Requisitos

- PHP 8.0 o superior
- Servidor Apache o Nginx
- PostgreSQL 12 o superior
- Composer (gestión de dependencias PHP)
- Node.js y npm (para compilar Tailwind CSS)

---

## 📦 Instalación

1. **Clonar el repositorio**:

   ```bash
   git clone https://github.com/tu-usuario/hotel-reservation-system.git
   cd hotel-reservation-system
   ```

2. **Instalar dependencias PHP (si usas Composer)**:

   ```bash
   composer install
   ```

3. **Instalar Tailwind CSS (opcional si se compila localmente)**:

   ```bash
   npm install
   npm run build
   ```

4. **Configurar archivo `.env`**:

   ```bash
   cp .env.example .env
   ```

5. **Crear base de datos y aplicar migraciones**:

   ```sql
   CREATE DATABASE hotel_reservas;
   ```

   Luego:

   ```bash
   psql -U tu_usuario -d hotel_reservas -f database/migrations/init.sql
   ```

6. **Cargar datos iniciales (opcional)**:

   ```bash
   psql -U tu_usuario -d hotel_reservas -f database/seeders/demo_data.sql
   ```

7. **Dar permisos a carpetas necesarias**:

   ```bash
   chmod -R 775 public/uploads logs
   ```

---

## 🔧 Configuración

Edita el archivo `.env` con tus credenciales:

```dotenv
APP_ENV=local
APP_DEBUG=true
APP_URL=http://localhost/hotel-reservation-system/public

DB_HOST=localhost
DB_PORT=5432
DB_NAME=hotel_reservas
DB_USER=tu_usuario
DB_PASSWORD=tu_password
```

Y verifica `config/database.php` para que utilice estas variables.

---

## 🚀 Uso

- Inicia el servidor (Apache o con PHP embebido):

  ```bash
  php -S localhost:8000 -t public
  ```

- Accede en el navegador a:

  ```
  http://localhost:8000
  ```

- Funcionalidades por rol:
  - **Cliente**: Registro, login, reservas, pagos.
  - **Empleado**: Ver y gestionar reservas.
  - **Administrador**: Crear hoteles, habitaciones, usuarios.
  - **Gerente**: Acceso a reportes e informes de gestión.

---

## 🛡️ Seguridad

- **Hashing seguro de contraseñas** con `password_hash()`.
- **Validación y sanitización de entradas**.
- **Protección contra SQL Injection** con consultas preparadas (PDO).
- **Autenticación basada en sesiones y roles**.
- **Subidas controladas** de archivos a carpetas seguras.
- **Sistema de logs** para trazabilidad y auditoría.

---

## 🧪 Pruebas

- Incluye datos de prueba en `database/seeders/`.
- Se pueden ejecutar pruebas manuales desde el navegador o scripts automatizados en PHPUnit (si se implementan).

---

## 🤝 Contribuciones

¡Contribuciones son bienvenidas!

1. Haz un fork del proyecto.
2. Crea una rama nueva con tu mejora (`git checkout -b feature-nueva`).
3. Realiza tus cambios.
4. Haz commit y push (`git push origin feature-nueva`).
5. Abre un Pull Request.

---

## 📄 Licencia

Este proyecto está bajo la licencia **MIT**. Consulta el archivo [LICENSE](LICENSE) para más detalles.

---

## 📬 Contacto

Desarrollado por [Tu Nombre]  
✉️ Email: tuemail@ejemplo.com  
🐙 GitHub: [@tu-usuario](https://github.com/tu-usuario)
