/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONSS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Date Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--DateTime and TimeZone:
-- This query will return the value of hiredate adjusted by 5 hours
SELECT hiredate + INTERVAL '5 hours' AS adjusted_datetime
FROM employees.emp;
--Cast a DateTime to DateTime with TimeZone (in UTC, EST, and IST TimeZones):
--You can cast a datetime to a datetime with timezone using the AT TIME ZONE function.
SELECT 
    '2024-04-17 15:30:00'::timestamp AS OriginalDateTime,
    '2024-04-17 15:30:00'::timestamp AT TIME ZONE 'UTC' AS UTCDateTime,
    '2024-04-17 15:30:00'::timestamp AT TIME ZONE 'EST' AS ESTDateTime,
    '2024-04-17 15:30:00'::timestamp AT TIME ZONE 'IST' AS ISTDateTime;
--Cast a DateTime Timezone to another TimeZone:
SELECT 
    '2024-04-17 15:30:00'::timestamp AT TIME ZONE 'UTC' AS UTCDateTime,
    ('2024-04-17 15:30:00'::timestamp AT TIME ZONE 'UTC') AT TIME ZONE 'EST' AS ESTDateTime;