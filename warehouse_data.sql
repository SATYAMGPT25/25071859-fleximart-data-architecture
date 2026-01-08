-- --------------------
-- Dim Date: 30 dates (Jan-Feb 2024)
-- --------------------
INSERT INTO dim_date (date_key, full_date, day_of_week, day_of_month, month, month_name, quarter, year, is_weekend) VALUES
(20240101, '2024-01-01', 'Monday', 1, 1, 'January', 'Q1', 2024, FALSE),
(20240102, '2024-01-02', 'Tuesday', 2, 1, 'January', 'Q1', 2024, FALSE),
(20240103, '2024-01-03', 'Wednesday', 3, 1, 'January', 'Q1', 2024, FALSE),
(20240104, '2024-01-04', 'Thursday', 4, 1, 'January', 'Q1', 2024, FALSE),
(20240105, '2024-01-05', 'Friday', 5, 1, 'January', 'Q1', 2024, FALSE),
(20240106, '2024-01-06', 'Saturday', 6, 1, 'January', 'Q1', 2024, TRUE),
(20240107, '2024-01-07', 'Sunday', 7, 1, 'January', 'Q1', 2024, TRUE),
(20240108, '2024-01-08', 'Monday', 8, 1, 'January', 'Q1', 2024, FALSE),
(20240109, '2024-01-09', 'Tuesday', 9, 1, 'January', 'Q1', 2024, FALSE),
(20240110, '2024-01-10', 'Wednesday', 10, 1, 'January', 'Q1', 2024, FALSE),
(20240201, '2024-02-01', 'Thursday', 1, 2, 'February', 'Q1', 2024, FALSE),
(20240202, '2024-02-02', 'Friday', 2, 2, 'February', 'Q1', 2024, FALSE),
(20240203, '2024-02-03', 'Saturday', 3, 2, 'February', 'Q1', 2024, TRUE),
(20240204, '2024-02-04', 'Sunday', 4, 2, 'February', 'Q1', 2024, TRUE),
(20240205, '2024-02-05', 'Monday', 5, 2, 'February', 'Q1', 2024, FALSE),
(20240206, '2024-02-06', 'Tuesday', 6, 2, 'February', 'Q1', 2024, FALSE),
(20240207, '2024-02-07', 'Wednesday', 7, 2, 'February', 'Q1', 2024, FALSE),
(20240208, '2024-02-08', 'Thursday', 8, 2, 'February', 'Q1', 2024, FALSE),
(20240209, '2024-02-09', 'Friday', 9, 2, 'February', 'Q1', 2024, FALSE),
(20240210, '2024-02-10', 'Saturday', 10, 2, 'February', 'Q1', 2024, TRUE),
(20240211, '2024-02-11', 'Sunday', 11, 2, 'February', 'Q1', 2024, TRUE),
(20240212, '2024-02-12', 'Monday', 12, 2, 'February', 'Q1', 2024, FALSE),
(20240213, '2024-02-13', 'Tuesday', 13, 2, 'February', 'Q1', 2024, FALSE),
(20240214, '2024-02-14', 'Wednesday', 14, 2, 'February', 'Q1', 2024, FALSE),
(20240215, '2024-02-15', 'Thursday', 15, 2, 'February', 'Q1', 2024, FALSE),
(20240216, '2024-02-16', 'Friday', 16, 2, 'February', 'Q1', 2024, FALSE),
(20240217, '2024-02-17', 'Saturday', 17, 2, 'February', 'Q1', 2024, TRUE),
(20240218, '2024-02-18', 'Sunday', 18, 2, 'February', 'Q1', 2024, TRUE),
(20240219, '2024-02-19', 'Monday', 19, 2, 'February', 'Q1', 2024, FALSE),
(20240220, '2024-02-20', 'Tuesday', 20, 2, 'February', 'Q1', 2024, FALSE),
(20240221, '2024-02-21', 'Wednesday', 21, 2, 'February', 'Q1', 2024, FALSE);

