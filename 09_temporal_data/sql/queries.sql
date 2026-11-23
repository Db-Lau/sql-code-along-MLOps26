SELECT * FROM staging.sweden_holidays;

--use of date operators + or -
--note that the results become timestamp columns
SELECT 
  Date,
  Date + interval 5 day,
  Date - interval 5 day, 
FROM staging.sweden_holidays;

-- use of date functions

SELECT 
  Date,
  dayname(Date) AS Weekday,
  "Holiday Name (Swedish)",
  today() AS "Today Date",
  date_diff('day', Date,"Today Date") AS Differences -- show differences between two dates
FROM staging.sweden_holidays;

SELECT 
  Date,
  strftime(Date, '%d/%m/%Y') AS Date_Text, 
  strptime(Date_Text, '%d/%m/%Y')::DATE AS Date_Date, --strptime() returns timestamp
FROM staging.sweden_holidays;

SELECT * FROM staging.train_schedules;

SELECT 
  scheduled_arrival,
  actual_arrival,
  delay_minutes,
  age(actual_arrival, scheduled_arrival) as delay, --differences mellan actual and scheduled arrivals
  date_trunc('hour', scheduled_arrival) as trunc_hour, --truncate info from timestamp
  date_part('hour', scheduled_arrival) as part_hour, --extract info from timestamp
  current_localtimestamp() as present_time, --show current timestamp
FROM staging.train_schedules;
  