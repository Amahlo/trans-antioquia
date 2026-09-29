-- Script generado por el Taller de Normalización
-- Dialecto: MySQL / MariaDB

CREATE TABLE usuarios (
  id_usuario INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50),
  apellido VARCHAR(50),
  cargo VARCHAR(50),
  correo VARCHAR(100),
  telefono VARCHAR(100),
  PRIMARY KEY (id_usuario)
);

CREATE TABLE vehiculos (
  id_vehiculo INT NOT NULL AUTO_INCREMENT,
  tipo_vehiculo VARCHAR(50),
  placa VARCHAR(50),
  estado VARCHAR(50),
  PRIMARY KEY (id_vehiculo)
);

CREATE TABLE servicios (
  id_servicio INT NOT NULL AUTO_INCREMENT,
  id_usuario INT NOT NULL,
  id_vehiculo INT NOT NULL,
  tipo_servicio VARCHAR(50),
  fecha_hora DATETIME,
  pais_origen VARCHAR(50),
  ciudad_origen VARCHAR(50),
  pais_destino VARCHAR(50),
  ciudad_destino VARCHAR(50),
  PRIMARY KEY (id_servicio),
  CONSTRAINT fk_servicios_usuarios FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
  CONSTRAINT fk_servicios_vehiculos FOREIGN KEY (id_vehiculo) REFERENCES vehiculos(id_vehiculo)
);

CREATE TABLE servicios_pasajeros (
  id_servicio_pasajero INT NOT NULL AUTO_INCREMENT,
  id_servicio INT NOT NULL,
  fecha DATETIME,
  cantidad_pasajero INT,
  PRIMARY KEY (id_servicio_pasajero),
  CONSTRAINT fk_servicios_pasajeros_servicios FOREIGN KEY (id_servicio) REFERENCES servicios(id_servicio)
);

CREATE TABLE servicios_encomiendas (
  id_servicio_encomienda INT NOT NULL AUTO_INCREMENT,
  id_servicio INT NOT NULL,
  fecha DATETIME,
  descripcion VARCHAR(255),
  PRIMARY KEY (id_servicio_encomienda),
  CONSTRAINT fk_servicios_encomiendas_servicios FOREIGN KEY (id_servicio) REFERENCES servicios(id_servicio)
);

-- Registros de ejemplo

INSERT INTO usuarios (id_usuario, nombre, apellido, cargo, correo, telefono) VALUES ('001', 'federico', 'montoya', 'king', 'fed22@hotmail.com', '3322240506');
INSERT INTO usuarios (id_usuario, nombre, apellido, cargo, correo, telefono) VALUES ('002', 'antonio', 'cardona', 'superviosor', 'anton009@gmail.com', '3134555785');
INSERT INTO usuarios (id_usuario, nombre, apellido, cargo, correo, telefono) VALUES ('003', 'jorge', 'martines', 'empleado', 'jorgeve@gmail.com', '3220487485');
INSERT INTO usuarios (id_usuario, nombre, apellido, cargo, correo, telefono) VALUES ('004', 'manuela', 'echavarria', 'empleado', 'manu1212@gmail.com', '3132984619');
INSERT INTO usuarios (id_usuario, nombre, apellido, cargo, correo, telefono) VALUES ('005', 'andrea', 'palacio', 'empleado', 'andrea123@gmail.com', '3104333819');
INSERT INTO usuarios (id_usuario, nombre, apellido, cargo, correo, telefono) VALUES ('006', 'andres', 'cifuentes', 'empleado', 'cifuen@gmail.com', '3201415877');
INSERT INTO usuarios (id_usuario, nombre, apellido, cargo, correo, telefono) VALUES ('007', 'felipe', 'lopez', 'empleado', 'lopezzz@gmail.com', '3305545458');
INSERT INTO usuarios (id_usuario, nombre, apellido, cargo, correo, telefono) VALUES ('008', 'claudia', 'chavarria', 'empleado', 'claudy22@hotmail.com', '3154878759');

