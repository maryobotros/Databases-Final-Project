-- q3
SELECT Tournament.tournament_name, Tournament.region, Earnings.prize_money
FROM Tournament, Earnings
WHERE Earnings.tournament_id = Tournament.tournament_id
AND Earnings.prize_money >= 10000
ORDER BY Earnings.prize_money DESC;