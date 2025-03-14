SELECT 
	flight_id
	, flight_no
	, scheduled_departure
	, CASE
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') < '06:00' THEN 'Night'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') > '18:00' THEN 'Evening'
		ELSE 'Day' END AS "Category"
	, CASE
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '00:00' AND '01:00' THEN '00:00-01:00'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '01:00' AND '02:00' THEN '01:00-02:00'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '02:00' AND '03:00' THEN '02:00-03:00'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '03:00' AND '04:00' THEN '03:00-04:00'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '04:00' AND '05:00' THEN '04:00-05:00'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '05:00' AND '06:00' THEN '05:00-06:00'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '06:00' AND '07:00' THEN '06:00-07:00'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '07:00' AND '08:00' THEN '07:00-08:00'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '08:00' AND '09:00' THEN '08:00-09:00'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '09:00' AND '10:00' THEN '09:00-10:00'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '10:00' AND '11:00' THEN '10:00-11:00'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '11:00' AND '12:00' THEN '11:00-12:00'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '12:00' AND '13:00' THEN '12:00-13:00'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '13:00' AND '14:00' THEN '13:00-14:00'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '14:00' AND '15:00' THEN '14:00-15:00'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '15:00' AND '16:00' THEN '15:00-16:00'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '16:00' AND '17:00' THEN '16:00-17:00'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '17:00' AND '18:00' THEN '17:00-18:00'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '18:00' AND '19:00' THEN '18:00-19:00'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '19:00' AND '20:00' THEN '19:00-20:00'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '20:00' AND '21:00' THEN '20:00-21:00'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '21:00' AND '22:00' THEN '21:00-22:00'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '22:00' AND '23:00' THEN '22:00-23:00'
		ELSE '00:00-01:00' END AS "Line Name"
	, CASE
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '00:00' AND '01:00' THEN '1'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '01:00' AND '02:00' THEN '2'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '02:00' AND '03:00' THEN '3'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '03:00' AND '04:00' THEN '4'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '04:00' AND '05:00' THEN '5'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '05:00' AND '06:00' THEN '6'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '06:00' AND '07:00' THEN '7'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '07:00' AND '08:00' THEN '8'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '08:00' AND '09:00' THEN '9'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '09:00' AND '10:00' THEN '10'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '10:00' AND '11:00' THEN '11'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '11:00' AND '12:00' THEN '12'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '12:00' AND '13:00' THEN '13'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '13:00' AND '14:00' THEN '14'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '14:00' AND '15:00' THEN '15'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '15:00' AND '16:00' THEN '16'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '16:00' AND '17:00' THEN '17'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '17:00' AND '18:00' THEN '18'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '18:00' AND '19:00' THEN '19'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '19:00' AND '20:00' THEN '20'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '20:00' AND '21:00' THEN '21'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '21:00' AND '22:00' THEN '22'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '22:00' AND '23:00' THEN '23'
		ELSE '24' END AS "Line ID"
FROM flights
WHERE CAST(TO_CHAR(scheduled_departure,'DD') AS int) = 31
AND CAST(TO_CHAR(scheduled_departure,'MM') AS int) = 08
;
