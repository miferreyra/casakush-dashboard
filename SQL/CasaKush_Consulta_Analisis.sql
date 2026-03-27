SELECT 
    S.nombre AS sucursal,
    COUNT(V.id) AS total_visitas,
    AVG(V.descuento) AS descuento_promedio,
    SUM(DV.precio_final) AS facturación_total
FROM visitas V
JOIN sucursales S ON V.sucursal_id = S.id
JOIN detalle_visitas DV ON DV.visita_id = V.id
GROUP BY S.nombre
ORDER BY descuento_promedio DESC;

SELECT 
    P.nombre,
    COUNT(*) AS veces_vendido,
    SUM(DV.precio_final) AS total_facturado,
    AVG(DV.precio_final) AS ticket_promedio
FROM detalle_visitas DV
JOIN productos P ON P.id = DV.producto_id
GROUP BY P.nombre
ORDER BY veces_vendido DESC;

SELECT TOP 10
    C.nombre,
    C.apellido,
    COUNT(V.id) AS visitas,
    SUM(DV.precio_final) AS gasto_total,
    AVG(DV.precio_final) AS gasto_promedio_por_visita
FROM clientes C
JOIN visitas V ON V.cliente_id = C.id
JOIN detalle_visitas DV ON DV.visita_id = V.id
GROUP BY C.nombre, C.apellido
ORDER BY visitas DESC;


SELECT TOP 10
    P.nombre,
    P.precio AS precio_catalogo,
    DV.precio_unitario,
    DV.precio_final
FROM detalle_visitas DV
JOIN productos P ON P.id = DV.producto_id;

-- Arreglar tabla productos
UPDATE productos
SET precio = precio / 100;

-- Arreglar tabla detalle_visitas
UPDATE detalle_visitas
SET precio_unitario = precio_unitario / 100,
    precio_final = precio_final / 100;

    SELECT TOP 10
    P.nombre,
    COUNT(*) AS veces_vendido,
    SUM(DV.precio_final) AS total_facturado,
    AVG(DV.precio_final) AS ticket_promedio
FROM detalle_visitas DV
JOIN productos P ON P.id = DV.producto_id
GROUP BY P.nombre
ORDER BY veces_vendido DESC;


SELECT 
    MONTH(V.fecha) AS mes,
    COUNT(V.id) AS visitas,
    SUM(DV.precio_final) AS facturación,
    AVG(DV.precio_final) AS ticket_promedio
FROM visitas V
JOIN detalle_visitas DV ON DV.visita_id = V.id
GROUP BY MONTH(V.fecha)
ORDER BY mes;