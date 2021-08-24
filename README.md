# liran-home-exercise

### Deploy the HOME-EXERCISE
  * clone the repo
  * cd to the cloned repo
  * build image from the Dockerfile

```
docker build -t [imageName:tag] .
```

  * run and create container from the newly created image

```
docker run --name=[anyName] -d --rm -p=8080:8080 [imageName:tag]
```

  * to check the status of the container
```
docker ps
```
verify you see you container running with the name you you given (--name=\[anyName])

```
ubuntu@ip-172-31-13-194:nginx-container $ docker ps
CONTAINER ID   IMAGE                 COMMAND                  CREATED         STATUS         PORTS                                       NAMES
04d569b3e3a2   my-nginx:1.0.0.0   "nginx -g 'daemon of…"   4 seconds ago   Up 3 seconds   0.0.0.0:8080->8080/tcp, :::8080->8080/tcp   my-nginx
ubuntu@ip-172-31-13-194:nginx-container $
```
