-- q1
SELECT Player.real_name, Player.birthday
FROM Player
WHERE NOT Player.nationality = 'KR'
AND Player.birthday LIKE '%1985%';