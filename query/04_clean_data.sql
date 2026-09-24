-- Check for null values
SELECT
    SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS null_cust_id,
    SUM(CASE WHEN customer_unique_id IS NULL THEN 1 ELSE 0 END) AS null_cust_unique_id,
    SUM(CASE WHEN customer_zip_code_prefix IS NULL THEN 1 ELSE 0 END) AS null_cust_zip_code,
    SUM(CASE WHEN customer_city IS NULL THEN 1 ELSE 0 END) AS null_cust_city,
    SUM(CASE WHEN customer_state IS NULL THEN 1 ELSE 0 END) AS null_cust_state
FROM customers;     -- no null values

SELECT
    SUM(CASE WHEN geolocation_zip_code_prefix IS NULL THEN 1 ELSE 0 END) AS null_geo_zip_code,
    SUM(CASE WHEN geolocation_lat IS NULL THEN 1 ELSE 0 END) AS null_geo_lat,
    SUM(CASE WHEN geolocation_lng IS NULL THEN 1 ELSE 0 END) AS null_geo_lng,
    SUM(CASE WHEN geolocation_city IS NULL THEN 1 ELSE 0 END) AS null_geo_city,
    SUM(CASE WHEN geolocation_state IS NULL THEN 1 ELSE 0 END) AS null_geo_state
FROM geolocation;       -- no null values

SELECT
    SUM(CASE WHEN order_id IS NULL THEN 1 ELSE 0 END) AS null_order_id,
    SUM(CASE WHEN order_item_id IS NULL THEN 1 ELSE 0 END) AS null_order_item_id,
    SUM(CASE WHEN product_id IS NULL THEN 1 ELSE 0 END) AS null_product_id,
    SUM(CASE WHEN seller_id IS NULL THEN 1 ELSE 0 END) AS null_seller_id,
    SUM(CASE WHEN shipping_limit_date IS NULL THEN 1 ELSE 0 END) AS null_shipping_limit_date,
    SUM(CASE WHEN price IS NULL THEN 1 ELSE 0 END) AS null_price,
    SUM(CASE WHEN freight_value IS NULL THEN 1 ELSE 0 END) AS null_freight_value
FROM order_items;       -- no null values

SELECT
    SUM(CASE WHEN order_id IS NULL THEN 1 ELSE 0 END) AS null_order_id,
    SUM(CASE WHEN payment_sequential IS NULL THEN 1 ELSE 0 END) AS null_payment_sequential,
    SUM(CASE WHEN payment_type IS NULL THEN 1 ELSE 0 END) AS null_payment_type,
    SUM(CASE WHEN payment_installments IS NULL THEN 1 ELSE 0 END) AS null_payment_installments,
    SUM(CASE WHEN payment_value IS NULL THEN 1 ELSE 0 END) AS null_payment_value
FROM order_payments;       -- no null values

SELECT
    SUM(CASE WHEN review_id IS NULL THEN 1 ELSE 0 END) AS null_review_id,
    SUM(CASE WHEN order_id IS NULL THEN 1 ELSE 0 END) AS null_order_id,
    SUM(CASE WHEN review_score IS NULL THEN 1 ELSE 0 END) AS null_review_score,
    SUM(CASE WHEN review_comment_title IS NULL THEN 1 ELSE 0 END) AS null_review_comment_title,
    SUM(CASE WHEN review_comment_message IS NULL THEN 1 ELSE 0 END) AS null_review_comment_message,
    SUM(CASE WHEN review_creation_date IS NULL THEN 1 ELSE 0 END) AS null_review_creation_date,
    SUM(CASE WHEN review_answer_timestamp IS NULL THEN 1 ELSE 0 END) AS null_review_answer_timestamp
FROM order_reviews;       -- 0 0 0 87,656 58,247 0

