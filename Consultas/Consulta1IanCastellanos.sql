/*Obtener los gastos de cada usuario con el nombre de la cuenta desde la que se pagó*/
SELECT u.nombre AS Usuario, g.descripcion AS Gasto, g.cantidad AS Cantidad, c.nombre AS Cuenta, gc.fecha AS Fecha
FROM Gasto_Cuenta gc
JOIN Usuario u ON gc.id_usuario = u.id_usuario
JOIN Gasto g ON gc.id_gasto = g.id_gasto
JOIN Cuenta c ON gc.id_cuenta = c.id_cuenta
ORDER BY gc.fecha DESC;

    