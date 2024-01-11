SELECT 
wettkampf.datum,team.name,wettkampf.spielernr,
spieler.name,spieler.vorname,preisgeld,preisgeld.ausgezahlt_am,strafe,strafe.datum
FROM wettkampf
INNER JOIN spieler ON spieler.spielernr = wettkampf.spielernr
INNER JOIN team ON wettkampf.team_id = team.id
LEFT JOIN preisgeld ON preisgeld.wettkampf_id = wettkampf.id
LEFT JOIN strafe ON strafe.datum = wettkampf.datum AND strafe.spielernr = wettkampf.spielernr
 ORDER by wettkampf.datum desc