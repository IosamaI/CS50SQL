SELECT name , SUM(H) AS "total hits" FROM teams 
JOIN performances p ON p.team_id = teams.id
WHERE p.year = 2001
GROUP BY p.team_id
ORDER BY "total hits" DESC 
LIMIT 5;