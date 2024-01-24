CREATE PROCEDURE dbo.preisgeld

@WettkampID int,
@Preisgeld money

AS 
IF @paramWEttkampfID IN(SELECT preisgeld.wettkampf_id FROM preisgeld)
    PRINT(Preisgeld exestier)
ELSE
INSERT INTO preisgeld (wettkampf_id,preisgeld)
VALUES(@paramWEttkampfID,@money)