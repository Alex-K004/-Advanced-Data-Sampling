SELECT name, duration
FROM track_list
ORDER BY duration DESC
LIMIT 1;


select name , duration from track_list
where duration >= 210;


select name, year from collection 
where year between '2019-01-01' and '2020-12-31'
order by name, year;

select nickname from executor
where nickname not like '% %';

SELECT name, name
FROM track_list
WHERE name ILIKE 'my %'  
   OR name ILIKE '% my'  
   OR name ILIKE '% my %' 
   OR name ILIKE 'my';



select musical_genre_id , count(executor_id) from executor_musical_genre
group by musical_genre_id;

select  count (t.name) as count_name
from track_list t
join albums_title a on a.album_title_id  = a.id
where year between '2018-12-31' and '2021-01-01';


select at.name, avg(duration) from album_title at
left join track_list tl on at.id = tl.album_title_id 
group by at.name;


SELECT e.id, e.nickname
FROM executor e
LEFT JOIN album_title a ON e.id = a.artist_id AND a.year = 2020
WHERE a.id IS NULL;  


SELECT DISTINCT c.name, e2.nickname 
FROM collection c
LEFT JOIN collection_track_list ctl ON ctl.collection_id = c.id 
LEFT JOIN track_list tl ON ctl.track_list_id = tl.id 
LEFT JOIN executor_album_title eat ON tl.id = eat.track_list_id 
LEFT JOIN album_title at ON eat.album_title_id = at.id 
LEFT JOIN executor e2 ON eat.executor_id = e2.id 
WHERE e2.nickname = 'Eminem';

