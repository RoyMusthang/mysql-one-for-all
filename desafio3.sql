SELECT
    ut.user AS usuario,
    COUNT(st.song) AS qtde_musicas_ouvidas,
    ROUND(SUM(st.duration_seconds) / 60, 2) AS total_minutos
FROM
    SpotifyClone.history_table AS ht
        INNER JOIN
    SpotifyClone.song_table AS st ON ht.song_id = st.song_id
        INNER JOIN
    SpotifyClone.user_table AS ut ON ht.user_id = ut.user_id
GROUP BY ut.user
ORDER BY ut.user;
