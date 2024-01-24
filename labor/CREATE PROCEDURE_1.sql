CREATE PROCEDURE
dbo.ryssel_SelectAll
AS
SELECT ryssel_spieler.spielernr,[name],vorname, SUM(ryssel_strafe.strafe)  FROM dbo.ryssel_spieler
JOIN dbo.ryssel_strafe ON ryssel_spieler.spielernr = ryssel_strafe.spielernr
GROUP BY ryssel_spieler.spielernr,vorname,[name]