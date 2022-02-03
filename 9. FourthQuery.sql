SELECT inv.Number AS 'Numer faktury', SUM(invpos.Quantity * pro.Price) AS 'Cena ca³kowita'
FROM Invoices inv
INNER JOIN InvoicePositions invpos ON inv.Id=invpos.InvoiceId
INNER JOIN Products pro ON invpos.ProductId=pro.Id
GROUP BY inv.Number