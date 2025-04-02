/*Obtener el saldo total de cada usuario sumando todas sus cuentas*/
SELECT u.nombre AS Usuario, SUM(c.saldo) AS Saldo_Total
FROM Cuenta c
JOIN Usuario u ON c.id_usuario = u.id_usuario
GROUP BY u.nombre
ORDER BY Saldo_Total DESC;

    