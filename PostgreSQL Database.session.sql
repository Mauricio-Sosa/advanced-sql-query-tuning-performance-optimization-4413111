/* 
 Partition by Range, branch 05_03
*/

-- CREATE TABLE iot_measurement (
--   location_id int not null, 
--   measurement_datetime TIMESTAMP not NULL,
--   temp_celcius int, 
--   rel_humidity_pct int
-- )
-- PARTITION BY Range (measurement_datetime)
--;

-- Then the individual partitions must be defined
-- CREATE TABLE iot_measurement_wk1_2025 
--  PARTITION of iot_measurement
--  For VALUES FROM ('2025-01-01') TO ('2025-01-08')
--  ;

-- CREATE TABLE iot_measurement_wk2_2025 
--  PARTITION of iot_measurement
--  For VALUES FROM ('2025-01-08') TO ('2025-01-15')
--  ;

--  CREATE TABLE iot_measurement_wk3_2025 
--  PARTITION of iot_measurement
--  For VALUES FROM ('2025-01-15') TO ('2025-01-22')
--  ;

/*
Note that the partition tables inherit columns 
from the parent table. Partitions can still have their 
own indexes, etc. 


When rows get inserted into the main table 
iot_measurement, they will be stored in one of 
the partitions (assuming the criteria is matched)
*/

