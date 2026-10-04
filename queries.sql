USE moviedb;

-- Show all movies
SELECT * FROM movies;

-- Show movies with their directors
SELECT
    movies.title,
    directors.name AS director
FROM movies
JOIN directors
ON movies.director_id = directors.director_id;

-- Show actors in each movie
SELECT
    movies.title AS movie,
    actors.name AS actor
FROM movie_actors
JOIN movies
ON movie_actors.movie_id = movies.movie_id
JOIN actors
ON movie_actors.actor_id = actors.actor_id;

-- Average movie ratings
SELECT
    movies.title,
    ROUND(AVG(ratings.rating), 2) AS average_rating
FROM movies
JOIN ratings
ON movies.movie_id = ratings.movie_id
GROUP BY movies.movie_id, movies.title
ORDER BY average_rating DESC;

-- Highest-rated movie
SELECT
    movies.title,
    ROUND(AVG(ratings.rating), 2) AS average_rating
FROM movies
JOIN ratings
ON movies.movie_id = ratings.movie_id
GROUP BY movies.movie_id, movies.title
ORDER BY average_rating DESC
LIMIT 1;