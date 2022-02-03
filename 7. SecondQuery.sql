SELECT inv.Number, pro.Name, pro.Price
FROM Invoices inv
INNER JOIN InvoicePositions invpos ON inv.Id=invpos.InvoiceId
INNER JOIN Products pro ON pro.Id = invpos.ProductId