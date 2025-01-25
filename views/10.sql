SELECT english_title AS 'ENGLISH_TITLE',artist AS 'ARTIST'
FROM views 
WHERE artist = 'Hokusai'

ORDER BY english_title DESC LIMIT 10;