INSERT INTO [NorthwindDW].[dbo].[Orders](CustomerID, EmployeeID, OrderDate, 
RequiredDate,ShippedDate,ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, 
ShipPostalCode, ShipCountry) SELECT CustomerID, EmployeeID, OrderDate, RequiredDate, 
ShippedDate,ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode,
ShipCountry FROM [NORTHWND].[dbo].[Orders] WHERE OrderDate >= 
CONVERT(DATE, GETDATE()) AND OrderDate < CONVERT(DATE, DATEADD(DAY,1, GETDATE()));

INSERT INTO [NorthwindDW].[dbo].[Order Details](OrderID, ProductID, UnitPrice, Quantity, Discount) 
SELECT od.OrderID, ProductID, UnitPrice, Quantity, Discount
FROM [NORTHWND].[dbo].[Order Details] od INNER JOIN [NORTHWND].[dbo].[Orders] o
ON od.OrderID = o.OrderID
WHERE OrderDate >= 
CONVERT(DATE, GETDATE()) AND 
OrderDate < CONVERT(DATE, DATEADD(DAY,1, GETDATE()));