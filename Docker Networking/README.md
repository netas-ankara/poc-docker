# Docker Networking Notes

To run a container with closed network :
```
docker run -d --net none busybox sleep 1000
```
When you exec into it with :
```
docker exec -it <container_id> bash
```