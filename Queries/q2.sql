-- q2
SELECT Player.tag, Player.real_name, Player.nationality, Team.team_name
FROM Player, Team, Members
WHERE Members.player_id = Player.player_id
AND Members.team_id = Team.team_id
AND PLayer.game_race = 'Z';