SELECT
    SUM(CASE WHEN order_id IS NULL THEN 1 ELSE 0 END) AS null_order_id,
    SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS null_customer_id,
    SUM(CASE WHEN order_status IS NULL THEN 1 ELSE 0 END) AS null_order_status,
    SUM(CASE WHEN order_purchase_timestamp IS NULL THEN 1 ELSE 0 END) AS null_order_purchase_timestamp,
    SUM(CASE WHEN order_approved_at IS NULL THEN 1 ELSE 0 END) AS null_order_approved_at,
    SUM(CASE WHEN order_delivered_carrier_date IS NULL THEN 1 ELSE 0 END) AS null_order_delivered_carrier_date,
    SUM(CASE WHEN order_delivered_customer_date IS NULL THEN 1 ELSE 0 END) AS null_order_delivered_customer_date,
    SUM(CASE WHEN order_estimated_delivery_date IS NULL THEN 1 ELSE 0 END) AS null_order_estimated_delivery_date
FROM orders;       -- 0 0 0 0 160 1,783 2,965 0

SELECT
    SUM(CASE WHEN product_category_name IS NULL THEN 1 ELSE 0 END) AS null_category_name,
    SUM(CASE WHEN product_category_name_english IS NULL THEN 1 ELSE 0 END) AS null_category_name_eng
FROM product_category_name_translation;     -- no null values

SELECT
    SUM(CASE WHEN product_id IS NULL THEN 1 ELSE 0 END) AS null_product_id,
    SUM(CASE WHEN product_category_name IS NULL THEN 1 ELSE 0 END) AS null_product_category_name,
    SUM(CASE WHEN product_name_lenght IS NULL THEN 1 ELSE 0 END) AS null_product_name_lenght,
    SUM(CASE WHEN product_description_lenght IS NULL THEN 1 ELSE 0 END) AS null_product_description_lenght,
    SUM(CASE WHEN product_photos_qty IS NULL THEN 1 ELSE 0 END) AS null_product_photos_qty,
    SUM(CASE WHEN product_weight_g IS NULL THEN 1 ELSE 0 END) AS null_product_weight_g,
    SUM(CASE WHEN product_length_cm IS NULL THEN 1 ELSE 0 END) AS null_product_length_cm,
    SUM(CASE WHEN product_height_cm IS NULL THEN 1 ELSE 0 END) AS null_product_height_cm,
    SUM(CASE WHEN product_width_cm IS NULL THEN 1 ELSE 0 END) AS null_product_width_cm
FROM products;       -- 0 610 610 610 610 2 2 2 2
SELECT COUNT(*) FROM products 
WHERE 
    product_category_name IS NULL AND
    product_name_lenght IS NULL AND
    product_description_lenght IS NULL AND
    product_photos_qty IS NULL;     -- 610, the null values come from the same ids
UPDATE products
SET product_category_name = 'unspecified'
WHERE product_category_name IS NULL;
SELECT COUNT(*) FROM products 
WHERE 
    product_weight_g IS NULL AND
    product_length_cm IS NULL AND
    product_height_cm IS NULL AND
    product_width_cm IS NULL;     -- 2, the null values come from the same ids

SELECT
    SUM(CASE WHEN seller_id IS NULL THEN 1 ELSE 0 END) AS null_seller_id,
    SUM(CASE WHEN seller_zip_code_prefix IS NULL THEN 1 ELSE 0 END) AS null_seller_zip_code_prefix,
    SUM(CASE WHEN seller_city IS NULL THEN 1 ELSE 0 END) AS null_seller_city,
    SUM(CASE WHEN seller_state IS NULL THEN 1 ELSE 0 END) AS null_seller_state
FROM sellers;     -- no null values

-- Check empty strings and whitespace-only strings
SELECT 'customers' AS table_name, 'customer_id' AS column_name, COUNT(*) AS blank_rows
FROM customers
WHERE TRIM(customer_id) = ''

UNION ALL
SELECT 'customers', 'customer_unique_id', COUNT(*)
FROM customers
WHERE TRIM(customer_unique_id) = ''

UNION ALL
SELECT 'customers', 'customer_city', COUNT(*)
FROM customers
WHERE TRIM(customer_city) = ''

UNION ALL
SELECT 'customers', 'customer_state', COUNT(*)
FROM customers
WHERE TRIM(customer_state) = ''

UNION ALL
SELECT 'geolocation', 'geolocation_city', COUNT(*)
FROM geolocation
WHERE TRIM(geolocation_city) = ''

