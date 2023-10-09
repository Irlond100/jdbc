SELECT product_name FROM ORDERS O
JOIN CUSTOMERS C ON C.id = O.customer_id
WHERE lower(C.name) = lower(:name);