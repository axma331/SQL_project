SET search_path TO schema_for_task6;

CREATE TABLE IF NOT EXISTS courses
(
    student VARCHAR(255) PRIMARY KEY,
    class   VARCHAR(255)
);
