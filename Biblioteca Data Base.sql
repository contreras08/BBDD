-- Crear la base de datos
CREATE DATABASE Biblioteca;
USE Biblioteca;

-- Crear tabla usuarios
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    contrasena VARCHAR(255) NOT NULL,
    rol ENUM('administrador', 'bibliotecario', 'monitor') NOT NULL,
    sancionado BOOLEAN DEFAULT FALSE
);

-- Crear tabla libros
CREATE TABLE libros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    editorial VARCHAR(100),
    prestado BOOLEAN DEFAULT FALSE,
    reservado BOOLEAN DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS prestamos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    libro_id INT,
    usuario_id INT,
    solicitante_codigo VARCHAR(255),
    solicitante_nombre VARCHAR(255),
    fecha_prestamo DATE,
    fecha_devolucion DATE
);

CREATE TABLE IF NOT EXISTS reservas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    libro_id INT,
    usuario_id INT,
    solicitante_codigo VARCHAR(255),
    solicitante_nombre VARCHAR(255),
    fecha_reserva DATE
);







