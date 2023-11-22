SELECT s.name, s.vorname
FROM spieler s
JOIN strafe ON strafe.spielernr = s.spielernr
WHERE strafe.strafe >= 30
GROUP BY s.name,s.vorname
HAVING COUNT(*)>3