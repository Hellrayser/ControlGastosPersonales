/*Mostrar los ingresos de cada usuario con la cuenta en la que fueron depositados*/
SELECT u.nombre AS Usuario, i.descripcion AS Descripcion, i.cantidad AS Cantidad, c.nombre AS Cuenta, ic.fecha AS Fecha
FROM Ingreso_Cuenta ic
JOIN Usuario u ON ic.id_usuario = u.id_usuario
JOIN Ingreso i ON ic.id_ingreso = i.id_ingreso
JOIN Cuenta c ON ic.id_cuenta = c.id_cuenta
ORDER BY ic.fecha DESC;

    