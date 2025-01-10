SELECT
    p.product_name, o.units AS unit
FROM
    Products p
JOIN
    (
        SELECT
            DISTINCT(order_date + unit), product_id, SUM(unit) as units
        FROM
            Orders
        WHERE
            order_date BETWEEN DATE('2020-02-01') AND DATE('2020-02-29')
        GROUP BY
            product_id
    ) o
ON
    p.product_id = o.product_id
WHERE
    o.units >= 100
