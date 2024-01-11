SELECT wettkampf.datum,team.name,sp.name,sp.vorname, preisgeld.preisgeld,preisgeld.ausgezahlt_am,strafe.strafe FROM wettkampf 
FULL OUTER JOIN spieler as sp ON sp.spielernr = wettkampf.spielernr
INNER JOIN team ON wettkampf.team_id = team.id
INNER JOIN preisgeld ON preisgeld.wettkampf_id = wettkampf.id
INNER JOIN strafe ON strafe.datum = wettkampf.datum
ORDER by wettkampf.datum DESC