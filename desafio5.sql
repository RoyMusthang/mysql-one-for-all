
SELECT
    st.song AS cancao, COUNT(ht.song_id) AS reproducoes
FROM
    SpotifyClone.history_table AS ht
        JOIN
    SpotifyClone.song_table AS st ON ht.song_id = st.song_id
GROUP BY st.song
ORDER BY COUNT(ht.song_id) DESC , st.song
LIMIT 2;
