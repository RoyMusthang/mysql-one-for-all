SELECT
    ROUND(MIN(pt.value), 2) AS faturamento_minimo,
    ROUND(MAX(pt.value), 2) AS faturamento_maximo,
    ROUND(AVG(pt.value), 2) AS faturamento_medio,
    ROUND(SUM(pt.value), 2) AS faturamento_total
FROM
    SpotifyClone.user_table AS ut
        JOIN
    SpotifyClone.plan_table AS pt ON ut.plan_id = pt.plan_id;
