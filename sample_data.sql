USE moviedb;

INSERT INTO directors (name) VALUES
('Christopher Nolan'),
('Denis Villeneuve'),
('James Cameron'),
('Peter Jackson'),
('Greta Gerwig');

INSERT INTO actors (name) VALUES
('Leonardo DiCaprio'),
('Cillian Murphy'),
('Timothee Chalamet'),
('Margot Robbie'),
('Sam Worthington'),
('Kate Winslet'),
('Elijah Wood'),
('Ryan Gosling');

INSERT INTO genres (name) VALUES
('Action'),
('Drama'),
('Sci-Fi'),
('Adventure'),
('Thriller'),
('Comedy');

INSERT INTO movies
(title, release_year, duration_minutes, language, director_id)
VALUES
('Inception', 2010, 148, 'English', 1),
('Oppenheimer', 2023, 180, 'English', 1),
('Dune', 2021, 155, 'English', 2),
('Avatar', 2009, 162, 'English', 3),
('The Lord of the Rings', 2001, 178, 'English', 4),
('Barbie', 2023, 114, 'English', 5);

INSERT INTO movie_actors (movie_id, actor_id) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(4, 5),
(4, 6),
(5, 7),
(6, 4),
(6, 8);

INSERT INTO movie_genres (movie_id, genre_id) VALUES
(1, 3),
(1, 5),
(2, 2),
(2, 5),
(3, 3),
(3, 4),
(4, 1),
(4, 3),
(4, 4),
(5, 4),
(5, 2),
(6, 2),
(6, 6);

INSERT INTO ratings
(movie_id, username, rating, review)
VALUES
(1, 'alex', 9.0, 'Amazing concept and visuals.'),
(1, 'john', 8.5, 'Very creative movie.'),
(2, 'alex', 9.5, 'Excellent performance.'),
(2, 'sarah', 9.0, 'Very well made.'),
(3, 'john', 8.5, 'Great world building.'),
(4, 'sarah', 8.0, 'Beautiful visuals.'),
(5, 'alex', 9.2, 'Fantastic fantasy adventure.'),
(6, 'john', 7.8, 'Fun and entertaining.');