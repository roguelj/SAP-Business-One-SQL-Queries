SELECT 
     T0.[ItemCode],
     T0.[DistNumber],
     T0.[LotNumber],
     T0.[Notes],
     T1.[WhsCode],
     T1.[Quantity],
     T1.[CommitQty],
     T2.[Location],
     T0.[Status],
     T3.[SWW]

 FROM
     [dbo].[OBTN] T0
     LEFT OUTER JOIN [dbo].[OBTQ] T1 ON T0.[ItemCode] = T1.[ItemCode] AND T0.[SysNumber] = T1.[SysNumber] 
     INNER JOIN [dbo].[OBTW] T2 ON T0.[ItemCode] = T2.[ItemCode] AND T0.[SysNumber] = T2.[SysNumber] AND T1.[WhsCode] = T2.[WhsCode]
     INNER JOIN [dbo].[OITM] T3 ON T0.[ItemCode] = T3.[ItemCode]
     
 WHERE 
     T1.[Quantity] > 0