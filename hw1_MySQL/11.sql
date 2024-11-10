WITH subquery1 AS (
SELECT *
FROM (
SELECT Game, away AS win_team
FROM games
WHERE away_score > home_score
UNION ALL
SELECT Game, home AS win_team
FROM games
WHERE home_score > away_score
) AS subquery4
NATURAL JOIN (
SELECT Game, away AS lose_team
FROM games
WHERE away_score < home_score
UNION ALL
SELECT Game, home AS lose_team
FROM games
WHERE home_score < away_score
) AS subquery5
),
subquery9 AS (
SELECT Game, win_team, win_hit_rate, lose_team, lose_hit_rate
FROM (
SELECT DISTINCT Game, lose_team, (lose_H/lose_AB) AS lose_hit_rate
FROM (
SELECT Game, SUM(H) AS lose_H, SUM(AB) AS lose_AB
FROM hitters
NATURAL JOIN games
NATURAL JOIN subquery1
WHERE hitters.Team = subquery1.lose_team
GROUP BY hitters.Game
) AS subquery6
NATURAL JOIN subquery1
) AS subquery2
NATURAL JOIN (
SELECT DISTINCT Game, win_team, (win_H/win_AB) AS win_hit_rate
FROM (
SELECT Game, SUM(H) AS win_H, SUM(AB) AS win_AB
FROM hitters
NATURAL JOIN games
NATURAL JOIN subquery1
WHERE hitters.Team = subquery1.win_team
GROUP BY hitters.Game
) AS subquery8
NATURAL JOIN subquery1
) AS subquery7
)
,subquery11 AS(
SELECT subquery10.Game AS Game, team, hit_rate
FROM (
SELECT Game, win_team AS team, win_hit_rate AS hit_rate
FROM subquery9
UNION
SELECT Game, lose_team AS team, lose_hit_rate AS hit_rate
FROM subquery9
) AS subquery10
INNER JOIN games
ON subquery10.Game = games.Game
ORDER BY Date)
, subquery13 AS(
SELECT Game, team, hit_rate,
ROUND((LAG(hit_rate, 1, 0) OVER (PARTITION BY team)+LAG(hit_rate, 2, 0) OVER (PARTITION BY team)+LAG(hit_rate, 3, 0) OVER (PARTITION BY team))/3, 4) AS last3_avg_hr,
IF(subquery11.team = games.home, "1", "0")AS Ishome,
IF(subquery11.team = subquery1.win_team, "1", "0")AS Iswin
FROM subquery11 NATURAL JOIN games NATURAL JOIN subquery1
ORDER BY Date
)
, subquery16 AS(
SELECT Game, team, hit_rate, last3_avg_hr, Ishome, Iswin,
IF(Ishome AND Iswin, "1", "0") AS home_affect_win
FROM(
SELECT Game, team, hit_rate,
ROUND((LAG(hit_rate, 1, 0) OVER (PARTITION BY team)+LAG(hit_rate, 2, 0) OVER (PARTITION BY team)+LAG(hit_rate, 3, 0) OVER (PARTITION BY team))/3, 4) AS last3_avg_hr,
IF(subquery11.team = games.home, "1", "0")AS Ishome,
IF(subquery11.team = subquery1.win_team, "1", "0")AS Iswin
FROM subquery11 NATURAL JOIN games NATURAL JOIN subquery1
ORDER BY Date) AS subquery15)
,subquery22 AS (
SELECT Isbiggerhr, AVG(hr_affect_win) AS hr_affect_win
FROM(
SELECT *, IF(Isbiggerhr AND Iswin, "1", "0") AS hr_affect_win
FROM(
SELECT Game, Team, last3_avg_hr, bigger_hit_rate, Iswin,
IF(last3_avg_hr = bigger_hit_rate, "1", "0") AS Isbiggerhr
FROM(
SELECT Game, team, MAX(last3_avg_hr)OVER(PARTITION BY Game) AS bigger_hit_rate
FROM subquery16)AS subquery17 NATURAL JOIN subquery16
)AS subquery20)AS subquery21
GROUP BY Isbiggerhr
)
,subquery23 AS(
SELECT Ishome, AVG(home_affect_win) AS home_affect_win
FROM subquery16
GROUP BY (Ishome)
)


SELECT IF(Ishome=1, "home", "0") AS factor, ROUND(home_affect_win, 4) AS rate
FROM subquery23
WHERE Ishome = 1
UNION
SELECT IF(Isbiggerhr=1, "hit rate", "0") AS factor, ROUND(hr_affect_win, 4) AS rate
FROM subquery22
WHERE Isbiggerhr = 1




