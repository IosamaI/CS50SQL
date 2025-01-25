SELECT  year , salary  FROM salaries
 JOIN players p  ON p.id = salaries.player_id
WHERE first_name = 'Cal' AND last_name = 'Ripken'
ORDER BY year  DESC;