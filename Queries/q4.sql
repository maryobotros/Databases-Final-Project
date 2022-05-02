-- q4
SELECT Player.real_name, Player.game_race, Tournament.tournament_name
FROM Player, Tournament, Matches
WHERE Matches.tournament_id = Tournament.tournament_id
AND CASE
	WHEN PlayerA_score - PlayerB_score >= 3 THEN Player.player_id = Matches.playerA_id
	WHEN PlayerB_score - PlayerA_score >= 3 THEN Player.player_id = Matches.playerB_id
END;