INSERT INTO vehiculos (id_vehiculo, tipo_vehiculo, placa, estado) VALUES ('100', 'Camion', 'YKD225', 'transportando');
INSERT INTO vehiculos (id_vehiculo, tipo_vehiculo, placa, estado) VALUES ('200', 'furgoneta', 'IOS898', 'entregado');
INSERT INTO vehiculos (id_vehiculo, tipo_vehiculo, placa, estado) VALUES ('300', 'avioneta', 'FEK655', 'preparacion');
INSERT INTO vehiculos (id_vehiculo, tipo_vehiculo, placa, estado) VALUES ('400', 'avion', 'PLO966', 'preparacion');
INSERT INTO vehiculos (id_vehiculo, tipo_vehiculo, placa, estado) VALUES ('500', 'lancha', 'JTR128', 'entregado');
INSERT INTO vehiculos (id_vehiculo, tipo_vehiculo, placa, estado) VALUES ('600', 'buss', 'QRE123', 'transportando');
INSERT INTO vehiculos (id_vehiculo, tipo_vehiculo, placa, estado) VALUES ('700', 'tren', 'ADE147', 'mantenimiento');
INSERT INTO vehiculos (id_vehiculo, tipo_vehiculo, placa, estado) VALUES ('800', 'helicoptero', 'UDE888', 'mantenimiento');

INSERT INTO servicios (id_servicio, id_usuario, id_vehiculo, tipo_servicio, fecha_hora, pais_origen, ciudad_origen, pais_destino, ciudad_destino) VALUES ('1', '001', '100', 'encomienda', '2026/05/14:05:00:00', 'Colombia', 'Medellín', 'Colombia', 'Manizales');
INSERT INTO servicios (id_servicio, id_usuario, id_vehiculo, tipo_servicio, fecha_hora, pais_origen, ciudad_origen, pais_destino, ciudad_destino) VALUES ('2', '002', '200', 'encomienda', '2026/09/28:16:01:23', 'Colombia', 'Cali', 'España', 'Barcelona');
INSERT INTO servicios (id_servicio, id_usuario, id_vehiculo, tipo_servicio, fecha_hora, pais_origen, ciudad_origen, pais_destino, ciudad_destino) VALUES ('3', '003', '300', 'transporte pasajeros', '2026/09/29:20:00:30', 'Colombia', 'Bogotá', 'Estados Unidos', 'New Jersey');
INSERT INTO servicios (id_servicio, id_usuario, id_vehiculo, tipo_servicio, fecha_hora, pais_origen, ciudad_origen, pais_destino, ciudad_destino) VALUES ('4', '004', '400', 'transporte pasajeros', '2026/09/30:10:00:00', 'Colombia', 'Bogotá', 'Francia', 'París');
INSERT INTO servicios (id_servicio, id_usuario, id_vehiculo, tipo_servicio, fecha_hora, pais_origen, ciudad_origen, pais_destino, ciudad_destino) VALUES ('5', '005', '500', 'transporte pasajeros', '2026/09/06:17:30:09', 'Colombia', 'Buenaventura', 'Colombia', 'Barranquilla');
INSERT INTO servicios (id_servicio, id_usuario, id_vehiculo, tipo_servicio, fecha_hora, pais_origen, ciudad_origen, pais_destino, ciudad_destino) VALUES ('6', '006', '600', 'encomienda', '2026/09/29:14:00:00', 'Colombia', 'Cúcuta', 'Venezuela', 'Zulia');
INSERT INTO servicios (id_servicio, id_usuario, id_vehiculo, tipo_servicio, fecha_hora, pais_origen, ciudad_origen, pais_destino, ciudad_destino) VALUES ('7', '007', '700', 'transporte pasajeros', '2026/07/20:15:35:00', 'Francia', 'París', 'Países bajos', 'Ámsterdam');
INSERT INTO servicios (id_servicio, id_usuario, id_vehiculo, tipo_servicio, fecha_hora, pais_origen, ciudad_origen, pais_destino, ciudad_destino) VALUES ('8', '008', '800', 'transporte pasajeros', '2026/08/14:10:25:30', 'Colombia', 'Guatapé', 'Colombia', 'Guatapé');

INSERT INTO servicios_pasajeros (id_servicio_pasajero, id_servicio, fecha, cantidad_pasajero) VALUES ('301', '3', '2026/09/29:20:00:30', '50');
INSERT INTO servicios_pasajeros (id_servicio_pasajero, id_servicio, fecha, cantidad_pasajero) VALUES ('302', '4', '2026/09/30:10:00:00', '100');

INSERT INTO servicios_encomiendas (id_servicio_encomienda, id_servicio, fecha, descripcion) VALUES ('401', '1', '2026/05/14:05:00', 'paquete frágil');
INSERT INTO servicios_encomiendas (id_servicio_encomienda, id_servicio, fecha, descripcion) VALUES ('402', '2', '2026/09/28:16:01:23', 'carga pesada');
