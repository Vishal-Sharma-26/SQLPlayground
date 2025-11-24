-- Q-1) List customers who never placed an order.
select c.customer_id, c.name from Customers c
left join Orders o on o.customer_id = c.customer_id
where o.customer_id is null


-- Q-2) Find the top 5 cities with the most customers.
select top 5 c.name, c.city, sum(c.customer_id) as total_customers from Customers c
group by c.name, c.city
order by total_customers desc


-- Q-3) Count customers who joined each month.
select datename(month, join_date) as month_name, count(customer_id) as employee_joined from Customers
group by datename(month, join_date)
order by employee_joined desc


-- Q-4) Count total orders by month.
select datename(month, order_date) as months, count(order_id) as total_orders from Orders
group by datename(month, order_date)
order by total_orders desc


-- Q-5) Find the average order amount.
select avg(total_amount) as average_order_amount from Orders


-- Q-6) List canceled orders along with customer details.
select c.*, o.status from Customers c
left join Orders o on o.customer_id = c.customer_id
where o.status = 'cancelled'


-- Q-7) Find repeat customers.
select c.customer_id, c.name, count(o.order_id) as total_orders from Orders o
join Customers c on o.customer_id = c.customer_id
group by c.customer_id, c.name
having count(o.order_id) > 1
order by total_orders


-- Q-8) Find orders delivered later than 5 days.
select * from Orders
where status = 'Pending' and datediff(day, order_date, getdate()) > 5


-- Q-9) Count deliveries handled by each partner.
select delivery_partner, count(*) as total_deliveries from Delivery
group by delivery_partner


-- Q-10) Rank cities by total number of orders delivered.
select c.city,
    count(o.order_id) AS total_delivered_orders,
    rank() over (order by count(o.order_id) desc) as city_rank
FROM Customers c
join Orders o on o.customer_id = c.customer_id
where status = 'Delivered'
group by c.city
order by total_delivered_orders desc


-- Q-11) Identify cities with the slowest delivery.
select d.delivery_city, datediff(day, d.delivered_date, o.order_date) as delivery_days from Orders o
join Delivery d on d.order_id = o.order_id
group by d.delivery_city, datediff(day, d.delivered_date, o.order_date)
order by delivery_days desc


-- Q-12) Find orders with shipped_date missing.
select o.*, d.shipped_date from Orders o
join Delivery d on d.order_id = o.order_id
where d.shipped_date is null


-- Q-13) Top selling products by revenue.
select p.product_id, p.product_name, sum(oi.quantity * oi.line_total) as revenue from Products p
join Order_items oi on oi.product_id = p.product_id
group by p.product_id, p.product_name
order by revenue desc


-- Q-14) Count how many times each category was ordered.
select p.category, count(oi.order_id) as total_orders from Products p
join Order_items oi on oi.product_id = p.product_id
group by p.category
order by total_orders desc


-- Q-15) Find products that were never purchased.
select p.product_id, p.product_name from Products p
left join Order_items oi on p.product_id = oi.product_id
where oi.product_id is null



-- Q-16) Find total revenue for each product category.
select p.category, sum(oi.quantity * oi.line_total) as total_revenue from Products p
join Order_items oi on oi.product_id = p.product_id
group by p.category
order by total_revenue desc


-- Q-17) Find total delivery time for each order.
select o.order_id, datediff(hour, o.order_date, d.delivered_date) as total_delivery_time_hours from Orders o
join Delivery d on d.order_id = o.order_id
group by o.order_id, datediff(hour, o.order_date, d.delivered_date)
order by total_delivery_time_hours desc


-- Q-18) Find customers who placed orders but never received delivery.
select distinct c.customer_id, c.name from Customers c
join Orders o on o.customer_id = c.customer_id
left join Delivery d on d.order_id = o.order_id
where d.delivered_date is null


-- Q-19) Find the partner with the fastest delivery on average.
select d.delivery_partner, avg(datediff(day, o.order_date, d.delivered_date)) as delivery_days from Delivery d
join Orders o on o.order_id = d.order_id
group by d.delivery_partner
order by delivery_days


-- Q-20) Count how many orders were shipped by partner.
select d.delivery_partner, count(o.order_id) as shipped_orders from Delivery d
join Orders o on o.order_id = d.order_id
where o.status = 'Shipped'
group by d.delivery_partner
order by shipped_orders desc


-- Q-21) Find customer lifetime value.
select customer_id, count(order_id) as total_orders, sum(total_amount) as lifetime_value, avg(total_amount) as avg_order_value
from Orders
group by customer_id
order by lifetime_value desc


-- Q-22) Find most profitable city.
select top 1 c.city, sum(o.total_amount) as total_amount from Customers c
left join Orders o on o.customer_id = c.customer_id
group by c.city
order by total_amount desc


-- Q-23) Find delivery time trends by month.
select datename(month, o.order_date) as month, avg(datediff(hour, o.order_date, d.delivered_date)) as delivery_time_by_hours from Delivery d
join Orders o on o.order_id = d.order_id
group by datename(month, o.order_date)
order by delivery_time_by_hours desc


-- Q-24) Compare canceled vs processing rates.
SELECT
    SUM(CASE WHEN status = 'Cancelled' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS cancelled_rate,
    SUM(CASE WHEN status = 'Processing' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS processing_rate
FROM Orders


-- Q-25) Show top products by city.
select c.city, p.product_id, p.product_name, sum(oi.quantity) as total_quantity_sold from Orders o
join Customers c on o.customer_id = c.customer_id
join Order_items oi on o.order_id = oi.order_id
join Products p on oi.product_id = p.product_id
group by c.city, p.product_id, p.product_name
order by total_quantity_sold desc