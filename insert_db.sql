INSERT INTO artist(name_artist) 
VALUES('Prodigy'),
      ('Scooter'),
	('RHCP'),
	('Korn'),
      ('ABBA'),
      ('boney M');

INSERT INTO genre(name_genre)
VALUES('Techno'),
      ('Rok'),
      ('Pop');

INSERT INTO album(name_album, year_album) 
VALUES('Experience', 1990),
      ('Our Happy Hardcore', 1995),
      ('By the Way', 1991),
      ('Follow The Leader', 1994),
      ('Arrival', 1989),
      ('Boonoonoonoos', 1986);

INSERT INTO collection(name_collection, year_collection) 
VALUES('collection1', 2000),
      ('collection2', 2010),
      ('collection3', 1990),
      ('collection4', 2020);

INSERT INTO track(name_track, duration, album_id) 
VALUES('Hyperspeed', '00:01:56', 1),
      ('Rebel Yell', '00:02:03', 2),
      ('This Is the Place', '00:01:19', 3),
      ('Got the Life', '00:03:11', 4),
      ('Dancing Queen', '00:01:54', 5),
      ('Malaika', '00:00:34', 6);

INSERT INTO trackscollections(track_id, collection_id) 
VALUES(1, 1),
      (2, 1),
      (3, 2),
	(4, 2),
	(5, 3),
	(6, 3),
	(1, 4),
	(4, 4);

INSERT INTO genreartist(artist_id, genre_id) 
VALUES(1, 1),
	(2, 1),
	(3, 2),
	(4, 2),
	(5, 3),
	(6, 3);

INSERT INTO albumartist (artist_id, album_id) 
VALUES(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6);
