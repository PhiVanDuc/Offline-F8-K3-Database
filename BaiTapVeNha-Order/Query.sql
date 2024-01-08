SELECT *
FROM customers

SELECT *
FROM products

SELECT customer_order.name, customer_order.email, customer_order.phone, orders.quantity, orders.total, orders.created_at
FROM orders
LEFT JOIN customer_order ON orders.customer_order_id = customer_order.id

SELECT customer_order.name, customer_order.email, customer_order.phone, order_details.product_name, order_details.product_id, order_details.product_price, order_details.quantity, order_details.sub_total, orders.status, orders.created_at, orders.updated_at
FROM order_details
LEFT JOIN orders ON order_details.order_id = orders.id
LEFT JOIN customer_order ON orders.customer_order_id = customer_order.id