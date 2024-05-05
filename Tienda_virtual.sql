-- Crear la base de datos
-- CREATE DATABASE tienda_virtual;

-- Usar la base de datos recién creada
USE tienda_virtual;

-- Crear la tabla Usuario
CREATE TABLE Usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    email VARCHAR(255),
    contraseña VARCHAR(255),
    direccion VARCHAR(255),
    contacto VARCHAR(255)
);

-- Crear la tabla Categoria
CREATE TABLE Categoria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    descripcion TEXT
);

-- Crear la tabla Producto
CREATE TABLE Producto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    descripcion TEXT,
    precio DECIMAL(10, 2),
    stock INT,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES Categoria(id)
);

-- Crear la tabla Pedido
CREATE TABLE Pedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATETIME,
    estado VARCHAR(255),
    metodo_pago VARCHAR(255),
    total DECIMAL(10, 2),
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(id)
);

-- Crear la tabla DetallePedido
CREATE TABLE DetallePedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cantidad INT,
    precio_unitario DECIMAL(10, 2),
    pedido_id INT,
    producto_id INT,
    FOREIGN KEY (pedido_id) REFERENCES Pedido(id),
    FOREIGN KEY (producto_id) REFERENCES Producto(id)
);

-- Crear la tabla Comentario y Reseña
CREATE TABLE ComentarioReseña (
    id INT AUTO_INCREMENT PRIMARY KEY,
    contenido TEXT,
    puntuacion INT,
    fecha_creacion DATETIME,
    usuario_id INT,
    producto_id INT,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(id),
    FOREIGN KEY (producto_id) REFERENCES Producto(id)
);

-- Crear la tabla PromocionDescuento
CREATE TABLE PromocionDescuento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(255),
    descripcion TEXT,
    tipo VARCHAR(255),
    valor DECIMAL(10, 2),
    fecha_inicio DATETIME,
    fecha_fin DATETIME
);
