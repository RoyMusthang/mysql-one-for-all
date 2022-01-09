SELECT
    st.song AS nome, COUNT(*) AS reproducoes
FROM
    SpotifyClone.song_table AS st
        JOIN
    SpotifyClone.history_table AS ht ON ht.song_id = st.song_id
        JOIN
    SpotifyClone.user_table AS ut ON ut.user_id = ht.user_id
WHERE
    ut.plan_id = 1 OR ut.plan_id = 3
GROUP BY st.song
ORDER BY st.song;
