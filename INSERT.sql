insert into executor(id, nickname)
values(1, 'Guf');

insert into executor(id, nickname)
values(2, 'Rammstein');

insert into executor(id, nickname)
values(3, 'ATL');

insert into executor(id, nickname)
values(4, 'GSPD');

insert into executor(id, nickname)
values(5, 'Eminem');



insert into musical_genre(id, name)
values(1, 'Hip-hop');

insert into musical_genre(id, name)
values(2, 'Rock');

insert into musical_genre(id, name)
values(3, 'Hard Bass');



insert into album_title(id, name, year)
values (1, 'Electro club', '28-01-2021');

insert into album_title(id, name, year)
values (2, 'The house that Alik built', '05-05-2020');

insert into album_title(id, name, year)
values (3, 'Radio apocalypse', '29-10-2021');

insert into album_title(id, name, year)
values (4, 'Reise, Reise', '27-09-2004');

insert into album_title(id, name, year)
values (5, '8 Mile', '06-11-2002');




insert into track_list(id, name, duration, id_of_album_title)
values (1, 'Moskau', '4:16', 4);

insert into track_list(id, name, duration, id_of_album_title)
values (2, 'Ohne Dich', '4:31', 4);

insert into track_list(id, name, duration, id_of_album_title)
values (3, 'Mein Teil', '4:32', 4);

insert into track_list(id, name, duration, id_of_album_title)
values (4, 'Letters', '3:30', 2);

insert into track_list(id, name, duration, id_of_album_title)
values (5, 'Bad weather', '4:30', 2);

insert into track_list(id, name, duration, id_of_album_title)
values (7, 'Behemoth', '2:34', 3);

insert into track_list(id, name, duration, id_of_album_title)
values (8, 'Just like my father', '2:37', 3);

insert into track_list(id, name, duration, id_of_album_title)
values (9, 'Just like my father', '2:37', 3);

insert into track_list(id, name, duration, id_of_album_title)
values (10, 'Girl from St. Petersburg', '3:14', 1);

insert into track_list(id, name, duration, id_of_album_title)
values (11, '8 Mile', '5:59', 5);



insert into collection(id, name, year)
value(1, '8 Mile: Music from and Inspired by the Motion Picture', '29-10-2002');

insert into collection(id, name, year)
value(2, 'Curtain Call: The Hits', '06-12-2005');

insert into collection(id, name, year)
values(3, 'Stone and shark', '12-09-2021');

insert into collection(id, name, year)
values(4, 'Soul of all songs', '30-10-2022');



insert into executor_musical_genre(executor_id, musical_genre_id)
values(1, 1);

insert into executor_musical_genre(executor_id, musical_genre_id)
values(2, 2);

insert into executor_musical_genre(executor_id, musical_genre_id)
values(3, 1);

insert into executor_musical_genre(executor_id, musical_genre_id)
values(4, 3);

insert into executor_musical_genre(executor_id, musical_genre_id)
values(5, 1);



insert into executor_album_title(executor_id, album_title_id)
values(4, 1);

insert into executor_album_title(executor_id, album_title_id)
values(1, 2);

insert into executor_album_title(executor_id, album_title_id)
values(3, 3);

insert into executor_album_title(executor_id, album_title_id)
values(2, 4);




insert into collection_track_list(collection_id, track_list_id)
values(1, 11);







