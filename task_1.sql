SELECT DISTINCT flights.origin_city, flights.dest_city, flights.actual_time
FROM flights 
INNER JOIN (SELECT origin_city, MAX(actual_time) highest FROM flights GROUP BY origin_city) as sub
ON sub.origin_city = flights.origin_city 
AND sub.highest = flights.actual_time;

