DROP DATABASE IF EXISTS vizyondb;
CREATE DATABASE vizyondb;
USE vizyondb;

CREATE TABLE cargo (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Descripcion VARCHAR(100) NOT NULL,
    SueldoBase DECIMAL(10, 2) NOT NULL
);

INSERT INTO cargo (Descripcion, SueldoBase)
VALUES
('Vendedor', 1500000),
('Administrador', 3000000),
('Diseñador', 2500000),
('Costurero', 1000000),
('Almacenista', 800000);

CREATE TABLE color (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Descripcion VARCHAR(100) NOT NULL
);

INSERT INTO color (Descripcion)
VALUES
('Negro'),
('Blanco'),
('Rojo'),
('Verde'),
('Azul'),
('Amarillo'),
('Rosa'),
('Morado'),
('Gris'),
('Beige');

CREATE TABLE forma_pago (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Descripcion VARCHAR(100) NOT NULL
);

INSERT INTO forma_pago (Descripcion)
VALUES
('Efectivo'),
('Tarjeta de crédito'),
('Tarjeta de débito'),
('Transferencia bancaria'),
('Paypal');

CREATE TABLE genero (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Descripcion VARCHAR(100) NOT NULL
);

INSERT INTO genero (Descripcion)
VALUES
('Masculino'),
('Femenino'),
('Unisex');

CREATE TABLE insumo (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    ValorUnit DECIMAL(10, 2) NOT NULL,
    StockMin INT NOT NULL,
    StockMax INT NOT NULL
);

INSERT INTO insumo (Nombre, ValorUnit, StockMin, StockMax)
VALUES
('Tela de algodón', 10000, 100, 1000),
('Tela de poliéster', 20000, 50, 500),
('Hilo', 5000, 20, 200),
('Botones', 2000, 10, 100),
('Cierres', 3000, 5, 50);

CREATE TABLE pais (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL
);

INSERT INTO pais (Nombre)
VALUES
('Colombia'),
('México'),
('Estados Unidos'),
('España'),
('China'),
('Brasil'),
('Argentina'),
('India'),
('Francia'),
('Inglaterra');

CREATE TABLE talla (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Descripcion VARCHAR(100) NOT NULL
);

INSERT INTO talla (Descripcion)
VALUES
('XS - Extra pequeña'),
('S - Pequeña'),
('M - Mediana'),
('L - Grande'),
('XL - Extra grande'),
('XXL - Extra extra grande');

CREATE TABLE tipo_estado (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Descripcion VARCHAR(100) NOT NULL
);

INSERT INTO tipo_estado (Descripcion)
VALUES
('Nuevo'),
('En proceso'),
('Listo para enviar'),
('Enviado'),
('Entregado');

CREATE TABLE tipo_persona (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL
);

INSERT INTO tipo_persona (Nombre)
VALUES
('Cliente'),
('Proveedor'),
('Empleado');

CREATE TABLE tipo_proteccion (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Descripcion VARCHAR(100) NOT NULL
);

INSERT INTO tipo_proteccion (Descripcion)
VALUES
('Protección contra el sol'),
('Protección contra el agua'),
('Protección contra el frío'),
('Protección contra el viento'),
('Protección contra los insectos');

CREATE TABLE departamento (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    IdPaisFk INT NOT NULL,
    FOREIGN KEY (IdPaisFk) REFERENCES pais(Id)
);

INSERT INTO departamento (Nombre, IdPaisFk)
VALUES
('Antioquia', 1),
('Bogotá', 1),
('Cundinamarca', 1),
('Valle del Cauca', 1),
('Buenos Aires', 2),
('Ciudad de México', 3),
('Miami', 4),
('Londres', 5),
('París', 6),
('Tokio', 7);

CREATE TABLE municipio (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    IdDepartamentoFk INT NOT NULL,
    FOREIGN KEY (IdDepartamentoFk) REFERENCES departamento(Id)
);

INSERT INTO municipio (Nombre, IdDepartamentoFk)
VALUES
('Medellín', 1),
('Bogotá, D.C.', 2),
('Zipaquirá', 2),
('Cali', 4),
('Buenos Aires', 5),
('Ciudad de México', 6),
('Miami', 7),
('Londres', 8),
('París', 9),
('Tokio', 10);

