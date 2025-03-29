SET search_path TO schema_for_task3;

SELECT e.Name AS Employee
FROM Employee e
         JOIN Employee m ON m.Id = e.ManagerId
WHERE e.Salary > m.Salary