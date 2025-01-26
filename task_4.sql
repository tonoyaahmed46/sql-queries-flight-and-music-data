SELECT DISTINCT sub.dest_city
FROM flights as f3
JOIN (SELECT f2.origin_city, f2.dest_city
FROM flights as f2
WHERE f2.dest_city NOT IN 

(SELECT dest_city
FROM flights as f1 
WHERE f1.origin_city = '"San Diego CA"')

AND f2.dest_city != '"San Diego CA"') AS sub
ON f3.dest_city = sub.origin_city
WHERE f3.origin_city = '"San Diego CA"'
GROUP BY sub.dest_city
ORDER BY sub.dest_city ASC;