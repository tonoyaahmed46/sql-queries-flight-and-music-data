SELECT DISTINCT flights.origin_city
FROM flights 
INNER JOIN (SELECT flights.origin_city, MAX(flights.actual_time) highest FROM flights
GROUP BY flights.origin_city) as sub
ON sub.origin_city = flights.origin_city 
AND sub.highest = flights.actual_time
WHERE flights.actual_time < (180);