------- Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.-------
select Country, FirstName, LastName, CustomerId  
from Customer
where Country != 'USA'
 
 -----Provide a query only showing the Customers from Brazil.-----
 select Country 
 from customer
 where Country = 'Brazil'
 group by Country

------ Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.---
select firstName, LastName, BillingCountry, InvoiceDate
from invoice i 
join customer c 
on i.CustomerId = c.CustomerId
where i.CustomerId = c.CustomerId 
and Country = 'Germany'
group by FirstName, LastName, BillingCountry, InvoiceDate

------ provide a query showing only the Employees who are Sales Agents.------
select firstName, Title as [Im a sales agent] 
from Employee
where Title = 'Sales Support Agent'

----- Provide a query showing a unique/distinct list of billing countries from the Invoice table. ----
select count(distinct BillingCity)
from Invoice 
