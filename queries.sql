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

-- 6. Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT COUNT()

SELECT COUNT(column_name)
FROM table_name
WHERE condition;

-- 7. Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

-- 8. Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.