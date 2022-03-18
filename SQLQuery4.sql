--
--Write a query that checks if any product id is repeated in more than one row in the product table. 

SELECT product_name, COUNT(product_name)
FROM product.product
GROUP BY product_name
HAVING COUNT(product_name) > 1 

select product_id, product_name, count(product_id) more_one
from product.product
group by product_id, product_name
having product_id > 1