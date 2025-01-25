SELECT  name FROM teams
JOIN players p  ON p.id = performances.player_id
JOIN performances ON performances.team_id = teams.id
WHERE p.first_name = 'Satchel'
