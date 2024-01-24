SELECT s.name, s.vorname, SUM(strafe.strafe), COUNT(strafe.strafe), AVG(strafe.strafe) 
FROM spieler s
JOIN strafe ON strafe.spielernr = s.spielernr
WHERE strafe.strafe >= 30
GROUP BY s.name,s.vorname
HAVING COUNT(*)>3