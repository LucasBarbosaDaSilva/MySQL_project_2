SELECT
u.user_name AS pessoa_usuaria,
IF(MAX(YEAR(h.reproduction_date)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.history AS h ON u.user_id = h.user_id
GROUP BY u.user_id
ORDER BY u.user_name;