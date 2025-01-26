SELECT DISTINCT track.name
FROM track
WHERE track.track_id NOT IN 
(SELECT track.track_id
FROM invoice_line)
ORDER BY track.name ASC;