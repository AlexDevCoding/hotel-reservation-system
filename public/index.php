<?php

require_once __DIR__ . '/../vendor/autoload.php';

// Cargar variables de entorno
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__ . '/..');
$dotenv->load();

// Configurar manejo de errores
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Iniciar sesión
session_start();

// Cargar configuración de la base de datos
$dbConfig = require_once __DIR__ . '/../config/database.php';

// Cargar rutas
require_once __DIR__ . '/../routes/web.php';

// Manejar la solicitud
$requestMethod = $_SERVER['REQUEST_METHOD'];
$requestUri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);

// Enrutar la solicitud
try {
    $router->dispatch($requestMethod, $requestUri);
} catch (Exception $e) {
    // Manejar errores 404
    if ($e->getCode() === 404) {
        require_once __DIR__ . '/../src/Views/errors/404.php';
        exit;
    }
    
    // Log del error
    error_log($e->getMessage());
    
    // Mostrar página de error genérica
    http_response_code(500);
    echo "Ha ocurrido un error interno. Por favor, intente más tarde.";
}
