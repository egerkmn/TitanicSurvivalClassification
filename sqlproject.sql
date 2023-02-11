--Query Desc: GROUP BY with multi-columns and extracting date information from datetime column
--Data Desc: an app installation table containing event_time, user_id, platform(IOS/ANDROID), Network(download channel), and country
--Functions: EXTRACT(), GROUP BY
SELECT EXTRACT(DATE FROM event_time) AS event_date, platform, network, country,
COUNT(*) AS install, COUNT(DISTINCT user_id) AS user
FROM table_app_install
GROUP BY EXTRACT(DATE FROM event_time), platform, network, country