CREATE TABLE estado (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Descripcion VARCHAR(100) NOT NULL,
    IdTipoEstadoFk INT NOT NULL,
    FOREIGN KEY (IdTipoEstadoFk) REFERENCES tipo_estado(Id)
);

INSERT INTO estado (Descripcion, IdTipoEstadoFk)
VALUES
('Pendiente', 1),
('En proceso', 2),
('Listo para enviar', 3),
('Enviado', 4),
('Entregado', 5);

CREATE TABLE cliente (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    IdCliente VARCHAR(20) NOT NULL,
    IdTipoPersonaFk INT NOT NULL,
    FechaRegistro DATE NOT NULL,
    IdMunicipioFk INT NOT NULL,
    FOREIGN KEY (IdTipoPersonaFk) REFERENCES tipo_persona(Id),
    FOREIGN KEY (IdMunicipioFk) REFERENCES municipio(Id)
);

INSERT INTO cliente (Nombre, IdCliente, IdTipoPersonaFk, FechaRegistro, IdMunicipioFk)
VALUES
('Juan Pérez', '123456789', 1, '2023-07-20', 1),
('María López', '987654321', 2, '2023-08-03', 2),
('Sofía García', '321654987', 3, '2023-08-10', 3),
('Pedro Gómez', '789456123', 1, '2023-08-17', 4),
('Ana Sánchez', '234567891', 2, '2023-08-24', 5),
('Carlos Hernández', '654987321', 3, '2023-08-31', 6),
('Luisa Rodríguez', '9876543210', 1, '2023-09-07', 7),
('Daniela Castillo', '1098765432', 2, '2023-09-14', 8),
('Andrés Morales', '3210987654', 3, '2023-09-21', 9),
('Camila Gutiérrez', '7654321098', 1, '2023-09-28', 10);

CREATE TABLE empleado (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    IdCargoFk INT NOT NULL,
    FechaIngreso DATE NOT NULL,
    IdMunicipioFk INT NOT NULL,
    FOREIGN KEY (IdCargoFk) REFERENCES cargo(Id),
    FOREIGN KEY (IdMunicipioFk) REFERENCES municipio(Id)
);

INSERT INTO empleado (Nombre, IdCargoFk, FechaIngreso, IdMunicipioFk)
VALUES
('Juan Pérez', 1, '2023-07-20', 1),
('María López', 2, '2023-08-03', 2),
('Sofía García', 3, '2023-08-10', 3),
('Pedro Gómez', 1, '2023-08-17', 4),
('Ana Sánchez', 2, '2023-08-24', 5),
('Carlos Hernández', 3, '2023-08-31', 6),
('Luisa Rodríguez', 1, '2023-09-07', 7),
('Daniela Castillo', 2, '2023-09-14', 8),
('Andrés Morales', 3, '2023-09-21', 9),
('Camila Gutiérrez', 1, '2023-09-28', 10);

CREATE TABLE venta (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    IdEmpleadoFk INT NOT NULL,
    IdClienteFk INT NOT NULL,
    IdFormaPagoFk INT NOT NULL,
    FOREIGN KEY (IdEmpleadoFk) REFERENCES empleado(Id),
    FOREIGN KEY (IdClienteFk) REFERENCES cliente(Id),
    FOREIGN KEY (IdFormaPagoFk) REFERENCES forma_pago(Id)
);

INSERT INTO venta (Fecha, IdEmpleadoFk, IdClienteFk, IdFormaPagoFk)
VALUES
('2023-07-20', 1, 1, 1),
('2023-08-03', 2, 2, 2),
('2023-08-10', 3, 3, 3),
('2023-08-17', 1, 4, 1),
('2023-08-24', 2, 5, 2),
('2023-08-31', 3, 6, 3),
('2023-09-07', 1, 7, 1),
('2023-09-14', 2, 8, 2),
('2023-09-21', 3, 9, 3),
('2023-09-28', 1, 10, 1);

CREATE TABLE prenda (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    ValorUnitCop DECIMAL(10, 2) NOT NULL,
    ValorUnitUsd DECIMAL(10, 2) NOT NULL,
    IdEstadoFk INT NOT NULL,
    IdTipoProteccion INT NOT NULL,
    IdGeneroFk INT NOT NULL,
    Codigo VARCHAR(20) NOT NULL,
    FOREIGN KEY (IdEstadoFk) REFERENCES estado(Id),
    FOREIGN KEY (IdTipoProteccion) REFERENCES tipo_proteccion(Id),
    FOREIGN KEY (IdGeneroFk) REFERENCES genero(Id)
);

