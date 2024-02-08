/* Relación tipo 1:1 */
-- PASO 1
-- Tu código aquí
 CREATE TABLE Challenge2.usuarios (
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nombre VARCHAR (50) NOT NULL,
apellido VARCHAR (100) NOT NULL,
email VARCHAR (100) NOT NULL,
edad INT NOT NULL,
 )


INSERT INTO usuarios (nombre, apellido, email, edad) VALUES
('Juan', 'Gomez', 'juan.gomez@example.com', 28),
('Maria', 'Lopez', 'maria.lopez@example.com', 32),
('Carlos', 'Rodriguez', 'carlos.rodriguez@example.com', 25),
('Laura', 'Fernandez', 'laura.fernandez@example.com', 30),
('Pedro', 'Martinez', 'pedro.martinez@example.com', 22),
('Ana', 'Hernandez', 'ana.hernandez@example.com', 35),
('Miguel', 'Perez', 'miguel.perez@example.com', 28),
('Sofia', 'Garcia', 'sofia.garcia@example.com', 26),
('Javier', 'Diaz', 'javier.diaz@example.com', 31),
('Luis', 'Sanchez', 'luis.sanchez@example.com', 27),
('Elena', 'Moreno', 'elena.moreno@example.com', 29),
('Daniel', 'Romero', 'daniel.romero@example.com', 33),
('Paula', 'Torres', 'paula.torres@example.com', 24),
('Alejandro', 'Ruiz', 'alejandro.ruiz@example.com', 28),
('Carmen', 'Vega', 'carmen.vega@example.com', 29),
('Adrian', 'Molina', 'adrian.molina@example.com', 34),
('Isabel', 'Gutierrez', 'isabel.gutierrez@example.com', 26),
('Hector', 'Ortega', 'hector.ortega@example.com', 30),
('Raquel', 'Serrano', 'raquel.serrano@example.com', 32),
('Alberto', 'Reyes', 'alberto.reyes@example.com', 28);

-- PASO 2
-- Tu código aquí
--Crea una tabla de `roles`
--id_rol: tipo número, que sea una clave primaria e incremente su número.
-- nombre_rol: tipo texto y no puede dejarse el campo vacío. Máximo 50 caracteres.

CREATE TABLE Challenge2.roles (
id_rol INT AUTO_INCREMENT PRIMARY KEY,
nombre_rol VARCHAR (50) NOT NULL
)

-- Insertar datos de roles
INSERT INTO roles (nombre_rol) VALUES
('Bronce'),
('Plata'),
('Oro'),
('Platino');

-- PASO 3
-- Tu código aquí
--Añade la columna `id_rol` a usuarios. Rellena cada rol con números asociados a la tabla de `roles` 
--Crea la clave foránea (FOREIGN)
ALTER TABLE challenge2.usuarios
ADD id_rol  INT NOT NULL ;


ALTER TABLE usuarios ADD FOREIGN KEY (id_rol) REFERENCES roles(id_rol);

-- PASO 4
-- Tu código aquí


/* Relación tipo 1:N */
-- PASO 1
-- Tu código aquí
CREATE TABLE challenge2.categorias(
id_categoria INT PRIMARY KEY AUTO_INCREMENT,
nombre_categoria VARCHAR (100) NOT NULL
)

INSERT INTO challenge2.categorias (nombre_categoria) VALUES
('Electrónicos'),
('Ropa y Accesorios'),
('Libros'),
('Hogar y Cocina'),
('Deportes y aire libre'),
('Salud y cuidado personal'),
('Herramientas y mejoras para el hogar'),
('Juguetes y juegos'),
('Automotriz'),
('Música y Películas');

-- PASO 2
-- Tu código aquí
ALTER TABLE challenge2.usuarios
ADD id_categoria  INT  ;

-- PASO 3
-- Tu código aquí
UPDATE challenge2.usuarios SET id_categoria = 1 WHERE id_usuario IN (1, 5, 9, 13, 17);

-- PASO 4
-- Tu código aquí

/* Relación tipo N:M */
-- PASO 1
-- Tu código aquí


-- PASO 2
-- Tu código aquí


-- PASO 3
-- Tu código aquí
