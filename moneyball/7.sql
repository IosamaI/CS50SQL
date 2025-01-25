SELECT first_name,last_name FROM players
JOIN salaries s ON s.player_id = players.id
ORDER BY salary DESC LIMIT 1;