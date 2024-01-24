Declare @name varchar;
Declare @vorname varchar;
Declare @spielernr int;
Declare @CursorName AS CURSOR;
SET @CursorName = CURSOR FOR
SELECT spielernr, [name], vorname
FROM spieler
OPEN @CursorName;
FETCH NEXT FROM @CursorName INTO @spielernr, @name,@vorname
WHILE @@FETCH_STATUS = 0
BEGIN
PRINT(cast(@spielernr as VARCHAR(3))+CHAR(9) + @vorname + CHAR(9) + @name);
FETCH NEXT FROM @CursorName INTO @spielernr, @name,@vorname
END
CLOSE @CursorName;
DEALLOCATE @CursorName