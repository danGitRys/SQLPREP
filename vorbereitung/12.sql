SELECT ort, COUNT(*) AS Anzahl FROM spieler
GROUP BY ort 
HAVING COUNT(*) >=2