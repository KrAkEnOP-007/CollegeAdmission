CREATE TABLE [dbo].[Table]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [FIrstName] CHAR(15) NOT NULL, 
    [LastName] CHAR(15) NOT NULL, 
    [FatherName] CHAR(40) NOT NULL, 
    [FatherOccupation] CHAR(20) NOT NULL, 
    [MobileNo] BIGINT NOT NULL, 
    [Gender] CHAR(10) NOT NULL, 
    [BirthDate] DATE NOT NULL, 
    [Email] NVARCHAR(50) NOT NULL, 
    [Address] NVARCHAR(100) NOT NULL, 
    [City] CHAR(20) NOT NULL, 
    [Pincode] BIGINT NOT NULL, 
    [Category] CHAR(5) NOT NULL, 
    [SSCmarks] INT NOT NULL, 
    [AttemptsSSC] INT NOT NULL, 
    [HSCMarks] INT NOT NULL, 
    [AttemptsHSC] INT NOT NULL, 
    [Percentage] FLOAT NOT NULL, 
    [HSCMarksheet] NVARCHAR(50) NOT NULL, 
    [StudentPicture] NVARCHAR(50) NOT NULL
)
