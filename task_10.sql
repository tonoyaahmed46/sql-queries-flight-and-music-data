SELECT DISTINCT playlist.name
FROM playlist 
WHERE playlist.playlist_id NOT IN
(SELECT DISTINCT playlist.playlist_id 
FROM genre 
INNER JOIN track
ON track.genre_id = genre.genre_id
INNER JOIN playlist_track 
ON playlist_track.track_id = track.track_id 
INNER JOIN playlist 
ON playlist.playlist_id = playlist_track.playlist_id 
WHERE genre.name = 'Blues'
OR genre.name = 'Rock') 
ORDER BY playlist.name ASC;
