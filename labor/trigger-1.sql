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
CREATE TRIGGER ryssel_strafe_trigger 
   ON  dbo.ryssel_strafe 
   AFTER INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @summe integer;
	DECLARE @anzahl integer;

	SELECT @summe = SUM(strafe) FROM ryssel_strafe;
	SELECT @anzahl = COUNT(*) FROM ryssel_strafe;

	PRINT(@summe);
	PRINT(@anzahl);


    -- Insert statements for trigger here

END
GO
