INSERT INTO Usuario (nombre, correo, contraseña, rol) VALUES ('Ian Castellanos', 'iangabriel2309@gmail.com', 'clave123', 'Administrador');
INSERT INTO Usuario (nombre, correo, contraseña, rol) VALUES ('Gabriel Lozano', 'gabrilozano@gmail.com', 'segura456', 'Miembro');
INSERT INTO Usuario (nombre, correo, contraseña, rol) VALUES ('Antonio Fuentes', 'antoniofuentes@gmail.com', 'pass789', 'Miembro');
INSERT INTO Usuario (nombre, correo, contraseña, rol) VALUES ('Oscar Pardo', 'oscarpardo@gmail.com', 'password123', 'Miembro');
INSERT INTO Usuario (nombre, correo, contraseña, rol) VALUES ('Alberto Garcia', 'albertogarcia@gmail.com', 'clave789', 'Administrador');
INSERT INTO Usuario (nombre, correo, contraseña, rol) VALUES ('Laura Mendoza', 'lauramendoza@gmail.com', 'segura321', 'Miembro');
INSERT INTO Usuario (nombre, correo, contraseña, rol) VALUES ('Diego Fernández', 'diegofernandez@gmail.com', 'pass555', 'Miembro');
INSERT INTO Usuario (nombre, correo, contraseña, rol) VALUES ('Carmen Soto', 'carmensoto@gmail.com', 'clave777', 'Miembro');
INSERT INTO Usuario (nombre, correo, contraseña, rol) VALUES ('Fernando Castro', 'fernand.castro@gmail.com', 'password888', 'Miembro');
INSERT INTO Usuario (nombre, correo, contraseña, rol) VALUES ('Lucía Herrera', 'luciaherrera@gmail.com', 'segura999', 'Miembro');

INSERT INTO Cuenta (id_usuario, nombre, saldo, tipo) VALUES (1, 'Cuenta Personal', 1500.00, 'Individual');
INSERT INTO Cuenta (id_usuario, nombre, saldo, tipo) VALUES (2, 'Cuenta Ahorro', 2000.50, ' Administrador del hogar');
INSERT INTO Cuenta (id_usuario, nombre, saldo, tipo) VALUES (3, 'Cuenta Corriente', 300.75, 'Pareja');
INSERT INTO Cuenta (id_usuario, nombre, saldo, tipo) VALUES (4, 'Cuenta Ahorro', 5000.00, 'Administrador del hogar');
INSERT INTO Cuenta (id_usuario, nombre, saldo, tipo) VALUES (5, 'Cuenta Personal', 800.00, 'Individual');

INSERT INTO Metodo_Pago (nombre) VALUES ('Efectivo');
INSERT INTO Metodo_Pago (nombre) VALUES ('Tarjeta de Crédito');
INSERT INTO Metodo_Pago (nombre) VALUES ('Tarjeta de Débito');
INSERT INTO Metodo_Pago (nombre) VALUES ('Transferencia Bancaria');


INSERT INTO Ingreso (id_usuario, descripcion, cantidad, fecha) VALUES (1, 'Salario Mensual', 2500.00, TO_DATE('2025-03-01', 'YYYY-MM-DD'));
INSERT INTO Ingreso (id_usuario, descripcion, cantidad, fecha) VALUES (2, 'Venta de un producto', 500.00, TO_DATE('2025-03-05', 'YYYY-MM-DD'));
INSERT INTO Ingreso (id_usuario, descripcion, cantidad, fecha) VALUES (3, 'Reembolso', 100.00, TO_DATE('2025-03-10', 'YYYY-MM-DD'));
INSERT INTO Ingreso (id_usuario, descripcion, cantidad, fecha) VALUES (4, 'Regalo', 1200.00, TO_DATE('2025-03-12', 'YYYY-MM-DD'));
INSERT INTO Ingreso (id_usuario, descripcion, cantidad, fecha) VALUES (5, 'Beca', 3000.00, TO_DATE('2025-03-15', 'YYYY-MM-DD'));

INSERT INTO Gasto (id_usuario, descripcion, cantidad, fecha) VALUES (1, 'Compras', 150.75, TO_DATE('2025-03-02', 'YYYY-MM-DD'));
INSERT INTO Gasto (id_usuario, descripcion, cantidad, fecha) VALUES (2, 'Gasolina', 50.25, TO_DATE('2025-03-06', 'YYYY-MM-DD'));
INSERT INTO Gasto (id_usuario, descripcion, cantidad, fecha) VALUES (3, 'Cena', 75.00, TO_DATE('2025-03-08', 'YYYY-MM-DD'));
INSERT INTO Gasto (id_usuario, descripcion, cantidad, fecha) VALUES (4, 'Factura de electricidad', 90.30, TO_DATE('2025-03-11', 'YYYY-MM-DD'));
INSERT INTO Gasto (id_usuario, descripcion, cantidad, fecha) VALUES (5, 'Compra de ropa', 120.00, TO_DATE('2025-03-14', 'YYYY-MM-DD'));

INSERT INTO Deuda (id_usuario, descripcion, cantidad, fecha_vencimiento, estado) VALUES (1, 'Préstamo personal', 500.00, TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'Vencida');
INSERT INTO Deuda (id_usuario, descripcion, cantidad, fecha_vencimiento, estado) VALUES (2, 'Hipoteca', 1000.00, TO_DATE('2025-04-15', 'YYYY-MM-DD'), 'Pendiente');
INSERT INTO Deuda (id_usuario, descripcion, cantidad, fecha_vencimiento, estado) VALUES (3, 'Pago de coche', 750.00, TO_DATE('2025-05-01', 'YYYY-MM-DD'), 'Pendiente');

INSERT INTO Pago (id_usuario, id_gasto, id_metodo_pago, fecha) VALUES (1, 3, 2, TO_DATE('2025-03-02', 'YYYY-MM-DD'));
INSERT INTO Pago (id_usuario, id_gasto, id_metodo_pago, fecha) VALUES (2, 1, 3, TO_DATE('2025-03-06', 'YYYY-MM-DD'));
INSERT INTO Pago (id_usuario, id_gasto, id_metodo_pago, fecha) VALUES (7, 5, 1, TO_DATE('2025-03-08', 'YYYY-MM-DD'));

INSERT INTO Ingreso_Cuenta (id_usuario, id_ingreso, id_cuenta, fecha) VALUES (1, 1, 1, TO_DATE('2025-03-01', 'YYYY-MM-DD'));
INSERT INTO Ingreso_Cuenta (id_usuario, id_ingreso, id_cuenta, fecha) VALUES (2, 2, 2, TO_DATE('2025-03-05', 'YYYY-MM-DD'));
INSERT INTO Ingreso_Cuenta (id_usuario, id_ingreso, id_cuenta, fecha) VALUES (3, 3, 3, TO_DATE('2025-03-10', 'YYYY-MM-DD'));

INSERT INTO Gasto_Cuenta (id_usuario, id_gasto, id_cuenta, fecha) VALUES (1, 1, 1, TO_DATE('2025-03-02', 'YYYY-MM-DD'));
INSERT INTO Gasto_Cuenta (id_usuario, id_gasto, id_cuenta, fecha) VALUES (2, 2, 2, TO_DATE('2025-03-06', 'YYYY-MM-DD'));
INSERT INTO Gasto_Cuenta (id_usuario, id_gasto, id_cuenta, fecha) VALUES (3, 3, 3, TO_DATE('2025-03-08', 'YYYY-MM-DD'));
    
