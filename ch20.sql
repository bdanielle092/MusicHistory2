-- 1.Query all of the entries in the Genre table
--SELECT * from Genre;

--2.Query all the entries in the Artist table and order by the artist's name. HINT: use the ORDER BY keywords
--SELECT ArtistName from Artist
--Order By ArtistName Asc;

--3.Write a SELECT query that lists all the songs in the Song table and include the Artist name
--SELECT song.Title,
--       artist.ArtistName
--  FROM Song song
--       LEFT JOIN Artist artist on song.ArtistId = artist.id;

--4.Write a SELECT query that lists all the Artists that have a Pop Album
--       SELECT Distinct artistName FROM Artist artist
--       LEFT JOIN Album album on album.ArtistId = artist.id
--       LEFT JOIN Genre genre on album.GenreId = genre.id
--       WHERE genre.Label = 'Pop';

--5.Write a SELECT query that lists all the Artists that have a Jazz or Rock Album
 --SELECT Distinct artistName FROM Artist artist
 --      LEFT JOIN Album album on album.ArtistId = artist.id
 --      LEFT JOIN Genre genre on album.GenreId = genre.id
 --      WHERE genre.Label = 'Jazz' or genre.Label = 'Rock';

 --6.Write a SELECT statement that lists the Albums with no songs
 --SELECT album.Title FROM Album album
 --LEFT JOIN Song song on song.AlbumId  = Album.id
 --WHERE song.Id is NULL;

--7.Using the INSERT statement, add one of your favorite artists to the Artist table.
 --ex. INSERT INTO Genre (Label) VALUES ('Techno');
 --INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Bruno Mars', '2004') 
 --SELECT * FROM Artist;

 --8. Using the INSERT statement, add one, or more, albums by your artist to the Album table.
 --INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Unorthodox JukeBox', '2012', '3945', 'Atlantic Records', '28','7');
 --SELECT * FROM Album;

 --9.Using the INSERT statement, add some songs that are on that album to the Song table.
 --insert into song (title, songlength, releasedate, genreid, artistid, albumid) values ('young girls', '348', '2012','7','28','23');
 --insert into song (title, songlength, releasedate, genreid, artistid, albumid) values ('locked out of heaven', '353', '2012','7','28','23');
 --insert into song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) values ('Gorilla', '404', '2012','7','28','23');
 --Select * FROM Song;

 --10. Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
 --SELECT song.Title, album.Title, artist.ArtistName FROM Album
 --LEFT JOIN Song on song.AlbumId = Album.Id
 --LEFT JOIN Artist on song.ArtistId = Artist.Id
 --WHERE Album.Title = 'Unorthodox JukeBox';

 -- select song.title, album.title, artist.artistname from Song
 --left join Album on song.albumid = album.id
 --left join artist on song.artistid = artist.id
 --where Album.title = 'unorthodox jukebox';

 --11.Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
 -- the first Album.Title is to count the songs then second it to add the titles. We are grouping the songs by album.title
-- SELECT COUNT (Album.Title), Album.Title
--FROM Song
--LEFT JOIN Album on Song.AlbumId = Album.Id
--GROUP BY Album.Title

--12. Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
-- SELECT COUNT (Artist.ArtistName), Artist.ArtistName
--FROM Song
--LEFT JOIN Artist on Song.ArtistId = Artist.Id
--GROUP BY Artist.ArtistName

--13.Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
-- SELECT COUNT (Genre.Label), Genre.Label
--FROM Song
--LEFT JOIN Genre on Song.GenreId = Genre.Id
--GROUP BY Genre.Label

--14.Write a SELECT query that lists the Artists that have put out records on more than one record label. Hint: When using GROUP BY instead of using a WHERE clause, use the HAVING keyword
--having count (distinct Label) > 1 to see which artist has more then one record label
--SELECT Artist.ArtistName
--FROM Album
--LEFT JOIN Artist on Album.ArtistId = Artist.Id
--GROUP BY Artist.ArtistName
--HAVING COUNT (DISTINCT Label) > 1

--15.Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
--We are grabbing both albumLength and title from ablum then using the Where clauses to only display the longest duration 
--SELECT AlbumLength, Title
--FROM Album
--WHERE AlbumLength = (SELECT MAX(AlbumLength)
--FROM Album);

--16.Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.
--SELECT SongLength, Title
--FROM Song
--WHERE SongLength = (SELECT MAX (SongLength) from Song);

--17.Modify the previous query to also display the title of the album.
SELECT SongLength, Song.Title, Album.Title
FROM Song
LEFT JOIN Album on song.AlbumId = Album.id
WHERE SongLength = (SELECT MAX (SongLength) from Song);






