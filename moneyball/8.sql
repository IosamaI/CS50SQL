SELECT salary FROM performances
INNER JOIN players p ON p.id = performances.player_id
INNER JOIN salaries s ON s.player_id = p.id
WHERE   s.year = 2001
ORDER BY performances.HR DESC LIMIT 1;