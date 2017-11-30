For building an image with docker file :
```
docker build -t cgonul/debian:0.0.1 .
```

For this command to execute successfully the Dockerfile must be on the path of execution.
Docker build command takes the path to the build context as an argument.
When build starts, docker client would pack all the files in the build context into a tarball then transfer the tarball file to the daemon.
By default, docker would search for the Dockerfile in the build context path.
When building the image docker file creates intermediate containers increment and remove them while building.

Each RUN command will execute the command on the top writable layer of the container, then commit the container as a new image removing the modified layer. So it may be a good idea to chain the RUN instructions in the Dockerfile to reduce the number of image layers it creates.
```
FROM debian:buster
RUN apt-get update && apt-get install -y \
       git \
       vim
```

Sorting the installed packages alphanumerically may be a good idea.  

CMD instructions specifies what command you want to run when the container starts up.
If we don't specify CMD instruction in the Dockerfile, Docker will use the default command defined in the base image. For example in debian it is bash.
The CMD instruction does n't run when building the image, it only runs when the container starts up.
You can specify the command in either exec form which is preferred or in shell form.
When you specify the CMD instruction, it overrides the default command of the image.

You can override this when running the docker image.
```
docker run -it cgonul/debian:1.0.0 bash
```


