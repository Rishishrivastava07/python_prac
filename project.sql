--Who is the senior most employee based on job title?

select * from employee 
order by levels desc
limit 1;

--Which country has the most invoices?

select count(*), billing_country
from invoice
group by billing_country
order by billing_country desc
limit 1;

--What are the top 3 values of invoice?

select total from invoice
order by total desc
limit 3;

/*Which city has the best customers? we would like to throw a promotional festival in the city
we made the most money, write a query that returns one city that has the highest sum of invoice
totals, Return both, the city name & sum of all invoice totals*/

select sum(total) as invoice_total , billing_city
from invoice
group by billing_city
order by invoice_total desc
limit 1;
 
/*Who is the best customer? the customer who has spend the most money will be declared the best 
 customer, write a query that returns the person who has spent themost money*/
 
 select customer.customer_id , customer.first_name, customer.last_name,
 sum(invoice.total) as total
 from customer
 join invoice on customer.customer_id = invoice.customer_id
 group by customer.customer_id
 order by total desc
 limit 1;


