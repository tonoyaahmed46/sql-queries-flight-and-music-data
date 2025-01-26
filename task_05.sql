SELECT DISTINCT c.name 
FROM carriers as c, 
(SELECT DISTINCT flights.carrier_id 
FROM flights 
WHERE flights.origin_city = '"San Francisco CA"'
AND flights.dest_city = '"San Diego CA"') as sub 
WHERE sub.carrier_id = c.cid 
ORDER BY c.name ASC;
