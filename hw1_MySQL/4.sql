SELECT players.Name AS Hitter,
ROUND(AVG(hitters.num_P / (hitters.BB + hitters.AB + hitters.K)), 4) "avg_P/PA",
ROUND(AVG(hitters.AB), 4) AS avg_AB,
ROUND(AVG(hitters.BB), 4) AS avg_BB,
ROUND(AVG(hitters.K), 4) AS avg_K,
SUM(hitters.BB + hitters.AB + hitters.K) AS tol_PA
FROM players INNER JOIN hitters
	ON players.Id = hitters.Hitter_Id
WHERE (hitters.BB + hitters.AB + hitters.K) > 0
GROUP BY hitters.Hitter_Id 
HAVING SUM(hitters.BB + hitters.AB + hitters.K)>= 20
ORDER BY ROUND(AVG(hitters.num_P / (hitters.BB + hitters.AB + hitters.K)), 4) DESC
LIMIT 0,3;