-- Me fijo en cuántas ocasiones se vendieron más de 1 producto por fila (para ver si vale la pena el dato de la col o no)
-- SELECT count(*) AS 'Q_not_1'
-- FROM [AdventureWorksDW2022].[dbo].[FactInternetSales]
-- WHERE [OrderQuantity] <> 1

SELECT 
   [ProductKey]
  ,[OrderDateKey]
  ,[DueDateKey]
  ,[ShipDateKey]
  ,[CustomerKey]
  --,[PromotionKey]     En caso de requisito en UM, para ver el descuento - En realidad no, está 'Discount Amount' en esta tabla también.
  --,[CurrencyKey]      En caso de requisito en UM - Está el precio en esta tabla.
  --,[SalesTerritoryKey]
  ,[SalesOrderNumber]
  --,[SalesOrderLineNumber]
  --,[RevisionNumber]
  --,[OrderQuantity]    No lo necesito porque es siempre 1
  --,[UnitPrice]
  --,[ExtendedAmount]
  --,[UnitPriceDiscountPct]
  --,[DiscountAmount]
  --,[ProductStandardCost]
  --,[TotalProductCost]
  ,[SalesAmount]
  --,[TaxAmt]
  --,[Freight]
  --,[CarrierTrackingNumber]
  --,[CustomerPONumber]
  --,[OrderDate]
  --,[DueDate]
  --,[ShipDate]
FROM [AdventureWorksDW2022].[dbo].[FactInternetSales]
WHERE 
    LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -2 -- Últimos 2 años desde la fecha de hoy
ORDER BY
    ProductKey ASC