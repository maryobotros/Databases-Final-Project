-- q5
SELECT tag, game_race
FROM 
	(SELECT Player.tag, Player.game_race, Earnings.position, Tournament.region, Tournament.major
    FROM Player, Earnings, Tournament
    WHERE Player.player_id = Earnings.player_id
    AND Tournament.tournament_id = Earnings.tournament_id
    GROUP BY Player.tag, Player.game_race, Earnings.position, Tournament.region, Tournament.major
    HAVING Earnings.position = 1
    AND Tournament.major = 1
    AND COUNT(distinct region)) AS Temp
GROUP BY game_race, tag
HAVING COUNT(*) > 2;