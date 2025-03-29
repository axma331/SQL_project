CREATE SCHEMA schema_for_task4;

SET search_path TO schema_for_task4;

CREATE TABLE IF NOT EXISTS Person
(
    Id    INT PRIMARY KEY,
    Email VARCHAR(255)
);

TRUNCATE TABLE Person;

INSERT INTO Person(Id, Email)
VALUES ('1', 'a@b.com'),
       ('2', 'c@d.com'),
       ('3', 'a@b.com');

SELECT DISTINCT Email
FROM (SELECT Email,
             count(*) OVER (PARTITION BY Email) AS cnt
      FROM person) AS Emails
WHERE Emails.cnt > 1;