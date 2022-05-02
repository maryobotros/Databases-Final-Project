-- q6
SELECT Team.team_name, Team.founded, COUNT(Members.player_id) AS num_players
FROM Team, Members
WHERE Team.founded < '20110101'
AND Members.team_id = Team.team_id
AND Team.disbanded IS NULL
GROUP BY Team.team_name, Team.founded;