UNION ALL
SELECT 'geolocation', 'geolocation_state', COUNT(*)
FROM geolocation
WHERE TRIM(geolocation_state) = ''

UNION ALL
SELECT 'order_items', 'product_id', COUNT(*)
FROM order_items
WHERE TRIM(product_id) = ''

UNION ALL
SELECT 'order_items', 'seller_id', COUNT(*)
FROM order_items
WHERE TRIM(seller_id) = ''

UNION ALL
SELECT 'order_payments', 'payment_type', COUNT(*)
FROM order_payments
WHERE TRIM(payment_type) = ''

UNION ALL
SELECT 'order_reviews', 'review_id', COUNT(*)
FROM order_reviews
WHERE TRIM(review_id) = ''

UNION ALL
SELECT 'order_reviews', 'order_id', COUNT(*)
FROM order_reviews
WHERE TRIM(order_id) = ''

UNION ALL
SELECT 'order_reviews', 'review_comment_title', COUNT(*)
FROM order_reviews
WHERE TRIM(review_comment_title) = ''

UNION ALL
SELECT 'order_reviews', 'review_comment_message', COUNT(*)
FROM order_reviews
WHERE TRIM(review_comment_message) = ''

UNION ALL
SELECT 'orders', 'order_id', COUNT(*)
FROM orders
WHERE TRIM(order_id) = ''

UNION ALL
SELECT 'orders', 'customer_id', COUNT(*)
FROM orders
WHERE TRIM(customer_id) = ''

UNION ALL
SELECT 'orders', 'order_status', COUNT(*)
FROM orders
WHERE TRIM(order_status) = ''

UNION ALL
SELECT 'products', 'product_id', COUNT(*)
FROM products
WHERE TRIM(product_id) = ''

UNION ALL
SELECT 'products', 'product_category_name', COUNT(*)
FROM products
WHERE TRIM(product_category_name) = ''

UNION ALL
SELECT 'sellers', 'seller_id', COUNT(*)
FROM sellers
WHERE TRIM(seller_id) = ''

UNION ALL
SELECT 'sellers', 'seller_city', COUNT(*)
FROM sellers
WHERE TRIM(seller_city) = ''

UNION ALL
SELECT 'sellers', 'seller_state', COUNT(*)
FROM sellers
WHERE TRIM(seller_state) = ''

UNION ALL
SELECT 'product_category_name_translation', 'product_category_name', COUNT(*)
FROM product_category_name_translation
WHERE TRIM(product_category_name) = ''

UNION ALL
SELECT 'product_category_name_translation', 'product_category_name_english', COUNT(*)
FROM product_category_name_translation
WHERE TRIM(product_category_name_english) = ''

ORDER BY table_name, column_name;

-- Show empty strings and whitespace-only strings in detected columns
SELECT review_comment_message FROM order_reviews WHERE TRIM(review_comment_message) = '';
SELECT review_comment_title FROM order_reviews WHERE TRIM(review_comment_title) = '';

-- Show some example of NULL
SELECT review_comment_title FROM order_reviews WHERE review_comment_title IS NULL LIMIT 5;

-- Change empty strings and whitespace-only strings in detected columns into NULL
UPDATE order_reviews
SET review_comment_title = NULL
WHERE TRIM(review_comment_title) = '';
UPDATE order_reviews
SET review_comment_message = NULL
WHERE TRIM(review_comment_message) = '';

-- Check and Fix data inconsistensies
-- Data inconsistencies in customers table
SELECT DISTINCT(customer_city) AS distinct_city, COUNT(*) FROM customers GROUP BY distinct_city ORDER BY distinct_city;
CREATE EXTENSION IF NOT EXISTS unaccent;
SELECT
    unaccent(LOWER(customer_city)) AS normalized_city,
    COUNT(DISTINCT customer_city) AS original_variations,
    STRING_AGG(DISTINCT customer_city, ', ' ORDER BY customer_city) AS variations
