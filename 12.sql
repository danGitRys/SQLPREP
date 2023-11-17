SELECT ort, COUNT(*) FROM spieler
GROUP by ort
HAVING COUNT(*) >=2