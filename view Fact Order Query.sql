ALTER VIEW vm_FactOrders AS 
	SELECT 
		od.SalesOrderID AS OrderID
		,od.SalesOrderDetailID AS OrderDetailID
		,od.OrderQty
		,od.UnitPrice
		,od.LineTotal
		,od.ProductID
		,o.SubTotal

		,FORMAT(o.OrderDate, 'yyyyMMdd') OrderDateID
		,FORMAT(o.ShipDate,  'yyyyMMdd') ShipDateID
		,FORMAT(O.DueDate,   'yyyyMMdd') DueDateID


		,o.[Status] StatusID 
		,o.OnlineOrderFlag
		,o.CustomerID
		,SalesPersonID
		,o.TerritoryID
		,o.ShipMethodID

		,(CAST(od.[LineTotal] AS DECIMAL(18,5)) / o.SubTotal ) * o.TaxAmt AS TaxAmt
		,(CAST(od.[LineTotal] AS DECIMAL(18,5)) / o.SubTotal ) * o.Freight AS Freight
		,(CAST(od.[LineTotal] AS DECIMAL(18,5)) / o.SubTotal ) * o.TotalDue AS TotalDue 

	FROM 
		Sales.SalesOrderDetail od
		LEFT JOIN Sales.SalesOrderHeader o ON o.SalesOrderID = od.SalesOrderID;