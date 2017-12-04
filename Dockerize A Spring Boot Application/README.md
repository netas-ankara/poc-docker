# Dockerize A Spring Boot Application With Spotify Maven Plugin

If you are windows and install docker for windows you have to check the following from docker settings.
```
Expose deamon on tcp://localhost:2375 without TLS
```

First build the app with the following mvn goal.
```
clean install dockerfile:build
```
Then run the image as a container with :
```
docker run -p 8080:8080 -d springio/gs-spring-boot-docker:latest
```