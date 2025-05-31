-- Tabla de usuarios
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefono VARCHAR(20),
    password VARCHAR(255) NOT NULL,
    rol ENUM('cliente', 'admin', 'recepcionista') DEFAULT 'cliente',
    estado ENUM('activo', 'inactivo') DEFAULT 'activo',
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de hoteles
CREATE TABLE hoteles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    direccion TEXT NOT NULL,
    descripcion TEXT,
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de tipos de habitación
CREATE TABLE tipos_habitacion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT
);

-- Tabla de habitaciones
CREATE TABLE habitaciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_hotel INT NOT NULL,
    id_tipo INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    capacidad INT NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    estado ENUM('disponible', 'ocupada', 'mantenimiento') DEFAULT 'disponible',
    FOREIGN KEY (id_hotel) REFERENCES hoteles(id),
    FOREIGN KEY (id_tipo) REFERENCES tipos_habitacion(id)
);

-- Tabla de reservas
CREATE TABLE reservas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_habitacion INT NOT NULL,
    fecha_entrada DATE NOT NULL,
    fecha_salida DATE NOT NULL,
    cantidad_personas INT DEFAULT 1,
    total DECIMAL(10, 2),
    estado ENUM('pendiente', 'confirmada', 'cancelada', 'finalizada') DEFAULT 'pendiente',
    metodo_pago ENUM('efectivo', 'tarjeta', 'en_linea') DEFAULT 'efectivo',
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY (id_habitacion) REFERENCES habitaciones(id)
);

-- Tabla de pagos (opcional)
CREATE TABLE pagos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_reserva INT NOT NULL,
    monto DECIMAL(10,2),
    fecha_pago DATETIME DEFAULT CURRENT_TIMESTAMP,
    estado ENUM('exitoso', 'fallido', 'pendiente') DEFAULT 'pendiente',
    metodo ENUM('tarjeta', 'paypal', 'transferencia'),
    FOREIGN KEY (id_reserva) REFERENCES reservas(id)
);

-- Tabla de disponibilidad por fecha (opcional si se desea control por día)
CREATE TABLE disponibilidad (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_habitacion INT NOT NULL,
    fecha DATE NOT NULL,
    disponible BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (id_habitacion) REFERENCES habitaciones(id),
    UNIQUE (id_habitacion, fecha)
);
