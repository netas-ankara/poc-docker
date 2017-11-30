For building an image with docker file :
```
docker build -t cgonul/debian:0.0.1 .
```

For this command to execute successfully the Dockerfile must be on the path of execution.
Docker build command takes the path to the build context as an argument.
When build starts, docker client would pack all the files in the build context into a tarball then transfer the tarball file to the daemon.
By default, docker would search for the Dockerfile in the build context path.
When building the image docker file creates intermediate containers increment and remove them while building.
