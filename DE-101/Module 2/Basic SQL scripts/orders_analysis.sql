select sum(sales) from orders

--- Total sales

select sum(profit) from orders 

--- Total profit

select round(sum(profit)/sum(sales)*100,2) as Profit_Raio from orders

--- Profit Ratio

select round(sum(profit)/count(distinct order_id),2) as Profit_per_order from orders 

--- Profit per Order 

select round(sum(sales)/count(distinct customer_id),2) as Sales_per_customer from orders 

--- Sales per Customer

select round(avg(discount),2) from orders

--- Average discount 

select segment, extract(month from order_date) as month,  sum(sales) from orders 
group by 1,2 order by 2

--- Monthly Sales by Segment

select category, extract(month from order_date) as month,  sum(sales) from orders 
group by 1,2 order by 2

--- Monthly Sale by Category

select category, sum(sales) from orders group by 1 order by 2

--- Sales by Product Category over time

select distinct customer_name, sum(profit), sum(sales) from orders group by 1

--- Sales and Profit by Customer

select region, sum(sales) from orders group by 1