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

       SELECT Distinct artistName FROM Artist artist
       LEFT JOIN Album album on album.ArtistId = artist.id
       LEFT JOIN Genre genre on album.GenreId = genre.id
       WHERE genre.Label = 'Punk';