FROM customers
GROUP BY normalized_city
HAVING COUNT(DISTINCT customer_city) > 1
ORDER BY normalized_city;                   -- Variations of writing cities: not found
SELECT DISTINCT(customer_state) FROM customers;
SELECT
    customer_city,
    COUNT(DISTINCT customer_state) AS state_count,
    STRING_AGG(DISTINCT customer_state, ', ' ORDER BY customer_state) AS states
FROM customers
GROUP BY customer_city
HAVING COUNT(DISTINCT customer_state) > 1
ORDER BY customer_city;                     -- Relations between cities and states
-- Data inconsistencies in geolocation table
SELECT
    unaccent(LOWER(geolocation_city)) AS normalized_city,
    COUNT(DISTINCT geolocation_city) AS original_variations,
    STRING_AGG(DISTINCT geolocation_city, ', ' ORDER BY geolocation_city) AS variations
FROM geolocation
GROUP BY normalized_city
HAVING COUNT(DISTINCT geolocation_city) > 1
ORDER BY normalized_city;                   -- Variations of writing cities: writing inconsistencies found
SELECT DISTINCT(geolocation_state) FROM geolocation;
CREATE TABLE geolocation_clean AS
SELECT
    geolocation_zip_code_prefix,
    geolocation_lat,
    geolocation_lng,
    LOWER(TRIM(unaccent(geolocation_city))) AS geolocation_city,
    geolocation_state
FROM geolocation;                           -- Standardize geolocation cities
SELECT DISTINCT(geolocation_city) FROM geolocation_clean ORDER BY geolocation_city; -- Check distinct values
UPDATE geolocation_clean
SET geolocation_city = 'quarto centenario'
WHERE geolocation_city IN ('4o centenario', '4o. centenario');
UPDATE geolocation_clean
SET geolocation_city = 'arraial do cabo'
WHERE geolocation_city = '...arraial do cabo';
UPDATE geolocation_clean
SET geolocation_city = 'teresopolis'
WHERE geolocation_city = '´teresopolis'; 
UPDATE geolocation_clean
SET geolocation_city = 'cidade gaucha'
WHERE geolocation_city = '* cidade' AND geolocation_state = 'PR'; 
-- Data inconsistencies in order_items table
SELECT COUNT(*) AS negative_prices FROM order_items WHERE price < 0;    -- Negative prices: not found
SELECT COUNT(*) AS negative_values FROM order_items WHERE freight_value < 0;    -- Negative freight values: not found
-- Data inconsistencies in order_payments table
SELECT DISTINCT(payment_type) FROM order_payments;
SELECT COUNT(*) AS invalid_installments
FROM order_payments
WHERE payment_installments <= 0;        -- Invalid installments: 2
SELECT * FROM order_payments WHERE payment_installments <= 0;
-- Data inconsistencies in order_reviews table
SELECT DISTINCT(review_score) FROM order_reviews;   -- 1 to 5
-- Data inconsistencies in orders table
SELECT DISTINCT(order_status) FROM orders;   -- Check order status
-- Data inconsistencies in products table
SELECT DISTINCT(product_category_name) FROM products ORDER BY product_category_name;   -- Check product category names: 74 categories
SELECT COUNT(*) AS negative_values FROM products WHERE product_weight_g < 0;    -- Negative values: not found
SELECT COUNT(*) AS negative_values FROM products WHERE product_length_cm < 0;    -- Negative values: not found 
SELECT COUNT(*) AS negative_values FROM products WHERE product_height_cm < 0;    -- Negative values: not found 
SELECT COUNT(*) AS negative_values FROM products WHERE product_width_cm < 0;    -- Negative values: not found 
-- Data inconsistencies in sellers table
SELECT
    unaccent(LOWER(seller_city)) AS normalized_city,
    COUNT(DISTINCT seller_city) AS original_variations,
    STRING_AGG(DISTINCT seller_city, ', ' ORDER BY seller_city) AS variations
FROM sellers
GROUP BY normalized_city
HAVING COUNT(DISTINCT seller_city) > 1
ORDER BY normalized_city;                   -- Variations of writing cities: writing inconsistencies found
SELECT DISTINCT(seller_state) FROM sellers;
SELECT DISTINCT(seller_city) FROM sellers ORDER BY seller_city;
CREATE TABLE sellers_clean AS
SELECT
    seller_id,
    seller_zip_code_prefix,
    LOWER(TRIM(unaccent(seller_city))) AS seller_city,
    seller_state
