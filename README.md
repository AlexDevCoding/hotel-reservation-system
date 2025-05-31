# 🏨 Sistema de Reservas de Hoteles

Sistema robusto de reservas de hoteles desarrollado con PHP, Tailwind CSS, JavaScript y PostgreSQL. Diseñado para ser modular, escalable y fácil de mantener.

---

## 📋 Contenido

- [Descripción](#descripción)
- [Estructura de directorios](#estructura-de-directorios)
- [Descripción de carpetas y archivos clave](#descripción-de-carpetas-y-archivos-clave)
- [Requisitos](#requisitos)
- [Instalación](#instalación)
- [Configuración](#configuración)
- [Uso](#uso)
- [Seguridad](#seguridad)
- [Contribuciones](#contribuciones)
- [Licencia](#licencia)

---

## Descripción

Este proyecto permite la gestión completa de reservas para múltiples hoteles, con usuarios, habitaciones, pagos y reportes. Incluye roles para clientes, empleados, administradores y gerentes. Está pensado para escalar y soportar integraciones futuras.

---

## Estructura de directorios

hotel-reservation-system/
│
├── public/ # Archivos accesibles públicamente (frontend)
│ ├── index.php # Punto de entrada principal (front controller)
│ ├── .htaccess # Reglas del servidor (ej. URLs amigables)
│ ├── assets/ # Recursos públicos como CSS, JS e imágenes
│ │ ├── css/
│ │ ├── js/
│ │ └── img/
│ └── uploads/ # Archivos subidos por usuarios (fotos, comprobantes)
│
├── src/ # Código fuente backend (PHP)
│ ├── Core/ # Clases base, conexión BD, middleware, helpers
│ ├── Controllers/ # Controladores con lógica de negocio
│ ├── Models/ # Modelos para interacción con la base de datos
│ ├── Routes/ # Definición de rutas y URLs
│ └── Views/ # Vistas (HTML + Tailwind CSS)
│ ├── layout/ # Plantillas base (header, footer)
│ ├── auth/ # Login, registro, recuperación
│ ├── dashboard/ # Panel administrador/gerente
│ ├── reservations/ # Gestión de reservas
│ ├── rooms/ # Gestión de habitaciones
│ ├── hotels/ # Gestión de hoteles
│ └── components/ # Componentes reutilizables (tarjetas, modales)
│
├── config/ # Configuraciones globales
│ ├── app.php # Configuración general
│ └── database.php # Parámetros de conexión a PostgreSQL
│
├── database/ # Scripts y backups de la base de datos
│ ├── migrations/ # Scripts SQL para creación y modificaciones
│ ├── seeders/ # Datos iniciales o de prueba
│ └── backups/ # Copias de seguridad de la BD
│
├── logs/ # Archivos de logs para auditoría y debugging
│
├── .env # Variables de entorno (credenciales, claves)
├── README.md # Documentación (este archivo)
└── composer.json # Gestión de dependencias PHP (opcional)


---

## Descripción de carpetas y archivos clave

- **public/**  
  Carpeta accesible desde el navegador. Contiene el archivo `index.php` que recibe todas las solicitudes (front controller), recursos estáticos y archivos subidos por usuarios.

- **src/Core/**  
  Clases base que incluyen conexión a base de datos, autenticación, middlewares y funciones auxiliares.

- **src/Controllers/**  
  Controladores que manejan la lógica de negocio y orquestan la interacción entre modelos y vistas.

- **src/Models/**  
  Modelos que representan las entidades del sistema y realizan consultas a la base de datos PostgreSQL.

- **src/Routes/**  
  Definición de rutas URL y asignación a controladores.

- **src/Views/**  
  Archivos de plantilla HTML con Tailwind CSS para la presentación visual.

- **config/**  
  Archivos de configuración para parámetros generales y conexión a la base de datos.

- **database/**  
  Scripts SQL para crear y modificar tablas, cargar datos iniciales y respaldos.

- **logs/**  
  Archivos para registrar eventos y errores del sistema.

- **.env**  
  Archivo para variables sensibles que no deben subirse a repositorios públicos, como credenciales.

---

## Requisitos

- PHP 8.0 o superior
- Servidor web Apache o Nginx
- PostgreSQL 12 o superior
- Composer (opcional, para dependencias)
- Node.js y npm (opcional, para manejar Tailwind CSS)

---


