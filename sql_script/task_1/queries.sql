SELECT p.FirstName, p.LastName, a.City, a.State
FROM Person p
         INNER JOIN Address a ON p.PersonId = a.PersonId;