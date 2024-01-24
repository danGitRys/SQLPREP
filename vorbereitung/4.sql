SELECT vorname,name, MONTH(geboren) AS Monat FROM spieler
WHERE MONTH(geboren) BETWEEN 7 AND 12
ORDER BY Monat ASC
