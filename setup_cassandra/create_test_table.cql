-- Create category namespace
CREATE KEYSPACE category WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
CREATE KEYSPACE brand WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};


-- Create table
CREATE TABLE brand.prices_countings_brand ( start_time TIMESTAMP,   
 end_time TIMESTAMP,
 brand TEXT, 
 view_count INT, 
 cart_count INT, 
 remove_cart_count INT, 
 purchase_count INT, 
 view_revenue DOUBLE, 
 cart_revenue DOUBLE, 
 remove_cart_revenue DOUBLE, 
 purchase_revenue DOUBLE,
 average_price DOUBLE,  
 PRIMARY KEY (start_time, end_time, brand));

CREATE TABLE category.prices_countings_category ( start_time TIMESTAMP,   
 end_time TIMESTAMP,
 category text, 
 sub_category text,
 view_count INT, 
 cart_count INT, 
 remove_cart_count INT, 
 purchase_count INT, 
 view_revenue DOUBLE, 
 cart_revenue DOUBLE, 
 remove_cart_revenue DOUBLE, 
 purchase_revenue DOUBLE,
 average_price DOUBLE,  
 PRIMARY KEY (start_time, end_time, category, sub_category));



