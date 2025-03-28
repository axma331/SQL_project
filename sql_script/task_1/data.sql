TRUNCATE TABLE Address;
TRUNCATE TABLE Person CASCADE;

INSERT INTO Person (PersonId, FirstName, LastName)
VALUES ('1', 'Wang', 'Allen');


INSERT INTO Address(AddressId, PersonId, City, State)
values ('1', '1', 'New York City', 'New York');
