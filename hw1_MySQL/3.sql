SELECT pitchers.Pitcher_Id AS Pitcher_Id, players.Name AS Pitcher, ROUND(SUM(pitchers.IP), 1) AS tol_innings
FROM(players INNER JOIN pitchers
	ON players.Id = pitchers.pitcher_Id)
NATURAL JOIN games
WHERE games.Date BETWEEN '2021-04-01 00:00:00' AND '2021-11-30 23:59:59'
GROUP BY pitchers.Pitcher_Id
ORDER BY SUM(pitchers.IP) DESC
LIMIT 0,3;