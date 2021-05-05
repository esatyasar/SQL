--How many tracks does each album have? Your solution should include Album id and its number of tracks sorted from highest to lowest.
SELECT
	albums.AlbumId,
	COUNT(tracks.TrackId)
FROM albums
	INNER JOIN tracks
	ON albums.AlbumId = tracks.AlbumId
GROUP BY albums.Title
ORDER BY COUNT(tracks.TrackId) DESC;

--Find the album title of the tracks. Your solution should include track name and its album title.
SELECT
	tracks.name,
	albums.Title
FROM albums
	INNER JOIN tracks
	ON albums.AlbumId = tracks.AlbumId

--Find the minimum duration of the track in an album. Your solution should include track name, album id, album title and duration of the track sorted from highest to lowest.
SELECT
	tracks.name,
	tracks.AlbumId,
	albums.title,
	MIN(tracks.Milliseconds)
FROM albums
	INNER JOIN tracks
	ON albums.AlbumId = tracks.AlbumId
GROUP BY albums.Title
ORDER BY MIN(tracks.Milliseconds) DESC;

--Find the total duration of each album. Your solution should include track name, album id, album title and its total duration sorted from highest to lowest.
SELECT
	tracks.Name,
	albums.AlbumId,
	albums.title,
	SUM(tracks.Milliseconds) as sum_of_albums
FROM albums
	INNER JOIN tracks
	ON albums.AlbumId = tracks.AlbumId
GROUP BY albums.Title
ORDER BY SUM(tracks.Milliseconds) DESC;

--Based on the previous question, find the albums whose total duration is higher than 70 minutes. Your solution should include album title and total duration
SELECT
	albums.title,
	SUM(tracks.Milliseconds) as sum_of_albums
FROM albums
	INNER JOIN tracks
	ON albums.AlbumId = tracks.AlbumId
GROUP BY albums.Title
HAVING sum_of_albums > 4200000
ORDER BY SUM(tracks.Milliseconds) DESC;