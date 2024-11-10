WITH subquery6 AS(
SELECT any_value(Team) AS Team, Name AS Hitter, ROUND(AVG(H/AB), 4) AS avg_hit_rate, SUM(AB) AS tol_hit, any_value(win_rate) AS win_rate
FROM(
SELECT Team, (win_count/tol_count) AS win_rate
FROM(SELECT Team, SUM(win_count1) AS win_count
FROM(
SELECT away AS Team, COUNT(*) AS win_count1
FROM games
WHERE away_score > home_score AND Date BETWEEN '2021-01-01 00:00:00' AND '2021-12-31 23:59:59'
GROUP BY away
UNION ALL
SELECT home AS Team, COUNT(*) AS win_count1
FROM games
WHERE home_score > away_score AND Date BETWEEN '2021-01-01 00:00:00' AND '2021-12-31 23:59:59'
GROUP BY home
)AS subquery4
GROUP BY Team
)AS subquery2
NATURAL JOIN (SELECT Team ,COUNT(*) AS tol_count
FROM(
SELECT away AS Team
FROM games
WHERE Date BETWEEN '2021-01-01 00:00:00' AND '2021-12-31 23:59:59'
UNION ALL
SELECT home AS Team
FROM games
WHERE Date BETWEEN '2021-01-01 00:00:00' AND '2021-12-31 23:59:59'
)AS subquery1
GROUP BY Team)AS subquery3
ORDER BY win_rate DESC
LIMIT 5
)AS subquery5 
NATURAL JOIN hitters
NATURAL JOIN games
INNER JOIN players ON players.Id = hitters.Hitter_Id
WHERE games.Date BETWEEN '2021-01-01 00:00:00' AND '2021-12-31 23:59:59'
GROUP BY Name
HAVING SUM(AB) > 100
)
SELECT subquery6.Team, subquery6.Hitter, subquery6.avg_hit_rate, subquery6.tol_hit, subquery6.win_rate
FROM(
SELECT Team, MAX(avg_hit_rate) AS avg_hit_rate
FROM subquery6
GROUP BY Team)AS subquery7
INNER JOIN subquery6
ON subquery7.avg_hit_rate = subquery6.avg_hit_rate
ORDER BY win_rate DESC;