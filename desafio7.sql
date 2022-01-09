SELECT
    at.artist AS artista,
    alt.album AS album,
    COUNT(ft.artist_id) AS seguidores
FROM
    SpotifyClone.artist_table AS at
        JOIN
    SpotifyClone.album_table AS alt ON at.artist_id = alt.artist_id
        JOIN
    SpotifyClone.follow_table AS ft ON at.artist_id = ft.artist_id
GROUP BY alt.album , at.artist
ORDER BY COUNT(ft.artist_id) DESC , at.artist , alt.album;
