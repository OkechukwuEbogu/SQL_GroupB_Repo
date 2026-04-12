INSERT INTO Roles (Name)
VALUES ('Coworker'), ('Owner');

INSERT INTO UserAccount (RoleID, FirstName, LastName, Phone, Email)
VALUES 
(2, 'John', 'Smith', 4035550123, 'john.smith@email.com'),
(2, 'Mary', 'Johnson',5875550198, 'mary.johnson@email.com'),
(1, 'David ', 'Brown ', 4035558876, 'david.brown@email.com'),
(1, 'Sarah ', 'Wilson ', 8255553344, 'sarah.wilson@email.com'),
(1, 'Michael ', 'Taylor', 5875554421, 'michael.taylor@email.com '),
(1, 'Linda ', 'Anderson', 4035559012, 'john.smith@email.com'),
(2, 'James', 'Thomas', 8255557743, 'james.thomas@email.com'),
(1, 'Patricia', 'Moore' ,4035550123, 'patricia.moore@email.com'),
(1, 'Robert', 'Jackson', 4035551209, 'robert.jackson@email.com'),
(1, 'Emily', 'White', 8255559981, 'emily.white@email.com')


INSERT INTO LeaseTerms (TermName, TermDate, DurationMonths)
VALUES
('Short-Term Flex', '2026-01-01', 3),
('Startup Plan', '2026-02-15', 6),
('Standard 1 Year', '2026-03-01', 12),
('Premium Annual', '2026-04-01', 12),
('Enterprise Plan', '2026-05-01', 24),
('Corporate Long Term', '2026-06-01', 36),
('Freelancer Monthly', '2026-07-01', 1),
('Growing Tem Plan', '2026-08-15', 18),
('Executive Suit Team', '2026-09-01', 12),
('Flexible Bi-Annual', '2026-10-01', 6);


INSERT INTO WorkspaceType
VALUES
('Private Office'),
('Coworking Desk'),
('Studio Space'),
('Meeting Room'),
('Open Workspace'),
('Training Room'),
('Event Space');

select * from Provinces 


INSERT INTO Provinces 
VALUES
('AB'),
('BC'),
('ON'),
('MB'),
('SK'),
('QB'),
('NS'),
('NB'),
('NL'),
('PE');


INSERT INTO Neighborhoods 
VALUES
('Downtown'),
('Beltline'),
('Mission'),
('Kensington'),
('Eau Claire'),
('Inglewood'),
('Sunridge'),
('Bridgeland'),
('Marda Loop'),
('Forest Lawn');



INSERT INTO Property 
(UserID, PropertyName, StreetAddress, City, ProvinceID, PostalCode, NeighborhoodID, AreaSqm, HasParking, HasPublicTransit)
VALUES
(1, 'Maple Office Hub', '123 Maple St', 'Calgary', 1, 'T2P1A1', 1, 250, 1, 1),
(2, 'Downtown Workspace', '450 8 Ave SW', 'Calgary', 1, 'T2P2M7', 2, 180, 0, 1),
(3, 'Riverbend Studios', '78 River Rd SE', 'Calgary', 1, 'T2C3L4', 3, 320, 1, 0),
(4, 'Aurora Offices', '910 Aurora Blvd', 'Edmonton', 1, 'T5J0N3', 4, 400, 1, 1),
(5, 'Midtown Suites', '66 Midtown Cres', 'Calgary', 1, 'T3C1Z2', 5, 210, 0, 1),
(6, 'Lakeside Business', '301 Lakeview Dr', 'Red Deer', 1, 'T4N5E6', 6, 275, 1, 0),
(7, 'Northgate Offices', '888 Northgate Way', 'Calgary', 1, 'T3K5X4', 7, 360, 1, 1),
(8, 'Sunridge Workspace', '1200 Sunridge Rd NE', 'Calgary', 1, 'T1Y7M4', 8, 190, 0, 1),
(9, 'Westpark Towers', '55 Westpark Blvd', 'Calgary', 1, 'T3B2H9', 9, 500, 1, 1),
(10, 'Central Loft Space', '14 Centre St S', 'Calgary', 1, 'T2G2C8', 10, 145, 0, 1);


INSERT INTO Workspace 
(PropertyID, LeaseID, WorkspaceTypeID, SeatingCapacity, AvailableFrom, Price)
VALUES
(1, 1, 1, 6, '2026-03-01', 1200),
(2, 2, 2, 1, '2026-02-15', 450),
(3, 3, 3, 10, '2026-04-01', 1800),
(4, 4, 4, 12, '2026-02-20', 800),
(5, 5, 1, 4, '2026-03-10', 950),
(6, 6, 5, 20, '2026-05-01', 2500),
(7, 7, 6, 25, '2026-03-05', 2200),
(8, 8, 2, 1, '2026-02-10', 400),
(9, 9, 1, 8, '2026-04-15', 1600),
(10, 10, 7, 40, '2026-06-01', 3500);
