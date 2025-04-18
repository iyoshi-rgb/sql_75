SELECT 
    customers.customer_id,
    (
        SELECT COALESCE(SUM(o1.total_amount), 0)
        FROM orders o1
        WHERE o1.customer_id = customers.customer_id
          AND o1.total_amount >= 10000
    ) AS high_spender,
    (
        SELECT COALESCE(SUM(o2.total_amount), 0)
        FROM orders o2
        WHERE o2.customer_id = customers.customer_id
          AND o2.total_amount >= 5000
          AND o2.total_amount < 10000
    ) AS medium_spender,
    (
        SELECT COALESCE(SUM(o3.total_amount), 0)
        FROM orders o3
        WHERE o3.customer_id = customers.customer_id
          AND o3.total_amount < 5000
          AND o3.total_amount >= 1000
    ) AS low_spender,
    (
        SELECT COALESCE(SUM(o4.total_amount), 0)
        FROM orders o4
        WHERE o4.customer_id = customers.customer_id
          AND o4.total_amount >= 500
          AND o4.total_amount < 1000
    ) AS very_low_spender,
    (
        SELECT COALESCE(SUM(o5.total_amount), 0)
        FROM orders o5
        WHERE o5.customer_id = customers.customer_id
          AND o5.total_amount < 500
    ) AS extremely_low_spender
FROM customers
WHERE customers.city LIKE 'N%' 
   OR customers.city LIKE 'S%' 
   OR customers.city LIKE 'L%';
