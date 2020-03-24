CREATE TABLE [dbo].[Addresses]
(
	[AddressId] INT NOT NULL PRIMARY KEY IDENTITY,
	HouseNumber INT,
	StreetName NVARCHAR(200),
	City NVARCHAR(200),
	PostalCode NVARCHAR(4),
	CONSTRAINT CK_PostalCodeLength CHECK (LEN(PostalCode) = 4)
)
