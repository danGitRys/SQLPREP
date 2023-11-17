SELECT geschlecht,AVG(DATEDIFF(year,geboren,GETDATE())) FROM spieler
GROUP BY geschlecht