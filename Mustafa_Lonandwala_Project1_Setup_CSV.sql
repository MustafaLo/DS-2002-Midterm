SELECT 
    t.TrackId,
    t.Name AS TrackName,
    t.Composer,
    t.Milliseconds,
    t.Bytes,
    t.UnitPrice,
    a.Title AS AlbumTitle,
    ar.Name AS ArtistName,
    g.Name AS GenreName,
    m.Name AS MediaTypeName
FROM Track t
LEFT JOIN Album a ON t.AlbumId = a.AlbumId
LEFT JOIN Artist ar ON a.ArtistId = ar.ArtistId
LEFT JOIN Genre g ON t.GenreId = g.GenreId
LEFT JOIN MediaType m ON t.MediaTypeId = m.MediaTypeId;