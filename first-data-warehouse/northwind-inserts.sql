SELECT * FROM Orders;
SELECT * FROM [Order Details];

INSERT INTO [Orders](CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, 
ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES('VINET',5,'2021-04-07 00:00:00.000','2021-05-01 00:00:00.000',
'2021-04-16 00:00:00.000', 3,32.38,'Vins et alcools Chevalier','59 rue de l''Abbaye','Reims',
NULL,'51100','France');

INSERT INTO [Order Details] VALUES(11078, 77, 13.00,2,0);