-- Sales Funnel Analysis SQL Queries
-- Dataset : events.csv
-- Columns : event_id, user_id, product_id, event_type, event_timestamp

-- 1. Data sanity check
SELECT *
FROM events
LIMIT 10;

-- 2. Total events per stage
SELECT
event_type,
count(*) as total_events
FROM events
GROUP BY event_type;

-- 3. Unique users per stage
SELECT
event_type,
count(distinct user_id) as unique_users
from events
GROUP BY event_type;

-- 4. User-level funnel
WITH Funnel AS (
    SELECT
    user_id,
    max(case WHEN event_type = 'view' then 1 else 0 END) AS has_view,
    max(case WHEN event_type = 'cart' then 1 else 0 END) AS has_cart,
    max(case WHEN event_type = 'purchase' then 1 else 0 END) AS has_purchase
    from events
    GROUP BY user_id
)
SELECT*from Funnel
LIMIT 10;

-- 4. User-level funnel - conversion rate
WITH Funnel AS (
    SELECT
    user_id,
    max(case WHEN event_type = 'view' then 1 else 0 END) AS has_view,
    max(case WHEN event_type = 'cart' then 1 else 0 END) AS has_cart,
    max(case WHEN event_type = 'purchase' then 1 else 0 END) AS has_purchase
    from events
    GROUP BY user_id
)
SELECT
round(sum(has_cart)*100.0/sum(has_view),2) as view_to_cart_rate,
round(sum(has_purchase)*100.0/sum(has_cart),2) as cart_to_purchase_rate,
round(sum(has_purchase)*100.0/sum(has_view),2) as overall_conversion
FROM Funnel;