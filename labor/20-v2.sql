SELECT
geschlecht, name, vorname,COUNT(*) as anzahl
FROM wettkampf
INNER JOIN
spieler as s1 ON s1.spielernr = wettkampf.spielernr
GROUP BY
geschlecht, wettkampf.spielernr,name,vorname
HAVING COUNT(*) >= 
ALL(SELECT COUNT(*) FROM wettkampf
INNER JOIN spieler ON spieler.spielernr = wettkampf.spielernr
WHERE spieler.geschlecht = s1.geschlecht
GROUP BY geschlecht, wettkampf.spielernr)