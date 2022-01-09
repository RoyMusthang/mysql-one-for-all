SELECT
    song AS nome_musica,
    IF(song = 'Dance With Her Own',
        'Dance With Trybe',
        IF(song = 'Let\'s Be Silly',
            'Let\'s Be Nice',
            IF(song = 'Magic Circus',
                'Magic Pull Request',
                IF(song = 'Troubles Of My Inner Fire',
                    'Troubles Of My Project',
                    IF(song = 'Without My Streets',
                        'Without My Code Review',
                        ''))))) AS novo_nome
FROM
    SpotifyClone.song_table
WHERE
    song_id IN (3 , 15, 6, 4, 18)
ORDER BY song;