FROM sellers;                           -- Standardize seller cities
DELETE FROM sellers_clean
WHERE seller_city = '04482255';

-- Check duplicates
-- Duplicated zip code prefix
SELECT * FROM geolocation_clean
WHERE geolocation_zip_code_prefix IN (
    SELECT geolocation_zip_code_prefix FROM geolocation_clean
    GROUP BY geolocation_zip_code_prefix
    HAVING COUNT(*) > 1
)
ORDER BY geolocation_zip_code_prefix ASC;   -- Duplicated zip code prefix is normal
-- Duplicated rows
SELECT
    geolocation_zip_code_prefix,
    geolocation_lat,
    geolocation_lng,
    geolocation_city,
    geolocation_state,
    COUNT(*) AS duplicate_count
FROM geolocation_clean
GROUP BY
    geolocation_zip_code_prefix,
    geolocation_lat,
    geolocation_lng,
    geolocation_city,
    geolocation_state
HAVING COUNT(*) > 1
ORDER BY geolocation_zip_code_prefix ASC;

-- Remove duplicated rows and keep the first one
CREATE TABLE geolocation_clean_noduplicate AS
SELECT DISTINCT
    geolocation_zip_code_prefix,
    geolocation_lat,
    geolocation_lng,
    geolocation_city,
    geolocation_state
FROM geolocation_clean
ORDER BY geolocation_zip_code_prefix ASC;

SELECT DISTINCT
    geolocation_zip_code_prefix,
    geolocation_lat,
    geolocation_lng,
    geolocation_city,
    geolocation_state
FROM geolocation_clean
ORDER BY geolocation_zip_code_prefix ASC;

-- Check referential integrity
SELECT COUNT(*) AS invalid_order_ids
FROM order_items oi
LEFT JOIN orders o
    ON oi.order_id = o.order_id
WHERE o.order_id IS NULL;
SELECT COUNT(*) AS invalid_product_ids
FROM order_items oi
LEFT JOIN products p
    ON oi.product_id = p.product_id
WHERE p.product_id IS NULL;
SELECT COUNT(*) AS invalid_seller_ids
FROM order_items oi
LEFT JOIN sellers s
    ON oi.seller_id = s.seller_id
WHERE s.seller_id IS NULL;
SELECT COUNT(*) AS invalid_order_ids
FROM order_payments op 
LEFT JOIN orders o 
    ON op.order_id = o.order_id 
WHERE o.order_id IS NULL;
SELECT COUNT(*) AS invalid_order_ids
FROM order_reviews ore 
LEFT JOIN orders o 
    ON ore.order_id = o.order_id 
WHERE o.order_id IS NULL;
SELECT COUNT(*) AS invalid_customer_ids
FROM orders o 
LEFT JOIN customers cu
    ON o.customer_id = cu.customer_id 
WHERE cu.customer_id IS NULL;
SELECT COUNT(*) AS num_zip_code
FROM sellers s 
LEFT JOIN geolocation geo
    ON s.seller_zip_code_prefix = geo.geolocation_zip_code_prefix
WHERE geo.geolocation_zip_code_prefix IS NULL;  -- sellers table has 7 zip codes that are not in geolocation table 

-- Check translation look up table
SELECT COUNT(DISTINCT(pr.product_category_name)) AS num_match
FROM products pr 
JOIN product_category_name_translation pcnt
    ON pr.product_category_name = pcnt.product_category_name;   -- 71 match
SELECT DISTINCT(pr.product_category_name), tr.product_category_name_english
FROM products pr LEFT JOIN product_category_name_translation tr 
ON pr.product_category_name = tr.product_category_name
WHERE tr.product_category_name_english IS NULL;
INSERT INTO product_category_name_translation
    (product_category_name, product_category_name_english)
VALUES
    ('pc_gamer', 'gaming_pc'),
    ('unspecified', 'unspecified'),
    ('portateis_cozinha_e_preparadores_de_alimentos',
     'portable_kitchen_food_preparers');
