SELECT  id,title, topic,episode_in_season,season 
FROM episodes
WHERE production_code BETWEEN 'CYB001' AND 'CYB120';
