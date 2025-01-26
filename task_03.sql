SELECT flights.origin_city, (100 * sub.c /count(*)) as percent
FROM flights

JOIN (select inner_flights.origin_city, count(*) as c
FROM flights as inner_flights
WHERE 180 > (inner_flights.actual_time)
GROUP BY inner_flights.origin_city) as sub

ON flights.origin_city = sub.origin_city
GROUP BY flights.origin_city, sub.c
ORDER BY (100 * sub.c /count(*)) ASC;
