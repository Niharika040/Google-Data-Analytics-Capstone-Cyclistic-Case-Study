-- Data Combining

DROP TABLE IF EXISTS `2021_combined_data`;

-- combining all the 12 months data tables into a single table containing data from Jan 2022 to Dec 2022.

CREATE TABLE IF NOT EXISTS `2021_combined_data` AS (
  SELECT * FROM `2021_tripdata.202101_tripdata`
  UNION ALL
  SELECT * FROM `2021_tripdata.202102_tripdata`
  UNION ALL
  SELECT * FROM `2021_tripdata.202103_tripdata`
  UNION ALL
  SELECT * FROM `2021_tripdata.202104_tripdata`
  UNION ALL
  SELECT * FROM `2021_tripdata.202105_tripdata`
  UNION ALL
  SELECT * FROM `2021_tripdata.202106_tripdata`
  UNION ALL
  SELECT * FROM `2021_tripdata.202107_tripdata`
  UNION ALL
  SELECT * FROM `2021_tripdata.202108_tripdata`
  UNION ALL
  SELECT * FROM `2021_tripdata.202109_tripdata`
  UNION ALL
  SELECT * FROM `2021_tripdata.202110_tripdata`
  UNION ALL
  SELECT * FROM `2021_tripdata.202111_tripdata`
  UNION ALL
  SELECT * FROM `2021_tripdata.202112_tripdata`
);

-- checking no of rows which are 5667717

SELECT COUNT(*)
FROM `2021_combined_data`;
