<?php

return [
    'driver' => 'pgsql',
    'host' => getenv('DB_HOST') ?: 'localhost',
    'port' => getenv('DB_PORT') ?: '5432',
    'database' => getenv('DB_DATABASE') ?: 'hotel_reservation',
    'username' => getenv('DB_USERNAME') ?: 'postgres',
    'password' => getenv('DB_PASSWORD') ?: '',
    'charset' => 'utf8',
    'prefix' => '',
    'schema' => 'public',
    'sslmode' => 'prefer',
];
