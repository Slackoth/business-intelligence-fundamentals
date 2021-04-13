--NORTHWND DB
-- ¿Cuál es el ingreso por clientes?
SELECT o.CustomerID, c.CompanyName, SUM((od.Quantity * od.UnitPrice)) as 'Ingreso total'
FROM Orders o INNER JOIN [Order Details] od
ON o.OrderID = od.OrderID INNER JOIN Customers c
ON o.CustomerID = c.CustomerID
GROUP BY o.CustomerID, c.CompanyName
ORDER BY SUM((od.Quantity * od.UnitPrice)) DESC;

--¿Cuál es el ingreso por territorio y categoría?
SELECT ISNULL(o.ShipRegion, 'No disponible') as Territorio, c.CategoryName as Categoria, 
SUM((od.Quantity * od.UnitPrice)) as 'Ingreso total'
FROM Orders o INNER JOIN [Order Details] od
ON o.OrderID = od.OrderID INNER JOIN Products p
ON od.ProductID = p.ProductID INNER JOIN Categories c
ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName, o.ShipRegion
ORDER BY o.ShipRegion DESC;

--Detallar el top 5 de las ventas por empleado
SELECT TOP(5) e.FirstName, e.LastName, SUM((od.Quantity * od.UnitPrice)) as 'Ventas totales'
FROM Orders o INNER JOIN [Order Details] od
ON o.OrderID = od.OrderID INNER JOIN Employees e
ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID, e.FirstName, e.LastName
ORDER BY SUM((od.Quantity * od.UnitPrice)) DESC;

/*¿Cuál es top 5 del ingreso por clientes (empresas) que compraron en el cuarto 
trimestre del año 1997?*/
SELECT TOP(5) o.CustomerID, c.CompanyName, 
SUM((od.Quantity * od.UnitPrice)) as 'Ingreso total'
FROM Orders o INNER JOIN [Order Details] od
ON o.OrderID = od.OrderID INNER JOIN Customers c
ON o.CustomerID = c.CustomerID
WHERE O.OrderDate BETWEEN  '1997-10-01' AND '1997-12-31'
GROUP BY o.CustomerID, c.CompanyName
ORDER BY SUM((od.Quantity * od.UnitPrice)) DESC;