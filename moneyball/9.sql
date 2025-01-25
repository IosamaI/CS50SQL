SELECT name ,ROUND(AVG(salary),2)as "average salary" FROM teams
JOIN salaries s ON s.team_id = teams.id
WHERE   s.year = 2001
GROUP BY teams.id
ORDER BY  "average salary" 
LIMIT 5;