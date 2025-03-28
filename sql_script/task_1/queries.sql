SET search_path TO schema_for_task1;

SELECT p.FirstName, p.LastName, a.City, a.State
FROM Person p
         INNER JOIN Address a ON p.PersonId = a.PersonId;