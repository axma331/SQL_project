CREATE SCHEMA schema_for_task6;
SET search_path TO schema_for_task6;

CREATE TABLE IF NOT EXISTS courses
(
    student VARCHAR(255) PRIMARY KEY,
    class   VARCHAR(255)
);

TRUNCATE TABLE Courses;

INSERT INTO Courses (student, class)
VALUES ('A', 'Math'),
       ('B', 'English'),
       ('C', 'Math'),
       ('D', 'Biology'),
       ('E', 'Math'),
       ('F', 'Computer'),
       ('G', 'Math'),
       ('H', 'Math'),
       ('I', 'Math');

-- v.1
SELECT Class
FROM Courses
GROUP BY Class
HAVING count(*) >=5;

--v.2
SELECT distinct class
from (select class,
             count(*) over (PARTITION BY class) AS cnt
      from courses) AS Classes
WHERE Classes.cnt >= 5;