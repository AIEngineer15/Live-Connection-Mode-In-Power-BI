CREATE VIEW vm_DimStatuses AS
	SELECT 1 StatuesID , 'In Process'  [Status] UNION ALL
	SELECT 2 StatuesID , 'Approved'    [Status] UNION ALL
	SELECT 3 StatuesID , 'Backordered' [Status] UNION ALL
	SELECT 4 StatuesID , 'Rejected'    [Status] UNION ALL
	SELECT 5 StatuesID , 'Shipped'     [Status] UNION ALL 
	SELECT 6 StatuesID , 'Cancelled'   [Status] 
	