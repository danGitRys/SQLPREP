SELECT team.name,spieler.name,spieler.vorname, sum(strafe.strafe) FROM team
JOIN strafe ON team.kapitaen_nr = strafe.spielernr
JOIN spieler ON  team.kapitaen_nr = spieler.spielernr
GROUP BY team.name,spieler.vorname,spieler.name