INSERT INTO prenda (Nombre, ValorUnitCop, ValorUnitUsd, IdEstadoFk, IdTipoProteccion, IdGeneroFk, Codigo)
VALUES
('Camiseta de algodón manga corta', 20000, 5, 1, 1, 1, 'PR001'),
('Camisa de manga larga', 30000, 7.5, 1, 1, 1, 'PR002'),
('Pantalón de mezclilla', 40000, 10, 1, 1, 1, 'PR003'),
('Vestido de algodón', 50000, 12.5, 1, 2, 1, 'PR004'),
('Zapatos casuales', 60000, 15, 1, 1, 1, 'PR005'),
('Gafas de sol', 10000, 2.5, 1, 1, 1, 'PR006'),
('Chaqueta de cuero', 150000, 37.5, 1, 1, 1, 'PR007'),
('Traje de baño', 50000, 12.5, 1, 1, 1, 'PR008'),
('Gorra', 10000, 2.5, 1, 1, 1, 'PR009'),
('Medias', 5000, 1.25, 1, 1, 1, 'PR010');

CREATE TABLE inventario (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    CodInv VARCHAR(20) NOT NULL,
    IdPrendaFk INT NOT NULL,
    ValorVtaCop DECIMAL(10, 2) NOT NULL,
    ValorVtaUsd DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (IdPrendaFk) REFERENCES prenda(Id)
);

INSERT INTO inventario (CodInv, IdPrendaFk, ValorVtaCop, ValorVtaUsd)
VALUES
('INV001', 1, 25000, 6.25),
('INV002', 2, 37500, 9.375),
('INV003', 3, 50000, 12.5),
('INV004', 4, 62500, 15.625),
('INV005', 5, 75000, 18.75),
('INV006', 6, 12500, 3.125),
('INV007', 7, 187500, 46.875),
('INV008', 8, 62500, 15.625),
('INV009', 9, 12500, 3.125),
('INV010', 10, 5000, 1.25);

CREATE TABLE detalle_venta (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    IdVentaFk INT NOT NULL,
    IdProductoFk INT NOT NULL,
    IdTallaFk INT NOT NULL,
    Cantidad INT NOT NULL,
    ValorUnit DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (IdVentaFk) REFERENCES venta(Id),
    FOREIGN KEY (IdProductoFk) REFERENCES prenda(Id),
    FOREIGN KEY (IdTallaFk) REFERENCES talla(Id)
);

INSERT INTO detalle_venta (IdVentaFk, IdProductoFk, IdTallaFk, Cantidad, ValorUnit)
VALUES
(1, 1, 1, 2, 25000),
(2, 2, 2, 1, 37500),
(3, 3, 3, 3, 50000),
(4, 4, 4, 4, 62500),
(5, 5, 5, 5, 75000),
(6, 6, 6, 6, 12500);

CREATE TABLE orden (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    IdEmpleadoFk INT NOT NULL,
    IdClienteFk INT NOT NULL,
    IdEstadoFk INT NOT NULL,
    FOREIGN KEY (IdEmpleadoFk) REFERENCES empleado(Id),
    FOREIGN KEY (IdClienteFk) REFERENCES cliente(Id),
    FOREIGN KEY (IdEstadoFk) REFERENCES estado(Id)
);

INSERT INTO orden (Fecha, IdEmpleadoFk, IdClienteFk, IdEstadoFk)
VALUES
('2023-07-20', 1, 1, 1),
('2023-08-03', 2, 2, 2),
('2023-08-10', 3, 3, 3),
('2023-08-17', 1, 4, 4),
('2023-08-24', 2, 5, 5);

CREATE TABLE detalle_orden (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    IdOrdenFk INT NOT NULL,
    IdPrendaFk INT NOT NULL,
    PrendaId INT NOT NULL,
    CantidadProducir INT NOT NULL,
    IdColorFk INT NOT NULL,
    CantidadProducida INT NOT NULL,
    IdEstadoFk INT NOT NULL,
    FOREIGN KEY (IdOrdenFk) REFERENCES orden(Id),
    FOREIGN KEY (IdPrendaFk) REFERENCES prenda(Id),
    FOREIGN KEY (IdColorFk) REFERENCES color(Id),
    FOREIGN KEY (IdEstadoFk) REFERENCES estado(Id)
);

