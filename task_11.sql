SELECT DISTINCT artist.name
FROM artist, album, track 
WHERE album.album_id = track.album_id
AND artist.artist_id = album.artist_id
GROUP BY artist.name
HAVING count(DISTINCT track.genre_id) >= 3
ORDER BY artist.name; 