#Overview

This project is a Movie Web Application that allows users to search for movies, view detailed information, and manage a personal watchlist. The application integrates with a PostgreSQL relational database to store user information and watchlist data, ensuring persistence across sessions. Users can interact with the app via a clean and intuitive interface while the backend handles data retrieval, storage, and API requests from TMDb and OMDb.

The purpose of this software is to practice full-stack development, strengthen skills in API integration, database design, and server-side programming, and build a functional application that demonstrates how a relational database can support dynamic web applications.

Software Demo Video
https://youtu.be/FwZ3ttV0gwU

#Relational Database

The relational database for this project is PostgreSQL, managed through pgAdmin. It stores all user accounts and watchlist data, ensuring that each user’s data is organized and retrievable.

Database Structure:
Users Table: Stores user credentials and profile information
Columns: user_id (Primary Key), username, email, password_hash
Movies Table: Stores movie information fetched from APIs
Columns: movie_id (Primary Key), title, release_date, rating, summary
Watchlist Table: Links users to movies in their watchlist
Columns: watchlist_id (Primary Key), user_id (Foreign Key), movie_id (Foreign Key)

This structure allows for efficient querying, relational integrity, and scalability as the application grows.

#Development Environment
IDE: Visual Studio Code
Backend: Node.js, Express.js
Frontend: React.js (or Vanilla JavaScript)
Database: PostgreSQL via pgAdmin
APIs: TMDb API, OMDb API
Libraries: pg for PostgreSQL integration, axios for API requests, dotenv for environment variables

This setup provides a full-stack JavaScript environment where the frontend and backend communicate seamlessly, and data persistence is handled reliably by the relational database.

#Useful Websites
PostgreSQL Documentation https://www.postgresql.org/docs/

TMDb API Documentation https://developers.themoviedb.org/3

OMDb API Documentation http://omdbapi.com/

Express.js Guide http://expressjs.com/en/starter/installing.html


#Future Work
Implement user authentication with JWT for added security
Add movie rating and review functionality for users
Improve search and recommendation algorithm to provide personalized suggestions
Refactor frontend for mobile responsiveness and improved UI