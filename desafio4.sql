SELECT
    ut.user AS usuario,
    IF(YEAR(MAX(ht.reprodution)) = 2021,
        'Usuário ativo',
        'Usuário inativo') AS condicao_usuario
FROM
    SpotifyClone.history_table AS ht
        JOIN
    SpotifyClone.user_table AS ut ON ht.user_id = ut.user_id
GROUP BY ut.user
ORDER BY ut.user
