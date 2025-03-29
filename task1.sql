CREATE SCHEMA schema_for_task1;
SET search_path TO schema_for_task1;

CREATE TABLE Person
(
    PersonId  INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName  VARCHAR(255)
);

CREATE TABLE Address
(
    AddressId INT PRIMARY KEY,
    PersonId  INT,
    City      VARCHAR(255),
    State     VARCHAR(255),
    FOREIGN KEY (PersonId) REFERENCES Person (PersonId)
);

TRUNCATE TABLE Address;
TRUNCATE TABLE Person CASCADE;

INSERT INTO Person (PersonId, FirstName, LastName)
VALUES ('1', 'Wang', 'Allen');


INSERT INTO Address(AddressId, PersonId, City, State)
values ('1', '1', 'New York City', 'New York');

SELECT p.FirstName, p.LastName, a.City, a.State
FROM Person p
         INNER JOIN Address a ON p.PersonId = a.PersonId;