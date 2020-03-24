CREATE TABLE [dbo].[Interventions]
(
	[InterventionId] INT NOT NULL PRIMARY KEY IDENTITY,
	StartDate DATETIME NULL,
	EndDate DATETIME NULL,
	Price FLOAT DEFAULT 0,
	Duration INT DEFAULT 0,
	IsOnGoing INT DEFAULT 0,
	WorkDescription NVARCHAR(MAX),
	WorkerId INT NULL,
	ContractId INT NOT NULL,
	CONSTRAINT FK_Worker FOREIGN KEY (WorkerId) REFERENCES Users(UserId),
	CONSTRAINT FK_Contrat FOREIGN KEY (ContractId) REFERENCES ClientContract(ContractId),
)
