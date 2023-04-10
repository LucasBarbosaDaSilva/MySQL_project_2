SELECT
a.artist_name AS artista,
ab.album_name AS album,
COUNT(f.user_id) AS pessoas_seguidoras
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.album AS ab ON a.artist_id = ab.artist_id
INNER JOIN SpotifyClone.follow AS f ON a.artist_id = f.artist_id
GROUP BY a.artist_name, ab.album_name ORDER BY pessoas_seguidoras DESC, artista, album;
