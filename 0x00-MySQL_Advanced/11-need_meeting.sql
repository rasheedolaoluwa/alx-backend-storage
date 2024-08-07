-- Creates a view need_meeting that lists students with a score under 80 and no recent meeting.
DROP VIEW IF EXISTS need_meeting;
CREATE VIEW need_meeting AS 
SELECT name 
FROM students 
WHERE 
    score < 80 AND 
    (last_meeting IS NULL 
        OR 
    last_meeting < ADDDATE(CURDATE(), INTERVAL -1 MONTH));
