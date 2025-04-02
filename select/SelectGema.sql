SELECT p.NOMBRE AS NOMBRE_PRODUCTO,
r.PRECIO AS PRECIO_ROPA,
a.PRECIO AS PRECIO_ACCESORIO
FROM PRODUCTO p
JOIN 
ROPA r ON p.ID_PRODUCTO = r.ID_PRODUCTO
JOIN 
ACCESORIOS a ON p.ID_PRODUCTO = a.ID_PRODUCTO
GROUP BY 
p.NOMBRE, r.PRECIO, a.PRECIO
;