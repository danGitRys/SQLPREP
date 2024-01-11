SELECT 
    sp.spielernr,
    sp.name,
    sp.vorname,
    SUM(st.strafe) AS Gesamtstrafe
FROM 
    spieler sp 
JOIN 
    strafe st ON sp.spielernr = st.spielernr
GROUP BY
    sp.spielernr,
    sp.name,
    sp.vorname
HAVING
    SUM(st.strafe) > (
        SELECT 
            SUM(s.strafe) / (SELECT COUNT(*) - 1 FROM spieler)
        FROM 
            strafe s 
        WHERE 
            s.spielernr <> sp.spielernr
    )
ORDER BY 
    Gesamtstrafe DESC;
