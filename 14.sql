SELECT COUNT(*) FROM wettkampf WHERE 
team_id = (SELECT id FROM team WHERE name='B�ren');

SELECT COUNT(*)
FROM wettkampf w JOIN team t ON w.team_id = t.id
WHERE t.name = 'B�ren'