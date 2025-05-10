EJECUTAR LUEGO: BASE DE DATOS EN FORMATO SQL
CREATE DATABASE liga_voley CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE liga_voley;

CREATE TABLE clubes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  email VARCHAR(100) UNIQUE,
  password VARCHAR(255),
  rol ENUM('admin','club') NOT NULL,
  club_id INT,
  FOREIGN KEY (club_id) REFERENCES clubes(id)
);

CREATE TABLE jugadores (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  dni VARCHAR(20),
  fecha_nac DATE,
  categoria VARCHAR(50),
  documento VARCHAR(255), -- nombre del archivo PDF
  estado ENUM('pendiente', 'aprobado', 'observacion') DEFAULT 'pendiente',
  activo BOOLEAN DEFAULT TRUE,
  club_id INT,
  FOREIGN KEY (club_id) REFERENCES clubes(id)
);
