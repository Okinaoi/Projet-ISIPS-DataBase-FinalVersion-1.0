CREATE FUNCTION [dbo].[SF_CheckLoginAndPassword]
(
	@Email NVARCHAR(200),
	@Password NVARCHAR(100)
)
RETURNS INT
AS
	BEGIN
		DECLARE @userId INT
		
		SELECT @userId = UserId FROM Users WHERE Email like @Email AND UserPassword like @Password
		IF(@userId IS NULL)
			SET @userId = 0;	
	RETURN @userId		
	END