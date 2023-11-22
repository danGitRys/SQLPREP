SELECT spieler.geschlecht, spieler.name, spieler.vorname, COUNT(*) as AnzahlSpiele
FROM spieler
JOIN wettkampf ON wettkampf.spielernr = spieler.spielernr
GROUP BY spieler.geschlecht,spieler.name,spieler.vorname
HAVING COUNT(*) = 
	(SELECT TOP 1 COUNT(*) FROM spieler sp
	JOIN wettkampf ON wettkampf.spielernr = sp.spielernr
	WHERE sp.geschlecht = spieler.geschlecht
	GROUP BY sp.spielernr
	ORDER BY COUNT(*) DESC
	)