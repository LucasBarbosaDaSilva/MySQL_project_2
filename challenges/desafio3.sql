SELECT
u.user_name AS pessoa_usuaria,
COUNT(h.songs_id) AS musicas_ouvidas,
ROUND(SUM(s.songs_duration) / 60, 2) AS total_minutos
FROM SpotifyClone.user AS u
JOIN SpotifyClone.history AS h ON u.user_id = h.user_id
JOIN SpotifyClone.songs AS s ON h.songs_id = s.songs_id
GROUP BY u.user_name
ORDER BY u.user_name;