SELECT event_name,
COUNT(DISTINCT user_pseudo_id) AS unique_users
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
WHERE event_name IN ('page_view', 'view_item', 'add_to_cart', 'purchase')
GROUP BY event_name