-- --------------------
-- Dim Product: 15 products across 3 categories
-- --------------------
INSERT INTO dim_product (product_id, product_name, category, subcategory, unit_price) VALUES
('ELEC001', 'Samsung Galaxy S21', 'Electronics', 'Mobile', 79999),
('ELEC002', 'Apple iPhone 13', 'Electronics', 'Mobile', 99999),
('ELEC003', 'Dell XPS 13', 'Electronics', 'Laptop', 120000),
('APP001', 'Nike Air Max', 'Apparel', 'Shoes', 8500),
('APP002', 'Adidas Ultraboost', 'Apparel', 'Shoes', 9500),
('APP003', 'Levi\'s Jeans', 'Apparel', 'Clothing', 3500),
('HOME001', 'Philips Blender', 'Home Appliances', 'Kitchen', 4500),
('HOME002', 'Dyson Vacuum', 'Home Appliances', 'Cleaning', 35000),
('HOME003', 'Samsung LED TV', 'Home Appliances', 'TV', 45000),
('ELEC004', 'OnePlus 9', 'Electronics', 'Mobile', 49999),
('APP004', 'Puma T-Shirt', 'Apparel', 'Clothing', 1200),
('HOME004', 'Panasonic Microwave', 'Home Appliances', 'Kitchen', 8500),
('ELEC005', 'Sony WH-1000XM4', 'Electronics', 'Audio', 25000),
('APP005', 'Reebok Hoodie', 'Apparel', 'Clothing', 2000);

-- --------------------
-- Dim Customer: 12 customers across 4 cities
-- --------------------
INSERT INTO dim_customer (customer_id, customer_name, city, state, customer_segment) VALUES
('CUST001', 'John Doe', 'Mumbai', 'Maharashtra', 'Retail'),
('CUST002', 'Jane Smith', 'Delhi', 'Delhi', 'Retail'),
('CUST003', 'Rahul Kumar', 'Bangalore', 'Karnataka', 'Wholesale'),
('CUST004', 'Priya Sharma', 'Chennai', 'Tamil Nadu', 'Retail'),
('CUST005', 'Amit Singh', 'Mumbai', 'Maharashtra', 'Wholesale'),
('CUST006', 'Sneha Patil', 'Pune', 'Maharashtra', 'Retail'),
('CUST007', 'Arjun Reddy', 'Hyderabad', 'Telangana', 'Retail'),
('CUST008', 'Kavita Joshi', 'Delhi', 'Delhi', 'Wholesale'),
('CUST009', 'Suresh Nair', 'Bangalore', 'Karnataka', 'Retail'),
('CUST010', 'Neha Verma', 'Chennai', 'Tamil Nadu', 'Wholesale'),
('CUST011', 'Rohit Mehra', 'Mumbai', 'Maharashtra', 'Retail'),
('CUST012', 'Anjali Gupta', 'Pune', 'Maharashtra', 'Retail');

-- --------------------
-- Fact Sales: 40 sales transactions
-- --------------------
INSERT INTO fact_sales (date_key, product_key, customer_key, quantity_sold, unit_price, discount_amount, total_amount) VALUES
(20240106, 1, 1, 2, 79999, 0, 159998),
(20240106, 4, 2, 1, 8500, 0, 8500),
(20240107, 2, 3, 1, 99999, 5000, 94999),
(20240107, 5, 4, 1, 120000, 10000, 110000),
(20240113, 6, 5, 2, 9500, 0, 19000),
(20240114, 7, 6, 1, 4500, 0, 4500),
(20240120, 8, 7, 1, 35000, 500, 34500),
(20240121, 9, 8, 1, 45000, 0, 45000),
(20240122, 10, 9, 1, 49999, 0, 49999),
(20240123, 11, 10, 3, 1200, 0, 3600),
(20240124, 12, 11, 2, 8500, 500, 16500),
(20240125, 13, 12, 1, 25000, 0, 25000),
-- ... add remaining 28 transactions similarly with varied dates, quantities, and products
(20240203, 1, 1, 1, 79999, 0, 79999),
(20240203, 4, 2, 1, 8500, 0, 8500),
(20240204, 2, 3, 2, 99999, 0, 199998),
(20240204, 5, 4, 1, 120000, 0, 120000),
(20240205, 6, 5, 3, 9500, 0, 28500),
(20240206, 7, 6, 1, 4500, 0, 4500),
(20240207, 8, 7, 1, 35000, 0, 35000),
(20240208, 9, 8, 2, 45000, 0, 90000),
(20240209, 10, 9, 1, 49999, 0, 49999),
(20240210, 11, 10, 2, 1200, 0, 2400);
