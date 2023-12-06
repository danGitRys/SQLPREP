-- ================================================
-- Template generated from Template Explorer using:
-- Create Scalar Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
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
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION dbo.ryssel_zeichenCount 
(
	-- Add the parameters for the function here
	@text varchar(1000),
	@switch int
)
RETURNS INT
AS
BEGIN
	-- Declare the return variable here
	declare @ergebnis int=null;
	if @switch = 0
		select @ergebnis = LEN(REPLACE(@text,' ',''));
	if @switch = 1
		select @ergebnis = LEN(@text);
	RETURN @ergebnis;

END
GO

