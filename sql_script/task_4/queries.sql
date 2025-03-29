SET search_path TO schema_for_task4;

SELECT DISTINCT Email
FROM (SELECT Email,
             count(*) OVER (PARTITION BY Email) AS cnt
      FROM person) AS Emails
WHERE Emails.cnt > 1;