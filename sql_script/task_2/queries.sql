SET search_path TO schema_for_task2;

SELECT (
    SELECT DISTINCT Salary
        FROM Employee
        ORDER BY Salary
        OFFSET 1 LIMIT 1
        ) AS SecondHighestSalary;
