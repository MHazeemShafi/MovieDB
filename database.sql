CREATE DATABASE moviedb;

USE moviedb;

CREATE TABLE movies (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    release_year INT,
    duration_minutes INT,
    language VARCHAR(50)
);

CREATE TABLE directors (
    director_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE actors (
    actor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE genres (
    genre_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

ALTER TABLE movies
ADD director_id INT,
ADD FOREIGN KEY (director_id)
REFERENCES directors(director_id);

CREATE TABLE movie_actors (
    movie_id INT,
    actor_id INT,

    PRIMARY KEY (movie_id, actor_id),

    FOREIGN KEY (movie_id)
        REFERENCES movies(movie_id),

    FOREIGN KEY (actor_id)
        REFERENCES actors(actor_id)
);

CREATE TABLE movie_genres (
    movie_id INT,
    genre_id INT,

    PRIMARY KEY (movie_id, genre_id),

    FOREIGN KEY (movie_id)
        REFERENCES movies(movie_id),

    FOREIGN KEY (genre_id)
        REFERENCES genres(genre_id)
);

CREATE TABLE ratings (
    rating_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT NOT NULL,
    username VARCHAR(100) NOT NULL,
    rating DECIMAL(2,1) NOT NULL,
    review TEXT,

    FOREIGN KEY (movie_id)
        REFERENCES movies(movie_id),

    CHECK (rating >= 0 AND rating <= 10)
);