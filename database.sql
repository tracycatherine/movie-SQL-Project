CREATE TABLE Users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE Movies (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(200),
    genre VARCHAR(100),
    release_year INT
);

CREATE TABLE Watchlist (
    watchlist_id SERIAL PRIMARY KEY,
    user_id INT,
    movie_id INT,
    added_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);
INSERT INTO Users (name, email) VALUES
('Tracy', 'tracy@email.com'),
('Alex', 'alex@email.com');

INSERT INTO Movies (title, genre, release_year) VALUES
('Inception', 'Sci-Fi', 2010),
('Titanic', 'Romance', 1997),
('Avengers: Endgame', 'Action', 2019);

INSERT INTO Watchlist (user_id, movie_id, added_date) VALUES
(1, 1, '2026-03-20'),
(1, 2, '2026-03-21'),
(2, 3, '2026-03-22');
SELECT * FROM Movies;
SELECT Users.name, Movies.title, Movies.genre
FROM Watchlist
JOIN Users ON Watchlist.user_id = Users.user_id
JOIN Movies ON Watchlist.movie_id = Movies.movie_id;
UPDATE Movies
SET genre = 'Drama'
WHERE title = 'Titanic';
DELETE FROM Watchlist
WHERE watchlist_id = 1;