CREATE PROCEDURE [dbo].[SP_SELECT_TECHNICIAN_ALL]

AS
	BEGIN
		SET NOCOUNT ON

		SELECT U.UserId, Lastname, Firstname, BirthDate, 
			   NationalNumber, Phonenumber, Email, Sex,
			   CompanyStatus, HouseNumber, StreetName, City,
			   PostalCode
	   
	   FROM Users U
	   JOIN Addresses A ON U.PrivateAddressId = A.AddressId
	   WHERE U.CompanyStatus = 2
	END
