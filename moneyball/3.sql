SELECT  HR, year  FROM performances
 JOIN players p  ON p.id = performances.player_id
WHERE p.first_name = 'Ken' AND p.last_name = 'Griffey' 
AND p.birth_year = 1969
ORDER BY year  DESC;