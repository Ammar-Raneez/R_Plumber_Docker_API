# R Plumber Docker API

A simple example of a Plumber API that can be dockerized and run using environment variables

Build the docker container
```
docker-compose --env-file .env build
```

Run the container
```
docker-compose --env-file .env up
```

Access the API at `http://localhost:8000/healthy`
