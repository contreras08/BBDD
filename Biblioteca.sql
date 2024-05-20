use BIBLIOTECA;

select * from libros;

-- ALTER TABLE prestamos ADD COLUMN solicitante_id INT;
-- ALTER TABLE reservas ADD COLUMN solicitante_id INT;

-- ALTER TABLE prestamos ADD COLUMN solicitante_codigo VARCHAR(255);
-- ALTER TABLE prestamos ADD COLUMN solicitante_nombre VARCHAR(255);

-- ALTER TABLE reservas ADD COLUMN solicitante_codigo VARCHAR(255);
-- ALTER TABLE reservas ADD COLUMN solicitante_nombre VARCHAR(255);



-- ALTER TABLE libros ADD COLUMN estado ENUM('disponible', 'prestado', 'reservado') DEFAULT 'disponible';

-- DELETE FROM usuarios where id=4;

-- Insertar usuarios de ejemplo
-- INSERT INTO usuarios (nombre, email, contrasena, rol) VALUES 
-- ('Admin', 'admin@biblioteca.com', 'hashed_password1', 'administrador'),
-- ('Biblio', 'biblio@biblioteca.com', 'hashed_password2', 'bibliotecario'),
-- ('Monitor', 'monitor@biblioteca.com', 'hashed_password3', 'monitor');

-- Insertar libros de ejemplo
-- INSERT INTO libros (titulo, autor, editorial) VALUES 
-- ('Don Quijote de la Mancha', 'Miguel de Cervantes', 'Editorial A'),
-- ('Cien Años de Soledad', 'Gabriel García Márquez', 'Editorial B'),
-- ('El Amor en los Tiempos del Cólera', 'Gabriel García Márquez', 'Editorial C');

-- Crear índices
-- CREATE INDEX idx_usuario_email ON usuarios(email);
-- CREATE INDEX idx_libro_titulo ON libros(titulo);
-- CREATE INDEX idx_prestamo_libro ON prestamos(libro_id);
-- CREATE INDEX idx_reserva_libro ON reservas(libro_id);