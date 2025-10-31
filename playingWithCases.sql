select * from products;

--adding column price_tag.
alter table products
add column price_tag text;

--updating the price tag.
update products
set price_tag =
case 
when price > 1000 then 'Expensive'
when price between 500 and 1000 then 'Moderte'
else 'cheap'
end;

--add column availability_status.
alter table products
add column availability_status text;

--creating an alias of availability.
select name,
case 
when is_available then 'In Stock'
else 'Out Of Stock'
end as availability_status
from products;

--manipulting the real table.
update products
set availability_status = 
case
when is_available then 'In Stock'
else 'Out Of Stock'
end;