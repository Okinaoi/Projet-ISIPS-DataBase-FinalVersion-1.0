CREATE FUNCTION [dbo].[SF_Check_RN_Unique]
(
	@rn NVARCHAR(11)
)
RETURNS INT
AS
	BEGIN
		DECLARE @result INT = 0
		IF((SELECT UserId FROM Users WHERE NationalNumber like @rn) IS NULL)
			SET @result = 1
	RETURN @result
	END
