SELECT product_name,year,price
FROM product 
join sales on product.product_id = sales.product_id