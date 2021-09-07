select *
 ,ArtistId + 100000
from Artist
where Name like 'c%'

-- how many customers are in each state?

select FirstName as [Name of Customer], 
count(*) [Amount With Name]
from Customer 
-- grouping based on state
group by FirstName  -- when you wrap in square brackets it tells sql its not a keyword. r

select isnull([State], Country) as [Customer Location],
 count(*) "Number of Customers",
 [Customer Names] = string_agg(firstname, ',')
 from Customer c
-- group by [State],Country
group by isnull([State], Country)

-- How many music tracks was purchased by each customer Country?
Select *
from Invoice -- billingCountry, CustomerId

select * 
From InvoiceLine -- tracks on the invoice 

select BillingCountry, count(TrackId)
from Invoice i 
  join InvoiceLine il
   on i.InvoiceId = il.InvoiceId
   group by BillingCountry 
   order by 1


 -- is and is not is specifically used for null expression 
 select *
 from Customer
 where state is not null 

 
 -- when you want only the first x number of rows, use TOP
 -- Limit and top are functionally the same 

 Select top 5 *
 from Invoice
 order by Total desc -- desc is for descending, asc is for ascending orders 