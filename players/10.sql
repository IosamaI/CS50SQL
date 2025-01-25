SELECT first_name AS 'Top 5'
FROM players
WHERE birth_country= 'USA'
ORDER BY  height DESC LIMIT 5;