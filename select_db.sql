--Название и продолжительность самого длительного трека.
select  name_track, duration	
from track t
where duration = (select max(duration) from track)
--Название треков, продолжительность которых не менее 3,5 минут.
select  name_track	
from track t
where duration > '00:03:30'
--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select name_collection 
from collection c 
where year_collection between 2018 and 2020
--Исполнители, чьё имя состоит из одного слова.
select name_artist 
from artist a 
where name_artist not like '% %'
--Название треков, которые содержат слово «мой» или «my».
select name_track
from track t 
where name_track like '%мой%' or name_track like '%my%'
--Количество исполнителей в каждом жанре.
select count(ga.artist_id), g.name_genre from genre g  
join genreartist ga on g.genre_id = ga.genre_id
group by g.name_genre
--Количество треков, вошедших в альбомы 2019–2020 годов.
select count(t2.track_id) as Количество_треков from track t2  
join album a on t2.album_id = a.album_id
where a.year_album between 2019 and 2020
--Средняя продолжительность треков по каждому альбому.
select avg(t2.duration), a.name_album from track t2 
join album a on t2.album_id = a.album_id
group by a.name_album
--Все исполнители, которые не выпустили альбомы в 2020 году.
select a.name_artist from artist a
join albumartist a1 on a.artist_id = a1.artist_id
join album a2 on a1.album_id = a2.album_id
where a2.year_album != 2020
--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select c.name_collection from collection c 
join trackscollections tc on c.collection_id = tc.collection_id
join track t on tc.track_id = t.track_id
join album a on t.album_id = a.album_id
join albumartist aa on a.album_id = aa.album_id
join artist ar on aa.artist_id = ar.artist_id
where ar.name_artist like 'Prodigy'
