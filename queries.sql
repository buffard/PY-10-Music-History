-- 1. Query all of the entries in the Genre table
SELECT * FROM Genre

-- 2. Using the INSERT statement, add one of your favorite artists to the Artist table.
INSERT INTO Artist (ArtistName, YearEstablished)
VALUES ('The Strokes', 1998)

-- 3. Using the INSERT statement, add one, or more, albums by your artist to the Album table.
INSERT INTO Album
VALUES (null, 'Is This It', '7/30/01', '36:28', 'RCA', 28, 2)

-- 4. Using the INSERT statement, add some songs that are on that album to the Song table.
INSERT INTO Song
VALUES (null, "Someday", "3:05", "7/30/01", 2, 28, 24)

-- 5. Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
SELECT a.Title, s.Title, ar.ArtistName
FROM Song s 
LEFT JOIN Album a
ON s.AlbumId = a.AlbumId
LEFT JOIN Artist ar 
ON s.artistId = ar.artistId
WHERE s.artistId = 28

    -- Below is another way to work the above.  
SELECT a.Title, s.Title, ar.ArtistName
FROM Song s 
LEFT JOIN Album a, Artist ar
ON s.AlbumId = a.AlbumId and s.artistId = ar.artistId
WHERE s.artistId = 28

-- ***Kimmys in class solution/notes***
Select a.title as "album title", s.title as "song title"
From Album a
left join Song s on s.albumid = a.albumid

select s.title as "Song Title", al.title as "Album Title", ar.artistname as "artist name"
from Song s
left join album al on al.albumid = s.albumid
left join Artist ar on s.Artistid = ar.Artistid
where ar.artistname = "ZZTop"
and al.title like "eliminator"

-- 6. Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
--***Lesley's way***
SELECT COUNT (AlbumId),AlbumId
FROM Song
GROUP BY AlbumId

-- ***Kimmys in class solution***
select a.title, count() as "total songs"
from album a
join song s on s.albumid = a.albumid
group by s.albumid; 

-- 7. Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT ar.artistname, count() as "Total Songs"
FROM Artist ar
JOIN song s on s.Artistid = ar.Artistid
GROUP BY s.Artistid

-- 8. Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT g.label, count() as "Total Songs"
FROM Genre g
JOIN song s on s.genreId = g.genreId
GROUP BY s.genreId

-- 9. Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
SELECT title, MAX(albumlength) as "duration"
FROM Album

-- 10. Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.
select

-- 11. Modify the previous query to also display the title of the album.


