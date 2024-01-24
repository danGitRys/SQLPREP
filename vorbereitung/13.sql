SELECT DISTINCT spieler.vorname, spieler.name
FROM spieler
INNER JOIN strafe ON spieler.spielernr = strafe.spielernr
WHERE strafe.spielernr IS NOT NULL;
