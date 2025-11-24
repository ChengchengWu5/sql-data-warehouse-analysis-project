-- Create tables

IF OBJECT_ID ('bronze.source1_customers', 'U') IS NOT NULL
	DROP TABLE bronze.source1_customers;
CREATE TABLE bronze.source1_customers (
customer_id INT,
first_name NVARCHAR(50),
last_name NVARCHAR(50),
address NVARCHAR(200),
email NVARCHAR(200),
phone_number NVARCHAR(50)
);

IF OBJECT_ID ('bronze.source1_order_details', 'U') IS NOT NULL
	DROP TABLE bronze.source1_order_details;
CREATE TABLE bronze.source1_order_details (
order_id INT,
order_date DATE,
customer_id INT,
total_price INT,
product_id INT,
quantity INT,
price_at_purchase DECIMAL(18,2)
);

IF OBJECT_ID ('bronze.source1_products', 'U') IS NOT NULL
	DROP TABLE bronze.source1_products;
CREATE TABLE bronze.source1_products (
product_id INT,
product_name NVARCHAR(50),
category NVARCHAR(50),
price DECIMAL(18,2),
supplier_id INT
);

IF OBJECT_ID ('bronze.source2_payment', 'U') IS NOT NULL
	DROP TABLE bronze.source2_payment;
CREATE TABLE bronze.source2_payment (
payment_id INT,
order_id INT,
payment_method NVARCHAR(50),
amount DECIMAL(18,2),
transaction_status NVARCHAR(50)
);

IF OBJECT_ID ('bronze.source2_review', 'U') IS NOT NULL
	DROP TABLE bronze.source2_review;
CREATE TABLE bronze.source2_review (
review_id INT,
product_id INT,
customer_id INT,
rating INT,
review_text NVARCHAR(200),
review_date DATE
);

IF OBJECT_ID ('bronze.source2_shipments', 'U') IS NOT NULL
	DROP TABLE bronze.source2_shipments;
CREATE TABLE bronze.source2_shipments (
shipment_id INT,
order_id INT,
shipment_date DATE,
carrier NVARCHAR(50),
tracking_number NVARCHAR(50),
delivery_date DATE,
shipment_status NVARCHAR(50)
);

IF OBJECT_ID ('bronze.source2_suppliers', 'U') IS NOT NULL
	DROP TABLE bronze.source2_suppliers;
CREATE TABLE bronze.source2_suppliers (
supplier_id INT,
supplier_name NVARCHAR(100),
contact_name NVARCHAR(50),
address NVARCHAR(100),
phone_number NVARCHAR(50),
email NVARCHAR(100)
);
