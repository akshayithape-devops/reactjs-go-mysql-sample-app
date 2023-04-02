## Dockerized React JS + Golang + MySQL 3-tier Application 

### Architecture :

           +-------------------------+
           |         Frontend        |
           |       (React.js app)    |
           +-------------------------+
                      |
                      | HTTP requests
                      |
           +-------------------------+
           |         Backend         |
           |        (Golang app)     |
           +-------------------------+
                      |
                      | MySQL queries
                      |
           +-------------------------+
           |         Database        |
           |         (MySQL)         |
           +-------------------------+

In this architecture diagram, our application has three components: the frontend (React.js app), the backend (Golang app), and the database (MySQL). The frontend communicates with the backend via HTTP requests, and the backend communicates with the database via MySQL queries.

The frontend is responsible for rendering the user interface and handling user input. The backend provides APIs for the frontend to interact with, and handles the business logic of the application. The database stores and retrieves data for the application.

### How To Run :

Our Docker Compose setup provides a local development environment for our application, allowing us to easily spin up containers for the frontend, backend, and database, and define their relationships and dependencies.

```
docker-compose up -d 
```
