SELECT
     T0.[DocNum],
     T0.[DocDate],
     T0.[NumAtCard],
     T0.[CardCode],
     T0.[CardName],
     T1.[ItemCode],
     T1.[WhsCode],
     T1.[Quantity],
     T1.[OpenQty],
     T1.[ShipDate],
     T2.[SlpName]
 FROM    
     [dbo].[ODLN] T0
     INNER JOIN [dbo].[DLN1] T1 ON T0.[DocEntry] = T1.[DocEntry]
     LEFT  JOIN [dbo].[OSLP] T2 ON T1.[SlpCode] = T2.[SlpCode]

 WHERE
     T1.[LineStatus] !='C'