SET search_path TO schema_for_task5;

SELECT Name AS Customers
FROM customers
WHERE Id IN (SELECT c.id
             from customers c
                      LEFT JOIN Orders o on c.id = o.customerid
             where customerid IS NULL)


