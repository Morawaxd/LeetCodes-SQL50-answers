select product.product_name, year, price from Sales
left join Product on Product.product_id = sales.product_id
