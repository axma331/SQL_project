SET search_path TO schema_for_task6;

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
