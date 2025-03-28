CREATE SCHEMA task1;
SET search_path TO task1;

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