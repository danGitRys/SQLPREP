SELECT spieler.name AS Spielername,spieler.vorname, team.name AS Teamname,
kapt.name,kapt.vorname FROM spieler

JOIN wettkampf ON wettkampf.spielernr = spieler.spielernr
JOIN team ON team.id = wettkampf.team_id
JOIN spieler kapt ON kapt.spielernr= team.kapitaen_nr

WHERE (DATEDIFF(DAY,spieler.geboren,wettkampf.datum)) IN

	(SELECT TOP 1 DATEDIFF(DAY,spieler.geboren,wettkampf.datum)FROM spieler
	JOIN wettkampf ON wettkampf.spielernr = spieler.spielernr
	ORDER BY DATEDIFF(DAY,spieler.geboren,wettkampf.datum) ASC)
	


--ORDER BY DATEDIFF(DAY,spieler.geboren,wettkampf.datum) ASC
