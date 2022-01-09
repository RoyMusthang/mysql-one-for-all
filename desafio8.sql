SELECT
    at.artist AS artista, alt.album AS album
FROM
    SpotifyClone.artist_table AS at
        JOIN
    SpotifyClone.album_table AS alt ON alt.artist_id = at.artist_id
WHERE
    at.artist = 'Walter Phoenix'
ORDER BY alt.album;
