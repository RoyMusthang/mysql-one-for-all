SELECT
    COUNT(*) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.user_table AS ut
        JOIN
    SpotifyClone.history_table AS ht ON ht.user_id = ut.user_id
WHERE
    ut.user = 'Bill';
