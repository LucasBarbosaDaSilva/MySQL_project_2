SELECT
a.artist_name AS artista,
ab.album_name AS album
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.album AS ab ON a.artist_id = ab.artist_id
WHERE a.artist_name = 'Elis Regina' ORDER BY album;