INSERT INTO detalle_orden (IdOrdenFk, IdPrendaFk, PrendaId, CantidadProducir, IdColorFk, CantidadProducida, IdEstadoFk)
VALUES
(1, 1, 1, 10, 1, 5, 1),
(2, 2, 2, 5, 2, 3, 2),
(3, 3, 3, 3, 3, 3, 3),
(4, 4, 4, 2, 4, 2, 4),
(5, 5, 5, 1, 5, 1, 5);

CREATE TABLE empresa (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nit VARCHAR(20) NOT NULL UNIQUE,
    RazonSocial VARCHAR(100) NOT NULL,
    RepresentanteLegal VARCHAR(100) NOT NULL,
    FechaCreacion DATE NOT NULL,
    IdMunicipioFk INT NOT NULL,
    FOREIGN KEY (IdMunicipioFk) REFERENCES municipio(Id)
);

INSERT INTO empresa (Nit, RazonSocial, RepresentanteLegal, FechaCreacion, IdMunicipioFk)
VALUES
('900000000-1', 'Empresa de Ropa S.A.S.', 'Juan Pérez', '2023-01-01', 1),
('900000000-2', 'Empresa de Calzado S.A.S.', 'María Rodríguez', '2023-02-02', 2),
('900000000-3', 'Empresa de Accesorios S.A.S.', 'Pedro Gómez', '2023-03-03', 3),
('900000000-4', 'Empresa de Textiles S.A.S.', 'Ana García', '2023-04-04', 4),
('900000000-5', 'Empresa de Confección S.A.S.', 'Carlos Hernández', '2023-05-05', 5);

CREATE TABLE insumo_prendas (
    IdInsumoFk INT NOT NULL,
    IdPrendaFk INT NOT NULL,
    Cantidad INT NOT NULL,
    PRIMARY KEY (IdInsumoFk, IdPrendaFk),
    FOREIGN KEY (IdInsumoFk) REFERENCES insumo(Id),
    FOREIGN KEY (IdPrendaFk) REFERENCES prenda(Id)
);

INSERT INTO insumo_prendas (IdInsumoFk, IdPrendaFk, Cantidad)
VALUES
(1, 1, 2),
(1, 2, 1),
(2, 3, 3),
(2, 4, 2),
(3, 5, 1),
(3, 6, 10),
(4, 7, 5),
(4, 8, 3),
(5, 9, 2),
(5, 10, 1);

CREATE TABLE inventario_talla (
    IdInvFk INT NOT NULL,
    IdTallaFk INT NOT NULL,
    PRIMARY KEY (IdInvFk, IdTallaFk),
    FOREIGN KEY (IdInvFk) REFERENCES inventario(Id),
    FOREIGN KEY (IdTallaFk) REFERENCES talla(Id)
);

INSERT INTO inventario_talla (IdInvFk, IdTallaFk)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

CREATE TABLE proveedor (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    NitProveedor VARCHAR(20) NOT NULL UNIQUE,
    Nombre VARCHAR(100) NOT NULL,
    IdTipoPersona INT NOT NULL,
    IdMunicipioFk INT NOT NULL,
    FOREIGN KEY (IdTipoPersona) REFERENCES tipo_persona(Id),
    FOREIGN KEY (IdMunicipioFk) REFERENCES municipio(Id)
);

INSERT INTO proveedor (NitProveedor, Nombre, IdTipoPersona, IdMunicipioFk)
VALUES
('900000000-1', 'Proveedor 1', 1, 1),
('900000000-2', 'Proveedor 2', 2, 2),
('900000000-3', 'Proveedor 3', 3, 3),
('900000000-4', 'Proveedor 4', 1, 4),
('900000000-5', 'Proveedor 5', 2, 5);

CREATE TABLE insumo_proveedor (
    IdInsumoFk INT NOT NULL,
    IdProveedorFk INT NOT NULL,
    PRIMARY KEY (IdInsumoFk, IdProveedorFk),
    FOREIGN KEY (IdInsumoFk) REFERENCES insumo(Id),
    FOREIGN KEY (IdProveedorFk) REFERENCES proveedor(Id)
);

INSERT INTO insumo_proveedor (IdInsumoFk, IdProveedorFk)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);
