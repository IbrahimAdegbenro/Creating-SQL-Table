-- Assignment 3 Part 1
-- Bitcoin Data


-- 1. Difficulty
SELECT
    trans_date,
    code_size::numeric / transactions AS difficulty
FROM bitcoin;


-- 2. Daily Cost
SELECT
    trans_date,
    median_transaction_fee * transactions AS daily_cost
FROM bitcoin
WHERE median_transaction_fee > 0.5;


-- 3. Average Transaction
SELECT
    trans_date,
    sent_in_usd::numeric / transactions AS avg_transaction
FROM bitcoin
WHERE transactions > 400000;


-- 4. Average Price and Total Transaction Amount for May 2015
SELECT
    ROUND(AVG(price_usd), 2)::MONEY AS avg_price,
    SUM(sent_in_usd)::MONEY AS total_transaction_amount
FROM bitcoin
WHERE trans_date >= '2015-05-01'
  AND trans_date < '2015-06-01';


-- 5. Lowest and Highest Market Cap and Price
SELECT
    ROUND(MIN(market_cap), 0) AS low_cap,
    ROUND(MAX(market_cap), 0) AS high_cap,
    ROUND(MIN(price_usd), 2) AS low_price_usd,
    ROUND(MAX(price_usd), 2) AS high_price_usd
FROM bitcoin;


-- 6. Transaction Fees between August 10, 2017 and August 10, 2019
SELECT
    MIN(median_transaction_fee) AS lowest_fee,
    MAX(median_transaction_fee) AS highest_fee,
    ROUND(AVG(transaction_fees), 5) AS avg_fee
FROM bitcoin
WHERE trans_date BETWEEN '2017-08-10' AND '2019-08-10';


-- 7. Average Transactions and Sent-by Addresses
SELECT
    AVG(transactions) AS avg_transactions,
    AVG(sent_by_address) AS avg_sent_addresses
FROM bitcoin
WHERE transactions > 350000;


-- 8. Average Google Trends and Total Tweets
SELECT
    ROUND(AVG(google_trends), 0) AS avg_google_trends,
    SUM(tweets) AS total_tweets
FROM bitcoin;


-- 9. Confirmation Time
SELECT
    MIN(confirmation_time) AS min_confirmation_time,
    MAX(confirmation_time) AS max_confirmation_time,
    ROUND(AVG(confirmation_time), 3) AS avg_confirmation_time
FROM bitcoin;


-- 10. Averages from March 1, 2020 to November 30, 2020
SELECT
    ROUND(AVG(price_usd), 2) AS avg_price_usd,
    ROUND(AVG(mining_profitability), 2) AS avg_mining_profitability,
    ROUND(AVG(transaction_fees), 2) AS avg_transaction_fees
FROM bitcoin
WHERE trans_date BETWEEN '2020-03-01' AND '2020-11-30';