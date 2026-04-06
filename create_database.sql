CREATE DATABASE CoworkingYYC;
GO

USE CoworkingYYC;

CREATE TABLE Roles (

	RoleId INT IDENTITY(1,1) PRIMARY KEY,

	Name varchar(20) NOT NULL

);
 
CREATE TABLE UserAccount (

	UserID INT IDENTITY(1,1) PRIMARY KEY,

	FOREIGN KEY (RoleId) REFERENCES Roles (RoleId),

	FirstName VARCHAR(50) NOT NULL,

	LastName VARCHAR(50) NOT NULL,

	Phone INT NOT NULL,

	Email VARCHAR(255) NOT NULL

)

 CREATE TABLE LeaseTerms (

	LeaseID INT IDENTITY(1, 1) PRIMARY KEY,

	TermName VARCHAR(100) NOT NULL,

	TermDate DATE NOT NULL,

	DurationMonths INT NOT NULL,

 )

 CREATE TABLE WorkspaceType (

	WorspaceTypeID INT IDENTITY(1, 1) PRIMARY KEY,

	SpaceName VARCHAR(50),
 )

 CREATE TABLE Provinces (

	ProvincesID INT IDENTITY(1, 1) PRIMARY KEY,

	Provinces CHAR(2),

 )

 CREATE TABLE Neighborhoods (

	NeighborhoodID INT IDENTITY(1, 1) PRIMARY KEY,

	NeighborhoodName VARCHAR(100) NOT NULL,

 )

 CREATE TABLE Property (
	
	PropertyID INT IDENTITY(1, 1) PRIMARY KEY,

	FOREIGN KEY (UserId) REFERENCES UserAccount (UserId),

	PropertyName VARCHAR(100) NOT NULL,

	StreetAddress VARCHAR(100) NOT NULL,

	City VARCHAR (50) NOT NULL,

	FOREIGN KEY (ProvinceID) REFERENCES Provinces (ProvinceID),

	PostalCode CHAR(6),

	FOREIGN KEY (NeighborhoodID) REFERENCES Neighborhoods (NeighborhoodID),

	AreaSqm INT NOT NULL,

	HasParking INT NOT NULL,

	HasPublicTransit INT NOT NULL,

 )

 CREATE TABLE Workspace (

	WorkspaceID INT IDENTITY(1, 1) PRIMARY KEY,

	FOREIGN KEY (PropertyID) REFERENCES Property (PropertyID),

	FOREIGN KEY (LeaseID) REFERENCES LeaseTerms (LeaseID),

	FOREIGN KEY (WorkspaceTypeID) REFERENCES WorkspaceType (WorkspaceTypeID),

	SeatingCapacity INT NOT NULL,

	AvailableFrom DATE NOT NULL,

	Price SMALLMONEY NOT NULL,
 )