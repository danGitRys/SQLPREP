SELECT spielernr,name,vorname FROM spieler
WHERE spielernr > (SELECT AVG(spielernr) FROM spieler)
