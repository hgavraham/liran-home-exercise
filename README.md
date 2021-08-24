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
verify you see you container running with the name you you given \[--name=\[anyName]] 
