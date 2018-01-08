# Docker in Docker with Jenkins and VPNC


Based on the official images:

* [jenkins](https://github.com/jenkinsci/docker)
* [jenkins in docker](https://github.com/getintodevops/jenkins-withdocker)
* [vpnc](https://github.com/jsecchiero/vpnc)


# Requirements

## Setup

1. Install [Docker](http://docker.io).
2. Clone this repository
3. Change the VPNC configuration at bin/vpnc.sh

# Usage

Start the Jenkins in Docker with VPNC using *docker-compose*:

```bash
$ docker-compose up
```

You can also choose to run it in background (detached mode):

```bash
$ docker-compose up -d
```

You can start vpnc with go to container bash (docker exec -it CONTAINER_ID bash), then exec 

```bash
$ /etc/service/vpnc/run
```

You can stop the vpnc by vpnc-disconnect

Docker and Docker-compose in the container, connect with the host docker and docker-compose. 
 