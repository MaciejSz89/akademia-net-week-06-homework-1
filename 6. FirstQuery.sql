SELECT inv.Number AS 'Numer faktury', cli.FirstName AS 'Imi� klienta', LastName AS 'Nazwisko klienta' 
FROM Invoices inv
INNER JOIN Clients cli ON inv.ClientId=cli.Id