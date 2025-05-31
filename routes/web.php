<?php

// Rutas de autenticación
$router->get('/login', 'AuthController@showLoginForm');
$router->post('/login', 'AuthController@login');
$router->get('/logout', 'AuthController@logout');

// Rutas del dashboard
$router->get('/dashboard', 'DashboardController@index');

// Rutas de hoteles
$router->get('/hotels', 'HotelController@index');
$router->get('/hotels/create', 'HotelController@create');
$router->post('/hotels', 'HotelController@store');
$router->get('/hotels/{id}', 'HotelController@show');
$router->get('/hotels/{id}/edit', 'HotelController@edit');
$router->put('/hotels/{id}', 'HotelController@update');
$router->delete('/hotels/{id}', 'HotelController@destroy');

// Rutas de habitaciones
$router->get('/rooms', 'RoomController@index');
$router->get('/rooms/create', 'RoomController@create');
$router->post('/rooms', 'RoomController@store');
$router->get('/rooms/{id}', 'RoomController@show');
$router->get('/rooms/{id}/edit', 'RoomController@edit');
$router->put('/rooms/{id}', 'RoomController@update');
$router->delete('/rooms/{id}', 'RoomController@destroy');

// Rutas de reservas
$router->get('/reservations', 'ReservationController@index');
$router->get('/reservations/create', 'ReservationController@create');
$router->post('/reservations', 'ReservationController@store');
$router->get('/reservations/{id}', 'ReservationController@show');
$router->get('/reservations/{id}/edit', 'ReservationController@edit');
$router->put('/reservations/{id}', 'ReservationController@update');
$router->delete('/reservations/{id}', 'ReservationController@destroy');

// Ruta por defecto
$router->get('/', function() {
    header('Location: /dashboard');
    exit;
}); 