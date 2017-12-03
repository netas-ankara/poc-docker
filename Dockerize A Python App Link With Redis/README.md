# Dockerize A Python App With Redis

Docker container link is used for safely connecting to two docker containers. In a docker container link there is a recipient and a source.
First run the redis image 
```
docker run -d --name redis redis:3.2.0
```

After running redis, run the python app linking it to the redis client.
```
docker build -t dockerapp:v0.3 .
docker run -d -p 5000:5000 --link redis dockerapp:v0.3
```

In the background this command modifies the /etc/hosts file in the dockerapp container with an entry of Redis container. You can check this :
```
docker exec -it <container_id> bash
more /etc/hosts
docker inspect a6556c908c83 | Select-String -Pattern IP (Windows PowerShell)
docker inspect a6556c908c83 | grep IP
```

The main use for docker container links is when we build an application with a microservice architecture, we are able to run many independent components in different containers.

Docker creates a secure tunnel between containers that doesn't need to expose any ports externally on the container.
