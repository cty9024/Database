SELECT count(*) AS cnt 
FROM games 
WHERE away_score - home_score >= 10 or away_score - home_score <= -10;