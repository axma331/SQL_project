SET search_path TO schema_for_task6;

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