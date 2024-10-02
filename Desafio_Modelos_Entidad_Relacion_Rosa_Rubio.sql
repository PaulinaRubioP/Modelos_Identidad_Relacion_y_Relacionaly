-- Se crea base de datos
CREATE DATABASE clinica;

--Conexion a base de datos
\c clinica

-- Se crea tabla Especialidad
CREATE TABLE Especialidad (Codigo SERIAL PRIMARY KEY, Descripcion VARCHAR(100) NOT NULL);

-- Se crea tabla Medico
CREATE TABLE Medico (RUT VARCHAR(12) PRIMARY KEY, Nombre VARCHAR(100) NOT NULL, Direccion VARCHAR(150), Codigo_Especialidad INT, FOREIGN KEY (Codigo_Especialidad) REFERENCES Especialidad(Codigo));

-- Se crea tabla Paciente
CREATE TABLE Paciente (RUT VARCHAR(12) PRIMARY KEY, Nombre VARCHAR(100) NOT NULL, Direccion VARCHAR(150));

-- Se crea tabla Consulta
CREATE TABLE Consulta (id SERIAL PRIMARY KEY, Fecha DATE NOT NULL, Hora_Atencion TIME NOT NULL, Numero_Box INT NOT NULL, RUT_Medico VARCHAR(12), RUT_Paciente VARCHAR(12), FOREIGN KEY (RUT_Medico) REFERENCES Medico(RUT), FOREIGN KEY (RUT_Paciente) REFERENCES Paciente(RUT));

-- Se crea tabla Licencia
CREATE TABLE Licencia (Codigo SERIAL PRIMARY KEY, Diagnostico VARCHAR(255) NOT NULL, Fecha_Inicio DATE NOT NULL, Fecha_Termino DATE NOT NULL, RUT_Medico VARCHAR(12), RUT_Paciente VARCHAR(12), FOREIGN KEY (RUT_Medico) REFERENCES Medico(RUT), FOREIGN KEY (RUT_Paciente) REFERENCES Paciente(RUT));

--Insert para probar sql
INSERT INTO Especialidad (Descripcion) VALUES 
('Cardiología'),
('Dermatología'),
('Pediatría'),
('Ginecología'),
('Neurología');

INSERT INTO Medico (RUT, Nombre, Direccion, Codigo_Especialidad) VALUES 
('11111111-1', 'Dr. Juan Pérez', 'Av. Siempre Viva 123', 1),
('22222222-2', 'Dra. Ana Gómez', 'Calle Falsa 456', 2),
('33333333-3', 'Dr. Carlos Sánchez', 'Paseo Central 789', 3),
('44444444-4', 'Dra. Luisa Martínez', 'Camino Verde 321', 4),
('55555555-5', 'Dr. Felipe Morales', 'Avenida Norte 654', 5);

INSERT INTO Paciente (RUT, Nombre, Direccion) VALUES 
('66666666-6', 'Pedro Fernández', 'Calle Luna 111'),
('77777777-7', 'María Rojas', 'Avenida Sol 222'),
('88888888-8', 'Jorge Díaz', 'Boulevard Estrellas 333'),
('99999999-9', 'Laura Muñoz', 'Calle Jardines 444'),
('12345678-9', 'Roberto Castillo', 'Camino Bosque 555');

INSERT INTO Consulta (Fecha, Hora_Atencion, Numero_Box, RUT_Medico, RUT_Paciente) VALUES 
('2024-01-10', '09:00', 1, '11111111-1', '66666666-6'),
('2024-01-12', '10:30', 2, '22222222-2', '77777777-7'),
('2024-01-15', '11:15', 3, '33333333-3', '88888888-8'),
('2024-01-18', '14:00', 4, '44444444-4', '99999999-9'),
('2024-01-20', '15:30', 5, '55555555-5', '12345678-9');

INSERT INTO Licencia (Diagnostico, Fecha_Inicio, Fecha_Termino, RUT_Medico, RUT_Paciente) VALUES 
('Hipertensión arterial', '2024-02-01', '2024-02-10', '11111111-1', '66666666-6'),
('Alergia severa', '2024-02-05', '2024-02-12', '22222222-2', '77777777-7'),
('Infección respiratoria', '2024-02-08', '2024-02-15', '33333333-3', '88888888-8'),
('Embarazo de riesgo', '2024-02-12', '2024-02-20', '44444444-4', '99999999-9'),
('Migraña crónica', '2024-02-14', '2024-02-21', '55555555-5', '12345678-9');



