SET search_path TO schema_for_task4;

TRUNCATE TABLE Person;

INSERT INTO Person(Id, Email)
VALUES ('1', 'a@b.com'),
       ('2', 'c@d.com'),
       ('3', 'a@b.com');