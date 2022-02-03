SELECT inv.Number AS 'Numer faktury', COUNT(invpos.ProductId) AS '��czna liczba produkt�w'
FROM Invoices inv
INNER JOIN InvoicePositions invpos ON inv.Id=invpos.InvoiceId
INNER JOIN Products pro ON pro.Id=invpos.ProductId
GROUP BY inv.Number