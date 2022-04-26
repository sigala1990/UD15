CREATE DATABASE UD15act02;

USE UD15act02;

 CREATE TABLE piezas (
 piezaId INT auto_increment PRIMARY KEY,
 Nombre VARCHAR(100)
 );
 
  CREATE TABLE proveedores (
 proveedoresId CHAR(4) PRIMARY KEY,
 Nombre VARCHAR(100)
 );
 
 CREATE TABLE suministra (
 suministraId INT auto_increment PRIMARY KEY,
 precio INT,
 FK_piezaId INT,
 KEY (FK_piezaId),
 FOREIGN KEY (FK_piezaId) REFERENCES piezas (piezaId),
 FK_proveedoresId CHAR(4),
 KEY (FK_proveedoresId), 
 FOREIGN KEY (FK_proveedoresId) REFERENCES proveedores (proveedoresId)
 );
 
 INSERT INTO piezas (Nombre) VALUES
('Tornillo'),
('Arandela'),
('Tuerca');

INSERT INTO proveedores (proveedoresId, Nombre) VALUES
('111', 'Tecno1'),
('222', 'Tecno2'),
('333', 'Tecno3');

INSERT INTO suministra (precio, FK_piezaId, FK_proveedoresId) VALUES
(20, 1, '111'),
(30, 2, '222'),
(40, 3, '333');