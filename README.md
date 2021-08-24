# Liran-home-exercise

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
verify you see you container running with the name you given (--name=\[anyName])

```
ubuntu@ip-172-31-13-194:nginx-container $ docker ps
CONTAINER ID   IMAGE                 COMMAND                  CREATED         STATUS         PORTS                                       NAMES
04d569b3e3a2   my-nginx:1.0.0.0   "nginx -g 'daemon of…"   4 seconds ago   Up 3 seconds   0.0.0.0:8080->8080/tcp, :::8080->8080/tcp   my-nginx
ubuntu@ip-172-31-13-194:nginx-container $
```


### using "update_nginx_configuration.sh" to update the nginx.conf file
run the "update_nginx_configuration.sh" by running
```bash
bash ./update_nginx_configuration.sh
```
or 
```bash
chmod +x ./update_nginx_configuration.sh
```
and run
```bash
./update_nginx_configuration.sh
```

and insert the <u>full path</u> of the new nginx config file
example:
```bash
ubuntu@ip-172-31-13-194:nginx-container $ bash ./update_nginx_configuration.sh
====== update nginx conf file ======

Please enter the path of the new nginx.conf file:
Full path: /home/ubuntu/nginx-container/nginx.conf.liran
copy /home/ubuntu/nginx-container/nginx.conf.new to my-nginx:/etc/nginx/conf/nginx.conf
reload nginx container id: 04d569b3e3a2
2021/08/24 16:31:18 [notice] 22#0: signal process started
finished...
ubuntu@ip-172-31-13-194:nginx-container $
```

### check the web app
run the command
```bash
curl [yourHostIPaddress]:8080/similarweb-home-assignment
```
or
```bash
curl localhost:8080/similarweb-home-assignment
```

verity the result
```bash
ubuntu@ip-172-31-13-194:nginx-container $ curl localhost:8080/similarweb-home-assignment
{"result":"hello home assignment!"}
ubuntu@ip-172-31-13-194:nginx-container $
```

