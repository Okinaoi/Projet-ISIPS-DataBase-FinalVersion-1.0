CREATE TABLE [dbo].[ClientContract]
(
	[ContractId] INT NOT NULL PRIMARY KEY IDENTITY,
	ContractType INT NOT NULL,
	StartDate DATETIME NULL,
	EndDate DATETIME NULL,
	Duration INT,
	InterventionCount INT DEFAULT 1,
	IsOnGoing INT DEFAULT 1,
	WorkDescription NVARCHAR(MAX),
	ClientId INT NULL,
	AddressId INT NOT NULL,
	CONSTRAINT FK_ClientId FOREIGN KEY (ClientId) REFERENCES Users(UserId),
	CONSTRAINT FK_AddressId FOREIGN KEY (AddressId) REFERENCES Addresses(AddressId)
)
