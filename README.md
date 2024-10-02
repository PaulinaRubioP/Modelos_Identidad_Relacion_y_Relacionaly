# Desafío: Modelos Entidad-Relación y Relacional

Este desafío está orientado a la práctica de modelado de datos utilizando los conceptos de Entidad-Relación (ER) y Normalización en bases de datos. Se basa en el modelado de un sistema de consultas médicas en una clínica, donde se capturan las relaciones entre médicos, especialidades, pacientes, consultas y licencias médicas.

## Descripción del Proyecto

El proyecto busca modelar el sistema de la clínica utilizando diagramas Entidad-Relación, aplicando las mejores prácticas para la normalización de datos. Se trabaja sobre un conjunto de entidades con relaciones entre ellas y atributos que permiten manejar correctamente la información de la clínica.

## Estructura del Proyecto

### Entidades Principales
- **Médico**: Representa a los médicos de la clínica, con atributos clave como el `RUT`, `Nombre` y `Dirección`.
- **Especialidad**: Cada médico tiene una especialidad, y una especialidad puede ser compartida por varios médicos.
- **Paciente**: Representa a los pacientes atendidos, con datos como `Nombre`, `RUT` y `Dirección`.
- **Consulta**: Registra las consultas realizadas, incluyendo `Fecha`, `Hora de atención` y `Número de box (consultorio)`.
- **Licencia Médica**: Opcionalmente, un médico puede entregar una licencia a un paciente, registrando datos como `Código`, `Diagnóstico`, `Fecha de inicio` y `Fecha de término`.

### Relaciones
- Un **médico** puede tener varias **consultas**.
- Un **paciente** puede tener varias **consultas**.
- Un **médico** puede entregar una **licencia médica** a un paciente.

## Diagrama Entidad-Relación

El diagrama Entidad-Relación está implementado utilizando **Mermaid** para representar las relaciones entre las entidades de manera visual.

![mermaid_Modelos Entidad](https://github.com/user-attachments/assets/c5a80f19-740d-43f8-b773-45ebacf74d6b)


### Ejemplo del diagrama en Mermaid

erDiagram
    MEDICO {
        string Nombre
        string RUT
        string Direccion
    }
    
    ESPECIALIDAD {
        string Codigo
        string Descripcion
    }

    PACIENTE {
        string Nombre
        string RUT
        string Direccion
    }

    CONSULTA {
        int id
        date Fecha
        time Hora_Atencion
        int Numero_Box
    }

    LICENCIA {
        int Codigo
        string Diagnostico
        date Fecha_Inicio
        date Fecha_Termino
    }

    MEDICO ||--o{ ESPECIALIDAD: "tiene"
    MEDICO ||--o{ CONSULTA: "realiza"
    PACIENTE ||--o{ CONSULTA: "recibe"
    MEDICO ||--o| LICENCIA: "entrega"
    PACIENTE ||--o| LICENCIA: "recibe"

### Autor

- [Rosa Rubio](https://github.com/PaulinaRubioP)
