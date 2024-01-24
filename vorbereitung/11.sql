SELECT spielernr,SUM(strafe) FROM strafe
GROUP BY spielernr
ORDER BY SUM(strafe) DESC