
## Create local docker environment

* Use an X server (e.g. XQuartz on Mac)
* On XQuartz also enable network connections from Preferences &rarr; Security &rarr; Allow connections from network clients and restart XQuartz.
* Enable local connections i.e. `xhost +localhost`

Apply the following in a shell
```shell
docker create network epoptes
docker build -t epoptes  -f Dockerfile.epoptes.debian .
docker build -t epoptes-client -f Dockerfile.epoptes-client.debian .


docker run --rm --network=epoptes --name server -e  DISPLAY=host.docker.internal:0 epoptes

docker run --rm --network=epoptes --name epoptes-client -e DISPLAY=host.docker.internal:0 -h epoptes-client-1  epoptes-client 
```


### Docker compose
As an alternative using docker compose

```shell
docker-compose up
```
### Adding more clients

One can add multiple nodes by starting multiple epoptes-clients-*

## Limitations 

* (Un)lock, Logout,Screen sharing, broadcasting don't work
* Executing commands needs to be done with "sudo"