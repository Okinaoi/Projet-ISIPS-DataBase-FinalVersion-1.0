CREATE TABLE [dbo].[Users]
(
	[UserId] INT NOT NULL PRIMARY KEY IDENTITY,
	Lastname NVARCHAR(100),
	Firstname NVARCHAR(100),
	BirthDate DATETIME,
	NationalNumber NVARCHAR(11) UNIQUE NOT NULL,
	Phonenumber NVARCHAR(10),
	Email NVARCHAR(MAX) NOT NULL,
	UserPassword NVARCHAR(100),
	Sex NVARCHAR(1),
	CompanyStatus INT DEFAULT 1 NOT NULL,
	PrivateAddressId INT,
	CONSTRAINT FK_PrivateAddress FOREIGN KEY (PrivateAddressId) REFERENCES Addresses(AddressId),
	CONSTRAINT CK_PhoneNumberBetweenNineAndTen CHECK (Phonenumber is null or isnumeric(Phonenumber) = 1 AND LEN(Phonenumber) in (9,10)),
	CONSTRAINT CK_CompanyStatusAcceptedValues CHECK (CompanyStatus in (1,2,3))
)
