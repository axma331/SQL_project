SET search_path TO schema_for_task4;

CREATE TABLE IF NOT EXISTS Person
(
    Id    INT PRIMARY KEY,
    Email VARCHAR(255)
);