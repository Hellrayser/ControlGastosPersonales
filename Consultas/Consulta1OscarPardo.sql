/*Mostrar los usuarios con deudas activas y el monto total que deben*/
SELECT u.nombre AS Usuario, d.descripcion AS Deuda, d.cantidad AS Cantidad, d.fecha_vencimiento AS Fecha_Vencimiento
FROM Deuda d
JOIN Usuario u ON d.id_usuario = u.id_usuario
WHERE d.cantidad > 0
ORDER BY d.fecha_vencimiento ASC;