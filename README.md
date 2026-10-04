# 🎬 MovieDB

A small movie database I built while learning SQL and getting more comfortable with databases.

I wanted to make something a little more interesting than just creating random tables, so I decided to build a simple IMDb-style database with movies, actors, directors, genres, and ratings.

## 🗺️ Database Diagram

The database is structured like this:

```text
                    ┌──────────────┐
                    │  DIRECTORS   │
                    │──────────────│
                    │ director_id  │
                    │ name         │
                    └──────┬───────┘
                           │
                           │ 1
                           │
                           │ many
                    ┌──────▼───────┐
                    │    MOVIES    │
                    │──────────────│
                    │ movie_id     │
                    │ title        │
                    │ release_year │
                    │ duration     │
                    │ language     │
                    │ director_id  │
                    └───┬─────┬────┘
                        │     │
                  many  │     │  many
                        │     │
              ┌─────────▼┐   ┌▼─────────────┐
              │  MOVIE_  │   │    MOVIE_    │
              │  ACTORS  │   │    GENRES    │
              └────┬─────┘   └──────┬───────┘
                   │                │
                   │                │
                many             many
                   │                │
            ┌──────▼──────┐  ┌──────▼──────┐
            │   ACTORS    │  │   GENRES    │
            │─────────────│  │─────────────│
            │ actor_id    │  │ genre_id    │
            │ name        │  │ name        │
            └─────────────┘  └─────────────┘


                    ┌──────────────┐
                    │   RATINGS    │
                    │──────────────│
                    │ rating_id    │
                    │ movie_id     │
                    │ username     │
                    │ rating       │
                    │ review       │
                    └──────▲───────┘
                           │
                           │ many
                           │
                           │ 1
                    ┌──────┴───────┐
                    │    MOVIES    │
                    └──────────────┘
```

### Relationships

* One director can have multiple movies.
* A movie can have multiple actors.
* An actor can appear in multiple movies.
* A movie can have multiple genres.
* A genre can belong to multiple movies.
* A movie can have multiple ratings.

## What I learned

While making this project, I practiced:

* Creating databases and tables
* Primary and foreign keys
* Connecting tables together
* One-to-many relationships
* Many-to-many relationships
* `JOIN`
* `GROUP BY`
* `ORDER BY`
* `AVG()`
* Filtering and sorting data
* Writing queries to get useful information from a database

## Database

The project contains tables for:

* 🎬 Movies
* 🎥 Directors
* 👤 Actors
* 🎭 Genres
* ⭐ Ratings

There are also two relationship tables:

* `movie_actors`
* `movie_genres`

These allow one movie to have multiple actors and genres.

## Files

```text
MovieDB/
├── database.sql       # Creates the database and tables
├── sample_data.sql    # Adds some example movies and data
├── queries.sql        # SQL queries I wrote while learning
└── README.md
```

## Example

One of the queries calculates the average rating of each movie:

```sql
SELECT
    movies.title,
    ROUND(AVG(ratings.rating), 2) AS average_rating
FROM movies
JOIN ratings
ON movies.movie_id = ratings.movie_id
GROUP BY movies.movie_id, movies.title
ORDER BY average_rating DESC;
```

This was one of the parts where I started understanding how `JOIN`, `AVG()` and `GROUP BY` work together.

## How to run it

You'll need:

* MySQL
* MySQL Workbench (or another MySQL client)

First run `database.sql` to create the database and tables.

Then run `sample_data.sql` to add the example data.

After that, open `queries.sql` and try running the queries.

## Why I made this

I'm currently learning SQL and wanted to practice by building something instead of only following tutorials.

This is a beginner project, and I'll probably improve it as I learn more about databases.

---

**Built while learning SQL 💻**
