-- ================================================
-- Template generated from Template Explorer using:
-- Create Trigger (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- See additional Create Trigger templates for more
-- examples of different Trigger statements.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER ryssel_backup_trigger 
   ON  ryssel_wettkampf 
   AFTER DELETE

AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	INSERT INTO wettkampf_log(zeitstempel,hostname,username,typ,tabellenname,id,spielernr,team_id,punktzahlspieler,punktzahlgegner,datum)
	SELECT CURRENT_TIMESTAMP,
	HOST_NAME(),
	SUSER_NAME(),
	'Delete',
	'wettkampf',
	d.id,
	d.spielernr,
	d.team_id,
	d.punktzahlspieler,
	d.punktzahlgegner,
	d.datum

	FROM deleted as d
    -- Insert statements for trigger here

END
GO
