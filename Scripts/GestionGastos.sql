CREATE TABLE Usuario (
    id_usuario NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    correo VARCHAR2(100) UNIQUE NOT NULL,
    contraseña VARCHAR2(255) NOT NULL,
    rol VARCHAR2(20) CHECK (rol IN ('Administrador', 'Miembro')) NOT NULL
);


CREATE TABLE Cuenta (
    id_cuenta NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_usuario NUMBER NOT NULL,
    nombre VARCHAR2(100) NOT NULL,
    saldo NUMBER(10,2) DEFAULT 0 CHECK (saldo >= 0),
    tipo VARCHAR2(50) NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario) ON DELETE CASCADE
);


CREATE TABLE Metodo_Pago (
    id_metodo_pago NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR2(50) NOT NULL UNIQUE
);

CREATE TABLE Ingreso (
    id_ingreso NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_usuario NUMBER NOT NULL,
    descripcion VARCHAR2(255) NOT NULL,
    cantidad NUMBER(10,2) CHECK (cantidad > 0) NOT NULL,
    fecha DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario) ON DELETE CASCADE
);

CREATE TABLE Gasto (
    id_gasto NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_usuario NUMBER NOT NULL,
    descripcion VARCHAR2(255) NOT NULL,
    cantidad NUMBER(10,2) CHECK (cantidad > 0) NOT NULL,
    fecha DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario) ON DELETE CASCADE
);

CREATE TABLE Deuda (
    id_deuda NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_usuario NUMBER NOT NULL,
    descripcion VARCHAR2(255) NOT NULL,
    cantidad NUMBER(10,2) CHECK (cantidad > 0) NOT NULL,
    fecha_vencimiento DATE NOT NULL,
    estado VARCHAR2(10) DEFAULT 'Pendiente' CHECK (estado IN ('Pendiente', 'Pagada', 'Vencida')),
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario) ON DELETE CASCADE
);

CREATE TABLE Pago (
    id_pago NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_usuario NUMBER NOT NULL,
    id_gasto NUMBER NOT NULL,
    id_metodo_pago NUMBER NOT NULL,
    fecha DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario) ON DELETE CASCADE,
    FOREIGN KEY (id_gasto) REFERENCES Gasto(id_gasto) ON DELETE CASCADE,
    FOREIGN KEY (id_metodo_pago) REFERENCES Metodo_Pago(id_metodo_pago) ON DELETE CASCADE
);

CREATE TABLE Ingreso_Cuenta (
    id_ingreso_cuenta NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_usuario NUMBER NOT NULL,
    id_ingreso NUMBER NOT NULL,
    id_cuenta NUMBER NOT NULL,
    fecha DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario) ON DELETE CASCADE,
    FOREIGN KEY (id_ingreso) REFERENCES Ingreso(id_ingreso) ON DELETE CASCADE,
    FOREIGN KEY (id_cuenta) REFERENCES Cuenta(id_cuenta) ON DELETE CASCADE
);

CREATE TABLE Gasto_Cuenta (
    id_gasto_cuenta NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_usuario NUMBER NOT NULL,
    id_gasto NUMBER NOT NULL,
    id_cuenta NUMBER NOT NULL,
    fecha DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario) ON DELETE CASCADE,
    FOREIGN KEY (id_gasto) REFERENCES Gasto(id_gasto) ON DELETE CASCADE,
    FOREIGN KEY (id_cuenta) REFERENCES Cuenta(id_cuenta) ON DELETE CASCADE
);