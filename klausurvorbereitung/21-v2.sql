---Niveau oberes Drittel
SELECT
    spieler.geschlecht,
    spieler.name,
    spieler.vorname,
    COUNT(*) as AnzahlSpiele
FROM
    spieler
JOIN
    wettkampf ON wettkampf.spielernr = spieler.spielernr
GROUP BY
    spieler.geschlecht,
    spieler.name,
    spieler.vorname
HAVING
    COUNT(*) >= ALL(
        SELECT
            COUNT(*)
        FROM
            wettkampf
        INNER JOIN
            spieler as spielerInner ON spielerInner.spielernr = wettkampf.spielernr
        WHERE
            spielerInner.geschlecht = spieler.geschlecht
        GROUP BY
            spielerInner.geschlecht, wettkampf.spielernr
    );
