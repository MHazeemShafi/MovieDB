# MovieDB

A beginner-friendly relational database project for organizing movies, directors, actors, genres, and user ratings. MovieDB is designed to practice SQL relationships and queries using a familiar movie-database example.

## Demo & Preview

- **Repository:** https://github.com/MHazeemShafi/MovieDB
- **Visual preview:** The repository includes a text-based database relationship diagram below; this is a SQL project rather than a web app.

## Features

- Tables for movies, directors, actors, genres, and ratings
- Relationship tables for movie-to-actor and movie-to-genre associations
- Primary and foreign key relationships
- Example data for testing queries
- Practice queries using `JOIN`, `GROUP BY`, `ORDER BY`, `AVG()`, and filtering

## Requirements

- MySQL Server
- MySQL Workbench or another MySQL client
- Access to run SQL scripts in a MySQL database

## Installation

Clone the repository:

```bash
git clone https://github.com/MHazeemShafi/MovieDB.git
cd MovieDB
```

No npm or Python dependencies are required.

## Quick Start

1. Open your MySQL client and connect to your MySQL server.
2. Run `database.sql` to create the database and tables.
3. Run `sample_data.sql` to insert the example records.
4. Open `queries.sql` and run the queries you want to explore.

## Configuration

The project does not require environment variables or API keys. If your MySQL setup uses a different database name or connection method, adjust the SQL or your local client settings as needed.

## Example Query

Calculate the average rating for each movie:

```sql
SELECT
    movies.title,
    ROUND(AVG(ratings.rating), 2) AS average_rating
FROM movies
JOIN ratings ON movies.movie_id = ratings.movie_id
GROUP BY movies.movie_id, movies.title
ORDER BY average_rating DESC;
```

## Project Structure

```text
MovieDB/
├── database.sql
├── sample_data.sql
├── queries.sql
└── README.md
```

## Contributing

This is a learning project. Suggestions and corrections are welcome through GitHub Issues.

1. Fork the repository and create a branch.
2. Make a focused change to the schema, sample data, or queries.
3. Test the SQL scripts in MySQL.
4. Submit a pull request explaining the change.

There is no automated test suite configured.

## Credits

Built by [MHazeemShafi](https://github.com/MHazeemShafi) as a practical exercise in relational database design and SQL.

## License

No license file is currently included. Unless a license is added, assume the source is copyrighted and ask the owner for permission before reusing or redistributing it.
