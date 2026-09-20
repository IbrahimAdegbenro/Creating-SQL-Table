/*Run the following code in PGAdmin once you have downloaded the customer_spending data CSV and placed it in a public directory. 
Make sure to update the FROM line of the COPY statement to include the correct file path for the COPY statement to work properly.*/

CREATE TABLE customer_spending (
    sale_date       DATE,	
    sale_year       INT,
    sale_month      VARCHAR(255),
    age             INT, 
    gender          CHAR(1),
    country         VARCHAR(255),
    state           VARCHAR(255),
    category        VARCHAR(255),
    sub_category    VARCHAR(255),
    quantity        INT,
    unit_cost       NUMERIC(6,2),
    unit_price      NUMERIC(10,6),
    cost            INT,
    revenue         INT
);

COPY customer_spending
FROM 'Insert your directory here'
WITH (FORMAT CSV,HEADER);
