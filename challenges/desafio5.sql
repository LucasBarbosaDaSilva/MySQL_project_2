SELECT
s.songs_name AS cancao,
COUNT(h.songs_id) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.history AS h ON h.songs_id = s.songs_id
GROUP BY s.songs_id
ORDER BY reproducoes DESC, s.songs_name
LIMIT 2;