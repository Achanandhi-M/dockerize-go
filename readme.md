# Go Web Application

This is a simple Go web application that responds with "Hello, World!" when accessed. This README provides instructions for building and running the application using Docker with both single-stage and multi-stage builds.

## Prerequisites

- Docker installed on your machine
- Go installed on your machine (if you want to run locally without Docker)

## Running Locally

To run the application locally without Docker, execute the following commands:

```sh
go run main.go
```

The application will start and listen on port 8080. You can access it at `http://localhost:8080`.

## Docker Build and Run

### Single-Stage Docker Build

1. Create a `Dockerfile` with the following content:

2. Build the Docker image:

    ```sh
    docker build -t go-web-app .
    ```

3. Run the Docker container:

    ```sh
    docker run -p 8080:8080 go-web-app
    ```

### Multi-Stage Docker Build

1. Create a `Dockerfile.multi-stage` with the following content:

2. Build the Docker image:

    ```sh
    docker build -t go-web-app-multi .
    ```

3. Run the Docker container:

    ```sh
    docker run -p 8080:8080 go-web-app-multi
    ```

## Access the Application

Once the container is running, you can access the application in your web browser at `http://localhost:8080`. You should see the message "Hello, World!".

## Files

- `test.go`: The main Go application file.
- `Dockerfile`: Dockerfile for single-stage build.
- `Dockerfile.multi-stage`: Dockerfile for multi-stage build.
