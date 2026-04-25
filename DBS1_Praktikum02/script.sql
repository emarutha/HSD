SELECT * FROM movies;
SELECT Title, ReleaseDate, Genre_ID FROM movies ORDER BY Title;
SELECT DISTINCT Distribution FROM movies;
SELECT Movie_ID, Title, Profit FROM movies WHERE Profit > 600000000;
SELECT Title, Profit FROM movies WHERE Profit BETWEEN 600000000 AND 700000000;
SELECT Title, Budget, Profit FROM movies WHERE SequelOf IS NOT NULL ORDER BY Profit DESC;
SELECT Title, Budget + Profit AS UMSATZ FROM movies WHERE SequelOf IS NOT NULL ORDER BY UMSATZ DESC;
