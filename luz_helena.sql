-- Tabla para los productos
CREATE DATABASE luz_helena;
CREATE TABLE Producto (
    id INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10, 2) NOT NULL,
    cantidadEnStock INT NOT NULL
);

-- Tabla para los clientes
CREATE TABLE Cliente (
    id INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    telefono VARCHAR(20),
    direccion TEXT
);

-- Tabla para los pedidos
CREATE TABLE Pedido (
    id INT PRIMARY KEY,
    idCliente INT,
    estado VARCHAR(50),
    FOREIGN KEY (idCliente) REFERENCES Cliente(id)
);

-- Tabla para los productos en un pedido (relación muchos a muchos)
CREATE TABLE ProductoPedido (
    idPedido INT,
    idProducto INT,
    cantidad INT,
    PRIMARY KEY (idPedido, idProducto),
    FOREIGN KEY (idPedido) REFERENCES Pedido(id),
    FOREIGN KEY (idProducto) REFERENCES Producto(id)
);

-- Tabla para los carritos de compras
CREATE TABLE CarritoDeCompras (
    id INT PRIMARY KEY,
    idCliente INT,
    FOREIGN KEY (idCliente) REFERENCES Cliente(id)
);

-- Tabla para los productos en un carrito de compras (relación muchos a muchos)
CREATE TABLE ProductoCarrito (
    idCarrito INT,
    idProducto INT,
    cantidad INT,
    PRIMARY KEY (idCarrito, idProducto),
    FOREIGN KEY (idCarrito) REFERENCES CarritoDeCompras(id),
    FOREIGN KEY (idProducto) REFERENCES Producto(id)
);
