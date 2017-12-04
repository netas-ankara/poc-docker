# Using Docker Compose 

Manual linking containers and configuring services become impractical when the number of containers grows.
Docker compose is a tool for defining and running multi-container Docker applications.

Docker compose is a very handy tool to quickly get docker environment up and running.

Docker compose uses yaml files to store the configuration of all the containers, which removed the burden to maintain our scripts for docker orchestration.


Here is the docker compose file
```
version: "3.0"
services:
  dockerapp:
    build: .
    ports:
      - "5000:5000"
    depends_on:
      - redis
  redis:
    image: redis:3.2.0
```

**When running with the above docker file you do not need to specify a link information. The depends on clause can make it for you.**

You can run the following command execute the docker compose file.
```
docker-compose up
```

For running in detached mode you can:
```
docker-compose up -d
```

You can checkout the logs with the following :
```
docker-compose logs -f
```

You can checkout the logs of a specific container 
```
docker-compose logs -f dockerapp
```

To stop all the running containers without removing them, you can issue the following command :
```
docker-compose stop
```

To remove all of the containers you can
```
docker-compose rm --all
```

It is very important to remember that docker only rebuilds the image when the image does not exists. So any change in dockerfile will not be executed if the image exists. To force this you can build it with :
```
docker-compose build
```

```
docker-compose up (starts up all the containers)
docker-compose ps (checks the status of the containers managed by docker compose)
docker-compose logs (outputs aggregated logs for the containers which are manged by docker-compose)
docker-compose logs -f (follow the aggregated logs)
docker-compose logs <container_id> (logs a specific container)
docker-compose stop (stops all of the containers)
docker-compose rm --all (remove all of the containers)
docker-compose build (rebuild all of the images)
```

https://www.level-up.one/things-watch-working-docker-containers/

