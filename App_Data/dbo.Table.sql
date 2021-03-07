CREATE TABLE [dbo].[Table]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [FirstName] CHAR(15) NOT NULL, 
    [LastName] CHAR(15) NOT NULL, 
    [FatherName] CHAR(40) NOT NULL, 
    [Gender] CHAR(7) NOT NULL, 
    [BirthDate] DATE NOT NULL, 
    [MobileNo] BIGINT NOT NULL, 
    [Email] NVARCHAR(50) NOT NULL, 
    [Address] NVARCHAR(100) NOT NULL, 
    [City] CHAR(20) NOT NULL, 
    [Pincode] BIGINT NOT NULL, 
    [FatherOccupation] NVARCHAR(20) NOT NULL, 
    [Category] CHAR(5) NOT NULL, 
    [SSCMarks] INT NOT NULL, 
    [SSCAttempts] INT NOT NULL, 
    [HSCMarks] INT NOT NULL, 
    [HSCAttempts] INT NOT NULL, 
    [PercentageHSC] FLOAT NOT NULL, 
    [StudentPicture] IMAGE NOT NULL
)
