WITH subquery1 AS(
SELECT *
FROM(
SELECT Game, away AS win_team
FROM games
WHERE away_score > home_score AND Date BETWEEN '2021-01-01 00:00:00' AND '2021-12-31 23:59:59'
UNION ALL
SELECT Game, home AS win_team
FROM games
WHERE home_score > away_score AND Date BETWEEN '2021-01-01 00:00:00' AND '2021-12-31 23:59:59'
)AS subquery4 NATURAL JOIN(
SELECT Game, away AS lose_team
FROM games
WHERE away_score < home_score AND Date BETWEEN '2021-01-01 00:00:00' AND '2021-12-31 23:59:59'
UNION ALL
SELECT Game, home AS lose_team
FROM games
WHERE home_score < away_score AND Date BETWEEN '2021-01-01 00:00:00' AND '2021-12-31 23:59:59'
)AS subquery5)
SELECT ABS(hit_rate_diff) AS hit_rate_diff, ROUND(AVG(count), 4) AS win_rate
FROM(
SELECT Game, win_team, lose_team, win_hit_rate, lose_hit_rate, 
TRUNCATE(win_hit_rate-lose_hit_rate,2) AS hit_rate_diff,
IF(TRUNCATE(win_hit_rate-lose_hit_rate,2)>0, "1", "0") AS count
FROM(
SELECT DISTINCT Game, lose_team, (lose_H/lose_AB) AS lose_hit_rate
FROM(
SELECT Game, SUM(H) AS lose_H, SUM(AB) AS lose_AB
FROM hitters NATURAL JOIN games NATURAL JOIN subquery1
WHERE games.Date BETWEEN '2021-01-01 00:00:00' AND '2021-12-31 23:59:59'
AND hitters.Team = subquery1.lose_team 
GROUP BY hitters.Game)AS subquery6 NATURAL JOIN subquery1
)AS subquery7 NATURAL JOIN (
SELECT Game, win_team, (win_H/win_AB) AS win_hit_rate
FROM(
SELECT Game, SUM(H) AS win_H, SUM(AB) AS win_AB
FROM hitters NATURAL JOIN games NATURAL JOIN subquery1
WHERE games.Date BETWEEN '2021-01-01 00:00:00' AND '2021-12-31 23:59:59'
AND hitters.Team = subquery1.win_team
GROUP BY hitters.Game)AS subquery2 NATURAL JOIN subquery1)AS subquery8
)AS subquery9
GROUP BY ABS(hit_rate_diff)
HAVING AVG(count) > 0.95
ORDER BY hit_rate_diff ASC
LIMIT 1;