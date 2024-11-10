WITH subquery2 AS(
SELECT Id, COUNT(*) AS team_count, IF(COUNT(*) > 1, "Changed", "Unchanged") AS Pitcher
FROM(
SELECT DISTINCT Team, Id
FROM pitchers INNER JOIN players
ON pitchers.Pitcher_Id = players.Id
NATURAL JOIN games
WHERE Date BETWEEN '2020-01-01 00:00:00' AND '2021-12-31 23:59:59'
AND Id IN(
SELECT Pitcher_Id
FROM pitchers NATURAL JOIN games
WHERE Date BETWEEN '2020-01-01 00:00:00' AND '2021-12-31 23:59:59'
GROUP BY Pitcher_Id
HAVING SUM(IP) > 50)
AND Id IN(
SELECT Pitcher_Id
FROM pitchers NATURAL JOIN games
WHERE Date BETWEEN '2020-01-01 00:00:00' AND '2020-12-31 23:59:59'
GROUP BY Pitcher_Id
HAVING SUM(IP) > 0)
AND Id IN(
SELECT Pitcher_Id
FROM pitchers NATURAL JOIN games
WHERE Date BETWEEN '2021-01-01 00:00:00' AND '2021-12-31 23:59:59'
GROUP BY Pitcher_Id
HAVING SUM(IP) > 0)
ORDER BY Id
)AS subquery1
GROUP BY Id)

SELECT Pitcher, cnt, 2020_kk "2020_avg_K/9", 2021_kk "2021_avg_K/9", 
2020_ab "2020_PC-ST", 2021_ab "2021_PC-ST"
FROM(
SELECT Pitcher, ROUND(AVG(2020_k), 4) AS 2020_kk
FROM(
SELECT Pitcher_Id, AVG(9*K/IP) AS 2020_k, Pitcher
FROM pitchers NATURAL JOIN games
INNER JOIN subquery2 ON pitchers.Pitcher_Id = subquery2.Id
WHERE IP > 0 AND Date BETWEEN '2020-01-01 00:00:00' AND '2020-12-31 23:59:59' 
AND Pitcher_Id IN(
SELECT Id
FROM subquery2)
GROUP BY Pitcher_Id
)AS subquery3 
GROUP BY Pitcher
)AS subquery4 NATURAL JOIN (
SELECT Pitcher, ROUND(AVG(2021_k), 4) AS 2021_kk
FROM(
SELECT Pitcher_Id, AVG(9*K/IP) AS 2021_k, Pitcher
FROM pitchers NATURAL JOIN games
INNER JOIN subquery2 ON pitchers.Pitcher_Id = subquery2.Id
WHERE IP > 0 AND Date BETWEEN '2021-01-01 00:00:00' AND '2021-12-31 23:59:59' 
AND Pitcher_Id IN(
SELECT Id
FROM subquery2)
GROUP BY Pitcher_Id
)AS subquery5 
GROUP BY Pitcher)AS subquery6 NATURAL JOIN 
(SELECT Pitcher, COUNT(Pitcher) AS cnt
FROM subquery2
GROUP BY Pitcher
)AS subquery7 NATURAL JOIN(
SELECT Pitcher, CONCAT(ROUND(AVG(2020_a), 4), '-', ROUND(AVG(2020_b), 4)) AS 2020_ab
FROM(
SELECT Pitcher_Id, AVG(SUBSTRING_INDEX(PC_ST, '-', 1)) AS 2020_a, AVG(SUBSTRING_INDEX(PC_ST, '-', -1)) AS 2020_b, Pitcher
FROM pitchers NATURAL JOIN games
INNER JOIN subquery2 ON pitchers.Pitcher_Id = subquery2.Id
WHERE IP > 0 AND Date BETWEEN '2020-01-01 00:00:00' AND '2020-12-31 23:59:59' 
AND Pitcher_Id IN(
SELECT Id
FROM subquery2)
GROUP BY Pitcher_Id
)AS subquery8
GROUP BY Pitcher)AS subquery9 NATURAL JOIN (
SELECT Pitcher, CONCAT(ROUND(AVG(2021_a), 4), '-', ROUND(AVG(2021_b), 4)) AS 2021_ab
FROM(
SELECT Pitcher_Id, AVG(SUBSTRING_INDEX(PC_ST, '-', 1)) AS 2021_a, AVG(SUBSTRING_INDEX(PC_ST, '-', -1)) AS 2021_b, Pitcher
FROM pitchers NATURAL JOIN games
INNER JOIN subquery2 ON pitchers.Pitcher_Id = subquery2.Id
WHERE IP > 0 AND Date BETWEEN '2021-01-01 00:00:00' AND '2021-12-31 23:59:59' 
AND Pitcher_Id IN(
SELECT Id
FROM subquery2)
GROUP BY Pitcher_Id
)AS subquery8
GROUP BY Pitcher)AS subquery10
ORDER BY Pitcher;









;