SELECT COUNT(*) AS Total_Matches
FROM matches;
SELECT COUNT(*) AS Total_Deliveries
FROM deliveries;
SELECT winner, COUNT(*) AS Wins
FROM matches
WHERE winner IS NOT NULL
GROUP BY winner
ORDER BY Wins DESC;
SELECT player_of_match, COUNT(*) AS Awards
FROM matches
WHERE player_of_match IS NOT NULL
GROUP BY player_of_match
ORDER BY Awards DESC
LIMIT 10;
SELECT winner, COUNT(*) AS Wins
FROM matches
WHERE winner IS NOT NULL
GROUP BY winner
ORDER BY Wins DESC
LIMIT 10;
SELECT batter, SUM(total_runs) AS Total_Runs
FROM deliveries
GROUP BY batter
ORDER BY Total_Runs DESC
LIMIT 10;
SELECT bowler, COUNT(*) AS Wickets
FROM deliveries
WHERE is_wicket = 1
GROUP BY bowler
ORDER BY Wickets DESC
LIMIT 10;
SELECT DISTINCT is_wicket
FROM deliveries;
DROP TABLE deliveries;
SHOW VARIABLES LIKE 'secure_file_priv';