SELECT track_list, duration
FROM name
ORDER BY duration DESC
LIMIT 1;


select name , duration from track_list
where duration > 210;


select name, year from collection 
where year between '2019-01-01' and '2020-12-31';
order by name, year

select nickname from executor
where nickname not like '% %';

SELECT track_list, name
FROM name
WHERE name ILIKE 'my %'  
   OR name ILIKE '% my'  
   OR name ILIKE '% my %' 
   OR name ILIKE 'my';



select musical_genre_id , count(singer_id) from executor_musical_genre
group by musical_genre_id 


select t.name, year from track_list t
left join albums_title a on s.id_of_album_title  = a.id
where year not like '%2020%';


select a.name, avg(duration) from albums_title at
left join track_list tl on at.id = tl.id_of_album_title 
group by at.name;


select distinct nickname from executor_album_title eat
left join album_title at on eat.album_title_id=at.id 
left join executor e on eat.executor_id=e.id 
where year between '2019-12-31' and '2021-01-01'


select distinct c.name, e2.nickname from collection c
left join collection_track_list ctl on ctl.collection_id = c.id 
left join track_list tl on ctl.track_list_id = tl.id 
left join album_title at on e.id_of_album_title = at.id 
left join executor_album_title eat on at.id = eat.album_title_id 
left join executor e2 on eat.executor_id = e2.id 
where e2.nickname = 'Eminem';

