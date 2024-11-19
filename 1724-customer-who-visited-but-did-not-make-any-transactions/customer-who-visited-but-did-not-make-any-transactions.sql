SELECT 
        customer_id, COUNT(V.visit_id) as count_no_trans
FROM 
        Visits as V
LEFT JOIN 
        Transactions as T
ON 
        V.visit_id = t.visit_id
WHERE 
        t.transaction_id IS NULL
GROUP BY 
        v.customer_id;