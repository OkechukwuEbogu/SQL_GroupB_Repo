CREATE DATABASE CoworkingYYC;
GO

USE CoworkingYYC;

CREATE TABLE Roles (

	RoleID							INT IDENTITY(1,1)	PRIMARY KEY,

	Name							VARCHAR(20)			NOT NULL

);
 
CREATE TABLE UserAccount (

	UserID							INT IDENTITY(1,1)	PRIMARY KEY,

	RoleID							INT					NOT NULL,

	FirstName						VARCHAR(50)			NOT NULL,

	LastName						VARCHAR(50)			NOT NULL,

	Phone							VARCHAR(50)			NOT NULL,

	Email							VARCHAR(100)		NOT NULL,

	FOREIGN KEY (RoleID)								REFERENCES Roles (RoleID)

);

 CREATE TABLE LeaseTerms (

	LeaseID							INT IDENTITY(1, 1)	PRIMARY KEY,

	TermName						VARCHAR(100)		NOT NULL,

	TermDate						DATE				NOT NULL,

	DurationMonths					INT					NOT NULL,

 );

 CREATE TABLE WorkspaceType (

	WorkspaceTypeID					INT IDENTITY(1, 1)	PRIMARY KEY,

	SpaceName						VARCHAR(50),
 );

 CREATE TABLE Provinces (

	ProvinceID						INT IDENTITY(1, 1)	PRIMARY KEY,

	Provinces						CHAR(2)				NOT NULL,

 );

 CREATE TABLE Neighborhoods (

	NeighborhoodID					INT IDENTITY(1, 1)	PRIMARY KEY,

	NeighborhoodName				VARCHAR(100)		NOT NULL,

 );

 CREATE TABLE Property (
	
	PropertyID						INT IDENTITY(1, 1)	PRIMARY KEY,

	UserID							INT					NOT NULL,

	PropertyName					VARCHAR(100)		NOT NULL,

	StreetAddress					VARCHAR(100)		NOT NULL,

	City							VARCHAR (50)		NOT NULL,

	ProvinceID						INT					NOT NULL,

	PostalCode						CHAR(6)				NOT NULL,

	NeighborhoodID					INT					NOT NULL,

	AreaSqm							NUMERIC(8,2)		NOT NULL,

	HasParking						BIT					NOT NULL,

	HasPublicTransit				BIT					NOT NULL,

	FOREIGN KEY (UserID)								REFERENCES UserAccount (UserID),

	FOREIGN KEY (ProvinceID)							REFERENCES Provinces (ProvinceID),

	FOREIGN KEY (NeighborhoodID)						REFERENCES Neighborhoods (NeighborhoodID),

 );

 CREATE TABLE Workspace (

	WorkspaceID						INT IDENTITY(1, 1)	PRIMARY KEY,

	PropertyID						INT					NOT NULL,

	LeaseID							INT					NOT NULL,

	WorkspaceTypeID					INT					NOT NULL,

	SeatingCapacity					INT					NOT NULL,

	AvailableFrom					DATE				NOT NULL,

	Price							SMALLMONEY			NOT NULL,

	FOREIGN KEY (PropertyID)							REFERENCES Property (PropertyID),

	FOREIGN KEY (LeaseID)								REFERENCES LeaseTerms (LeaseID),

	FOREIGN KEY (WorkspaceTypeID)						REFERENCES WorkspaceType (WorkspaceTypeID),
 );