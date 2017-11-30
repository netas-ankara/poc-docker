# poc-docker
Poc for Docker the ultimate container technology.

This repository is for experiencing the Docker technology. There are some notes about Docker and some useful commands.

For running an image :
```
docker run -busybox:1.27
```
For running an image with interactive mode :
```
docker run -it busybox:1.27
```

For checking the images that you have run :
```
docker ps -a
```

For port forwarding within the host machine :
```
docker run -it -d -p 8888:8080 tomcat:8.0
```

For checking the history of an image
```
docker history <image_name:image_version>
```

For creating an image form debian and git commands.
```
docker run -it debian:buster (Run it and interact with it)
>> apt-get update && apt-get install -y git
>> ctrl + d
docker ps -a (See the last image that you have interacted and get its id) 
docker commit container_id cgonul/debian:1.0.0 (tag it with your name)
docker images
docker run -it cgonul/debian:1.0.0
>>git version
```

While building with docker you may be aware of its caching mechanisms. When you RUN two commands like this
```
docker run -it debian:buster (Run it and interact with it)
RUN apt-get update
RUN apt-get install git
```
the first instruction may not be executed when it is cached. So you may have not up to date images. For preventing this concatenate the instructions into one.

You can also specify not to cache.
```
docker build -t cgonul/debian:1.0.0 . --no-cache=true
```




# Some useful links

[For logging](https://www.level-up.one/deep-dive-into-docker-logging/)
