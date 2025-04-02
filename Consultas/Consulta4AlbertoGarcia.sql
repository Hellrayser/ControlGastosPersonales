/*Obtener los métodos de pago usados en los gastos de cada usuario*/
SELECT u.nombre AS Usuario, g.descripcion AS Gasto, mp.nombre AS Metodo_Pago, g.cantidad AS Monto, p.fecha AS Fecha
FROM Pago p
JOIN Usuario u ON p.id_usuario = u.id_usuario
JOIN Gasto g ON p.id_gasto = g.id_gasto
JOIN Metodo_Pago mp ON p.id_metodo_pago = mp.id_metodo_pago
ORDER BY p.fecha DESC;
    