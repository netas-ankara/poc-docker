# Docker Networking Notes

To run a container with closed network :
```
docker run -d --net none busybox sleep 1000
```
When you exec into it with :
```
docker exec -it <container_id> /bin/ash
```

You can see you can not ping outside world.

None container network provides the maximum level of network protection.
Not a good choice if network or Internet connection is required.
Suites well where the container require the maximum level of network security and network access is not necessary.

Bridged Network
```
docker network create --driver bridge my_bridge_network
docker network ls
docker network inspect my_bridge_network
docker run -d --name container_3 --net my_bridge_network busybox sleep 1000
```

In a bridged network, containers have access to two network interfaces.
A loopback interface
A private interface

All containers in the dame bridge network can communicate with each other
Containers from different bridge networks can't connect with each other by default
Reduces the level of network isolotion in favor of better outside connectivitiy
Most suitable where you want to setup a relatively small network on a single host.

Host Network
In host network all of the interfaces of the host machine is mirrored onto the container.

Overlay Network
Supports multi host networking out of the box.
Requires some pre-existing conditions before it can be created.

	* Running Docker engine in Swarm mode.
	* A key-value store such as consul.


Docker swarm outmatically creates an overlay network for you.
https://docs.docker.com/engine/userguide/networking/overlay-standalone-swarm/#create-a-swarm-cluster

Networking With Docker Compose
You can specify networks and use them in your images.
