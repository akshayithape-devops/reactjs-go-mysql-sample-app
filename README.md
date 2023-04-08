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

### Images Details :

```
Simple Web Application : akshayithape02/aws-ecs-demo-1:latest

Frontend Application : akshayithape02/aws-ecs-demo-2-frontend:latest
Backend Application : akshayithape02/aws-ecs-demo-2-backend:latest
Database : akshayithape02/aws-ecs-demo-2-db:latest
```

### How To Run :

Our Docker Compose setup provides a local development environment for our application, allowing us to easily spin up containers for the frontend, backend, and database, and define their relationships and dependencies.

```
docker-compose up -d 
```

### Build & Push Images To Docker Hub(ECS Demo) :

#### Backend 

```
cd backend &&  docker buildx build --platform linux/amd64,linux/arm64 -f dockerfile -t akshayithape02/aws-ecs-demo-2-backend:latest --push .
```

#### Frontend 

```
cd backend &&  docker buildx build --platform linux/amd64,linux/arm64 -f dockerfile -t akshayithape02/aws-ecs-demo-2-frontend:latest --push .
```

#### Database 

```
cd backend &&  docker buildx build --platform linux/amd64,linux/arm64 -f dockerfile -t akshayithape02/aws-ecs-demo-2-db:latest --push .
```