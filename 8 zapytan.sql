SELECT * FROM Customers WHERE Country="Germany"
SELECT * FROM Customers WHERE City="Berlin"
SELECT * FROM Customers WHERE City="Berlin" AND WHERE Country="Germany"
SELECT * FROM Customers WHERE City="Berlin" OR City="Munchen" AND Country="Germany"
SELECT * FROM Customers WHERE NOT Country="Germany" AND Country="USA"
SELECT * FROM Customers ORDER BY Country ASC
SELECT * FROM Customers ORDER BY Country DESC
SELECT * FROM Customers ORDER BY Country DESC, CustomerName ASC;