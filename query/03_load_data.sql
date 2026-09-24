COPY customers
FROM 'D:/Others/Data Analytics/e-commerce_analytics/data/Brazilian E-Commerce Public Dataset by Olist/olist_customers_dataset.csv'
WITH (FORMAT csv, HEADER true);

COPY geolocation
FROM 'D:/Others/Data Analytics/e-commerce_analytics/data/Brazilian E-Commerce Public Dataset by Olist/olist_geolocation_dataset.csv'
WITH (FORMAT csv, HEADER true);

COPY order_items
FROM 'D:/Others/Data Analytics/e-commerce_analytics/data/Brazilian E-Commerce Public Dataset by Olist/olist_order_items_dataset.csv'
WITH (FORMAT csv, HEADER true);

COPY order_payments
FROM 'D:/Others/Data Analytics/e-commerce_analytics/data/Brazilian E-Commerce Public Dataset by Olist/olist_order_payments_dataset.csv'
WITH (FORMAT csv, HEADER true);

COPY order_reviews
FROM 'D:/Others/Data Analytics/e-commerce_analytics/data/Brazilian E-Commerce Public Dataset by Olist/olist_order_reviews_dataset.csv'
WITH (FORMAT csv, HEADER true);

COPY orders
FROM 'D:/Others/Data Analytics/e-commerce_analytics/data/Brazilian E-Commerce Public Dataset by Olist/olist_orders_dataset.csv'
WITH (FORMAT csv, HEADER true);

COPY products
FROM 'D:/Others/Data Analytics/e-commerce_analytics/data/Brazilian E-Commerce Public Dataset by Olist/olist_products_dataset.csv'
WITH (FORMAT csv, HEADER true);

COPY sellers
FROM 'D:/Others/Data Analytics/e-commerce_analytics/data/Brazilian E-Commerce Public Dataset by Olist/olist_sellers_dataset.csv'
WITH (FORMAT csv, HEADER true);

COPY product_category_name_translation
FROM 'D:/Others/Data Analytics/e-commerce_analytics/data/Brazilian E-Commerce Public Dataset by Olist/product_category_name_translation.csv'
WITH (FORMAT csv, HEADER true);