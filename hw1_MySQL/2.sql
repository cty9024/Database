SELECT Game, CAST(SUBSTRING(Inning,2)AS UNSIGNED) AS num_innings
FROM inning
WHERE CAST(SUBSTRING(Inning,2) AS UNSIGNED) = (
  SELECT MAX(CAST(SUBSTRING(Inning,2) AS UNSIGNED))
  FROM inning
)
ORDER BY Game ASC;