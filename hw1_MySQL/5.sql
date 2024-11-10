SELECT any_value(team_name), any_value(The_month), MIN(time1) AS time_interval
FROM(
	SELECT team_name, LEFT(DATE, 7) AS The_month,
	LEFT(TIMEDIFF(DATE, LAG(DATE, 1, 0) OVER (PARTITION BY team_name ORDER BY DATE ASC)), 5) AS time1
	FROM (
	    SELECT DISTINCT away AS team_name, DATE
	    FROM games 
	    WHERE LEFT(DATE, 7) = (
	        SELECT LEFT(DATE, 7)
	        FROM games
	        GROUP BY LEFT(DATE, 7)
	        ORDER BY COUNT(*) DESC
	        LIMIT 1
	    )
	    UNION ALL
	    SELECT DISTINCT home AS team_name, DATE
	    FROM games 
	    WHERE LEFT(DATE, 7) = (
	        SELECT LEFT(DATE, 7)
	        FROM games
	        GROUP BY LEFT(DATE, 7)
	        ORDER BY COUNT(*) DESC
	        LIMIT 1
	    )   
	) AS subquery1
	ORDER BY team_name ASC
)AS subquery2
GROUP BY team_name;