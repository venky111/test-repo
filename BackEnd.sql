// 1. Customer:
// a. CustomerId (primary key, int, not null)
// b. Name (varchar(50))

// 2. Product:
// a. ProductId (primary key, int, not null)
// b. Name (varchar(100))
// c. Price (decimal(12, 2))

// 3. Order
// a. OrderId (primary key, int, not null)
// b. CustomerId (foreign key, int, not null)
// c. CreatedAt (datetime, not null)

// 4. OrderProduct
// a. OrderProductId (primary key, int, not null)
// b. OrderId (foreign key, int, not null)
// c. ProductId (foreign key, int, not null)


// all the customers whose name begins with "Joe"
select * from customer where name like 'Joe%'

// all the product names ordered by customer "Joe" after '11/1/2016'
select Name from product where productId in 
 (select productId from OrderProduct where orderId in
  (select orderId from order where customerId in 
    (select id from customer where name ='Joe') and CreatedAt > '11/1/2016'))


// the total amount spend by customer "Joe"
select sum(Price) from product where productId in 
  (select productId from OrderProduct where orderId in
   (select orderId from order where customerId in (select id from customer where name ='Joe')))


● all the customer names and count of their orders for orders containing more than one
product

select count(*) from OrderProduct where orderId in 
(select orderId from order where customerId in (select id from customer))


select name,count(*) from order o,customer c where c.customerId = o.customerId and
select count(*) from OrderProduct where or
group by customerId 
