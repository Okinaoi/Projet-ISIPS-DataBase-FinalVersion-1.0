CREATE PROCEDURE [dbo].[SP_SELECT_CONTRACT_ALL]

	
AS
	SELECT CC.ContractId, CC.ContractType, CC.InterventionCount,
		   CC.StartDate, CC.EndDate, CC.Duration, 
		   CC.IsOnGoing, CC.InterventionCount, A.AddressId,
		   A.HouseNumber, A.StreetName, A.City, A.PostalCode,
		   U.UserId, U.Firstname, U.Lastname, U.Phonenumber

	FROM ClientContract CC
	JOIN Addresses A ON CC.AddressId = A.AddressId
	JOIN Users U ON U.UserId = CC.ClientId

