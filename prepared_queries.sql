--List all properties along with the owner’s name and contact information.
SELECT	ua.FirstName + ', ' + ua.LastName AS 'Owner Name',
		ua.Phone + ', ' + ua.Email AS 'Owner Contact Info',
		p.PropertyName 
	FROM Property p
		JOIN UserAccount ua
			ON p.UserID = ua.UserID
	WHERE ua.RoleID = 2;

--Find all workspaces in Calgary with parking available.
SELECT w.WorkspaceID, p.HasParking FROM Property p
	JOIN Workspace w
		ON p.PropertyID = w.PropertyID
WHERE p.City = 'Calgary' AND p.HasParking = 1;


--Find the total number of workspaces available for each property
SELECT p.PropertyName, COUNT(p.PropertyID) AS WorkspacesAvailable FROM Property p
	JOIN Workspace w
		ON p.PropertyID = w.PropertyID
	GROUP BY P.PropertyName
	ORDER BY p.PropertyName;

-- Find the workspace with a minimum of 20 seating capacity.select seatingcapacity, the property name and street address.
SELECT w.SeatingCapacity, w.Price, p.PropertyName, StreetAddress

FROM Workspace w JOIN Property p ON w.PropertyID = p.PropertyID

WHERE w.SeatingCapacity > = 20;
 

 --Find the average price of workspaces grouped by workspace type.
SELECT WorkspaceTypeID, AVG(Price) AS [Average Workspace Price] FROM Workspace 

GROUP BY WorkspaceTypeID;
 

 --Find all workspaces with a price less than $1000.
 SELECT WorkspaceID, Price FROM Workspace
	WHERE Price < 1000;

-- Find workspaces that are accessible by public transportation and can seat at least 10 people
SELECT w.*
FROM Workspace w
JOIN Property p ON w.PropertyID = p.PropertyID
WHERE w.SeatingCapacity >= 10
AND p.HasPublicTransit = 1;

--List all workspaces along with their lease term names and durations.
SELECT w.WorkspaceID, l.TermName, l.DurationMonths FROM Workspace w
	JOIN LeaseTerms l
		ON w.LeaseID = l.LeaseID;

--Find all workspaces available after a specific date.
SELECT * FROM Workspace WHERE AvailableFrom > '2026-04-30';

--Find the property with the largest total workspace area 
SELECT TOP 1 PropertyName, AreaSqm FROM Property ORDER BY AreaSqm DESC
 