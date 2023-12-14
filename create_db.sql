CREATE TABLE IF NOT exists genre(
	genre_id SERIAL PRIMARY key,
	name_genre VARCHAR(60) not null
);

CREATE TABLE IF NOT exists artist(
	artist_id SERIAL PRIMARY key,
	name_artist VARCHAR(60) not null
);

CREATE TABLE IF NOT exists album(
	album_id SERIAL PRIMARY key,
	name_album VARCHAR(60) not null,
	year_album INTEGER not null	
);

create table if not exists track(
	track_id SERIAL PRIMARY key,
	name_track VARCHAR(60) not null,
	duration time not null,
	album_id INTEGER NOT NULL references album(album_id) 
);

create table if not exists collection(
	collection_id SERIAL PRIMARY key,
	name_collection VARCHAR(60) not null,
	year_collection INTEGER not null
);

create table if not exists TracksCollections(
	track_id INTEGER REFERENCES track(track_id),
	collection_id INTEGER REFERENCES collection(collection_id),
	CONSTRAINT pk1 PRIMARY KEY(track_id, collection_id)
);

create table if not exists GenreArtist(
	artist_id INTEGER REFERENCES artist(artist_id),
	genre_id INTEGER references genre(genre_id),
	CONSTRAINT pk2 PRIMARY KEY(artist_id, genre_id)
);

create table if not exists AlbumArtist(
	artist_id INTEGER REFERENCES artist(artist_id),
	album_id INTEGER references album(album_id),
	CONSTRAINT pk3 PRIMARY KEY(artist_id, album_id)
);

