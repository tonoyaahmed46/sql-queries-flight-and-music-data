SELECT DISTINCT carriers.name 
FROM carriers, flights
WHERE flights.origin_city = '"San Diego CA"'
AND flights.dest_city = '"San Francisco CA"'
AND flights.carrier_id = carriers.cid 
ORDER BY carriers.name ASC;