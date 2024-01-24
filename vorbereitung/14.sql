SELECT COUNT(*) FROM wettkampf WHERE 
team_id = (SELECT id FROM team WHERE name='Bären');

SELECT COUNT(*)
FROM wettkampf w JOIN team t ON w.team_id = t.id
WHERE t.name = 'Bären'