CREATE TABLE cofee_inventory(sku NUMERIC,
name VARCHAR(20),
roast_type (50) CHECK (roast_type IN ('light','medium','dark'))NOT NULL, 
phone_number VARCHAR(20),
lbs_on_hand NUMERIC (10,2)NOT NULL,
organic BOOLEAN NOT NULL DEFAULT FALSE,
price_per_lb NUMERIC);
;
CREATE TABLE sales_transaction(receipt_id NUMERIC PRIMARY KEY,
 sales_amount NUMERIC(10,2),
 sales_type VARCHAR(20) CHECK (sales_type IN ('online','in-store'))NOT NULL, 
 transaction_date DATE NOT NULL DEFAULT CURRENT_DATE);
 
  CREATE TABLE stores(store_id NUMERIC PRIMARY KEY,
  store_manager VARCHAR(50) CHECK (store_manager IN ('first,last name' )) NOT NULL,
 store_phone NUMERIC(10,2), store_address NUMERIC,
 city VARCHAR(50),zip VARCHAR(5), state CHAR(2));