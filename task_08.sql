SELECT DISTINCT track.name
FROM track, playlist_track
WHERE track.track_id = playlist_track.track_id
AND track.track_id NOT IN 
(SELECT playlist_track.track_id
FROM playlist_track
WHERE playlist_track.playlist_id = 5)
ORDER BY track.name ASC ;
