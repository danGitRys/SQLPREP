SELECT name,vorname, SUM(strafe.strafe) AS strafenSumme FROM spieler
JOIN strafe ON spieler.spielernr = strafe.strafe
GROUP BY spieler.name, spieler.vorname

HAVING SUM(strafe.strafe) = (SELECT TOP 1 SUM(strafe.strafe) AS strafenSumme FROM spieler
JOIN strafe ON spieler.spielernr = strafe.strafe
GROUP BY spieler.name, spieler.vorname
ORDER BY SUM(strafe.strafe)DESC)