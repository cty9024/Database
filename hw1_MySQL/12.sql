WITH subquery3 AS (
SELECT * 
FROM pitchers
WHERE Pitcher_Id NOT IN (
SELECT Pitcher_Id
FROM(
SELECT *
FROM(
SELECT *,
ROW_NUMBER() OVER (PARTITION BY Game ) AS rn
FROM pitchers)AS subquery1
WHERE rn = 1)AS subquery2
GROUP BY Pitcher_Id
HAVING SUM(rn) < 10))

SELECT subquery5.Pitcher_Id, subquery4.ERA, subquery5.WHIP
FROM(
SELECT Pitcher_Id, ROUND(AVG(9*(ER/IP)), 4) AS ERA
FROM subquery3
WHERE IP > 0
GROUP BY Pitcher_Id
ORDER BY ERA ASC
LIMIT 100
)AS subquery4 INNER JOIN(
SELECT Pitcher_Id, ROUND(AVG((H+BB)/IP), 4) AS WHIP
FROM subquery3
WHERE IP > 0
GROUP BY Pitcher_Id
ORDER BY WHIP ASC
LIMIT 100
) AS subquery5 ON subquery4.Pitcher_Id = subquery5.Pitcher_Id;