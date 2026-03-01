USE ecommerce;
SELECT * FROM sales_data
LIMIT 10;
SELECT *
FROM sales_data
WHERE Category = 'Electronics';
SELECT *
FROM sales_data
ORDER BY `Total Price` DESC;
SELECT Category,
       SUM(`Total Price`) AS total_sales
FROM sales_data
GROUP BY Category;
SELECT *
FROM sales_data
WHERE `Total Price` >= (
    SELECT AVG(`Total Price`)
    FROM sales_data
);
CREATE INDEX idx_category
ON sales_data(Category(50));
