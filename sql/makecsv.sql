SELECT order_id,product_name,qty
FROM orders
WHERE foo = 'bar'
INTO OUTFILE 'csv/zzzzzzzzz.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';