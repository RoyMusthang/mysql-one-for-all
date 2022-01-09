SELECT
    (SELECT COUNT(*) FROM SpotifyClone.song_table) AS cancoes,
    (SELECT COUNT(*) FROM SpotifyClone.artist_table) AS artistas,
    (SELECT COUNT(*) FROM SpotifyClone.album_table) AS albuns;
