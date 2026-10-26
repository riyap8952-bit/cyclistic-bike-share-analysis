
CYCLISTIC BIKE SHARE ANALYSIS
TRIP DATA( OCT'2025 - SEPT'2026)
TOOLS USED : BigQuery SQL

01
## QUERY TO COMBINE ALL TABLES INTO ONE SINGLE TABLE FOR EASY ANALYSIS

CREATE TABLE 
   `speedy-victory-507504-c5.CASE_STUDY_CYCLISTIC.12_months_combined` AS
SELECT * 
FROM `speedy-victory-507504-c5.CASE_STUDY_CYCLISTIC.2025_data_10`
UNION ALL 
SELECT * 
FROM `speedy-victory-507504-c5.CASE_STUDY_CYCLISTIC.2025_data_11`
UNION ALL
SELECT * 
FROM `speedy-victory-507504-c5.CASE_STUDY_CYCLISTIC.2025_data_12_02`
UNION ALL
SELECT * 
FROM `speedy-victory-507504-c5.CASE_STUDY_CYCLISTIC.2026_data_01`
UNION ALL
SELECT * 
FROM `speedy-victory-507504-c5.CASE_STUDY_CYCLISTIC.2026_data_02_02`
UNION ALL
SELECT * 
FROM `speedy-victory-507504-c5.CASE_STUDY_CYCLISTIC.2026_data_03`
UNION ALL
SELECT * 
FROM `speedy-victory-507504-c5.CASE_STUDY_CYCLISTIC.2026_data_04`
UNION ALL
SELECT * 
FROM `speedy-victory-507504-c5.CASE_STUDY_CYCLISTIC.combined_2026_05_data`
UNION ALL
SELECT * 
FROM `speedy-victory-507504-c5.CASE_STUDY_CYCLISTIC.2026_data_06`
UNION ALL
SELECT * 
FROM `speedy-victory-507504-c5.CASE_STUDY_CYCLISTIC.combined_2026_07_data`
UNION ALL
SELECT * 
FROM `speedy-victory-507504-c5.CASE_STUDY_CYCLISTIC.combined_2026_08_data`
UNION ALL
SELECT * 
FROM `speedy-victory-507504-c5.CASE_STUDY_CYCLISTIC.2026_data_09`

02
## TO FIND TOTAL RIDES 

SELECT
  COUNT(*) AS total_rides
FROM `speedy-victory-507504-c5.CASE_STUDY_CYCLISTIC.12_months_combined_cleaned`
WHERE started_at >= TIMESTAMP('2025-10-01 00:00:00+00')
  AND started_at < TIMESTAMP('2026-10-01 00:00:00+00');

03
## QUERY TO FIND DUPLICATE VALUES ACROSS COMBINED DATA TABLE

SELECT * 
FROM `speedy-victory-507504-c5.CASE_STUDY_CYCLISTIC.12_months_combined` 
WHERE ride_id IN (
    SELECT ride_id
    FROM `speedy-victory-507504-c5.CASE_STUDY_CYCLISTIC.12_months_combined` 
    GROUP BY ride_id
    HAVING COUNT (*) > 1 )
    ORDER BY ride_id 

04
## MEMBER TYPES AND PERCENTAGE OF THEIR TOTAL RIDES

SELECT
  member_casual,
  COUNT(*) AS total_rides,
  ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS percentage_of_rides
FROM `speedy-victory-507504-c5.CASE_STUDY_CYCLISTIC.12_months_combined_cleaned`
WHERE started_at >= TIMESTAMP('2025-10-01 00:00:00+00')
  AND started_at < TIMESTAMP('2026-10-01 00:00:00+00')
  AND member_casual IN ('member', 'casual')
GROUP BY member_casual
ORDER BY total_rides DESC;

05
## ANALYSIS OF TOTAL RIDES BY DAY OF WEEK

SELECT
  day_of_week,
  CASE day_of_week
    WHEN 1 THEN 'Sunday'
    WHEN 2 THEN 'Monday'
    WHEN 3 THEN 'Tuesday'
    WHEN 4 THEN 'Wednesday'
    WHEN 5 THEN 'Thursday'
    WHEN 6 THEN 'Friday'
    WHEN 7 THEN 'Saturday'
  END AS day_name,
  member_casual,
  COUNT(*) AS total_rides
FROM `speedy-victory-507504-c5.CASE_STUDY_CYCLISTIC.12_months_combined_cleaned`
WHERE started_at >= TIMESTAMP('2025-10-01 00:00:00+00')
  AND started_at < TIMESTAMP('2026-10-01 00:00:00+00')
  AND member_casual IN ('member', 'casual')
GROUP BY day_of_week, day_name, member_casual
ORDER BY day_of_week, member_casual;

06
## ANALYSIS OF TOTAL RIDES BY MONTH

SELECT
  FORMAT_TIMESTAMP('%Y-%m', started_at) AS ride_month,
  member_casual,
  COUNT(*) AS total_rides
FROM `speedy-victory-507504-c5.CASE_STUDY_CYCLISTIC.12_months_combined_cleaned`
WHERE started_at >= TIMESTAMP('2025-10-01 00:00:00+00')
  AND started_at < TIMESTAMP('2026-10-01 00:00:00+00')
  AND member_casual IN ('member', 'casual')
GROUP BY ride_month, member_casual
ORDER BY ride_month, member_casual;

07
## ANAYSIS OF RIDEABLE TYPES AND TOTAL RIDES

SELECT
  rideable_type,
  member_casual,
  COUNT(*) AS total_rides
FROM
  `speedy-victory-507504-c5.CASE_STUDY_CYCLISTIC.12_months_combined_cleaned`
WHERE
  started_at >= TIMESTAMP('2025-10-01 00:00:00+00')
  AND started_at < TIMESTAMP('2026-10-01 00:00:00+00')
  AND member_casual IN ('member', 'casual')
GROUP BY
  rideable_type,
  member_casual
ORDER BY
  rideable_type,
  member_casual;











