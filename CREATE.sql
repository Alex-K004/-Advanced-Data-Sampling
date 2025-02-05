create table if not exists musical_genre (
	id SERIAl primary key,	
	name VARCHAR(60) not null
);

create table if not exists executor (
	id SERIAl primary key,	
	nickname VARCHAR(60) not null
);

create table if not exists album_title (
	id SERIAl primary key,	
	name VARCHAR(60) not null,
	year date check(year <= DATE '2024-12-31') not null
);

create table if not exists track_list (
	id SERIAl primary key,	
	name VARCHAR(60) not null,
	duration integer not null,
	id_of_album_title integer not null references album_title(id)
);

create table if not exists executor_musical_genre (
	executor_id integer not null references executor(id),
	musical_genre_id integer not null references musical_genre(id),
	constraint pk primary key (executor_id, musical_genre_id) 
);

create table if not exists executor_album_title (
	executor_id integer not null references executor(id),
	album_title_id integer not null references album_title(id),
	track_list_id integer not null references track_list(id),
	constraint PRk primary key (executor_id, album_title_id) 
);

create table if not exists collection (
	id SERIAl primary key,	
	name VARCHAR(60) not null,
	year date CHECK(year <= DATE '2024-12-31') not null
);

create table if not exists collection_track_list (
	collection_id integer not null references collection(id),
	track_list_id integer not null references track_list(id),
	constraint PRke primary key (collection_id, track_list_id)
);