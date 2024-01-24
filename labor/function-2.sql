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
CREATE FUNCTION dbo.ryssel_diff
(
	-- Add the parameters for the function here
	@zahl1 float,
	@zahl2 float
)
RETURNS INT
AS
BEGIN
	-- Declare the return variable here
	declare @ergebnis float=0;
	if @zahl1 > @zahl2
		select @ergebnis = @zahl1-@zahl2;
	if @zahl2 > @zahl1
		select @ergebnis = @zahl2-@zahl1;

	if @ergebnis< 0
		select @ergebnis = -@ergebnis

	RETURN @ergebnis;

END
GO

