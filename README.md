I'd like to acknowledge **Irina Demko** for her insightful work on fan charts, which I encountered during my studies and which served as the inspiration for this project. The fan chart concept is derived from the car accident chart.

✈️ ![Fan Chart Flights](https://github.com/user-attachments/assets/e304ba77-2c42-418d-80d3-d60e201a2825)

🎯 **This analysis utilizes a flight database from an SQL course.** 
Data manipulation and retrieval were performed using PostgreSQL. 
Due to Tableau's incompatibility with .sql files, Excel was employed as an intermediary for data preparation.
Tableau was the primary visualization tool used for this analysis.

🚗 ![Fan Chart Car Accidents](https://github.com/user-attachments/assets/0e534d81-9526-4a9a-8f1b-2d2365f80c03)


Chunk of code example 

SELECT 
	scheduled_departure
	, CASE
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') < '06:00' THEN 'Night'
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') > '18:00' THEN 'Evening'
		ELSE 'Day' END AS "Category"
	, CASE
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '00:00' AND '01:00' THEN '00:00-01:00'
...
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '22:00' AND '23:00' THEN '22:00-23:00'
		ELSE '00:00-01:00' END AS "Line Name"
	, CASE
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '00:00' AND '01:00' THEN '1'
...
		WHEN TO_CHAR(scheduled_departure, 'HH24:MI') BETWEEN '22:00' AND '23:00' THEN '23'
		ELSE '24' END AS "Line ID"
FROM flights
WHERE CAST(TO_CHAR(scheduled_departure,'DD') AS int) = 31
AND CAST(TO_CHAR(scheduled_departure,'MM') AS int) = 08
;
