SELECT inv.Number AS 'Numer faktury', COUNT(invpos.ProductId) AS '£¹czna liczba produktów'
FROM Invoices inv
INNER JOIN InvoicePositions invpos ON inv.Id=invpos.InvoiceId
INNER JOIN Products pro ON pro.Id=invpos.ProductId
GROUP BY inv.Number