/*Run the following code in PGAdmin once you have downloaded the bitcoin data CSV and placed it in a public directory. 
Make sure to update the FROM line of the COPY statement to include the correct file path for the COPY statement to work properly.*/

CREATE TABLE bitcoin (
    trans_date                  DATE,	
    price_usd                   NUMERIC(8,3),
    code_size                   INT,
    sent_by_address             INT, 
    transactions                INT,
    mining_profitability        NUMERIC(6,4),
    sent_in_usd                 BIGINT,
    transaction_fees            NUMERIC(6,4),
    median_transaction_fee      NUMERIC(7,5),
    confirmation_time           NUMERIC(5,3),
    market_cap                  BIGINT,
    transaction_value           INT,
    median_transaction_value    NUMERIC(8,4),
    tweets                      INT,
    google_trends               NUMERIC(6,3),
    fee_to_reward               NUMERIC(5,3),
    active_addresses            INT,
    top_100_cap                 NUMERIC(5,3)
);

COPY bitcoin
FROM 'Insert your directory here'
WITH (FORMAT CSV,HEADER);
