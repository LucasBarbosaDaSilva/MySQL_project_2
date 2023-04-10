SELECT
FORMAT(MIN(p.plans_value), 2) AS faturamento_minimo,
FORMAT(MAX(p.plans_value), 2) AS faturamento_maximo,
FORMAT(AVG(p.plans_value), 2) AS faturamento_medio,
FORMAT(SUM(p.plans_value), 2) AS faturamento_total
FROM SpotifyClone.user AS u INNER JOIN SpotifyClone.plans AS p ON u.plans_id = p.plans_id;