# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

# version
```
ruby  2.5.3
rails 5.1.2
mysql 5.7
yarn  1.6.0
node  8.11.1
vuejs 2.5.6
```
# how to create develop environment
* install Docker for Mac
https://docs.docker.com/docker-for-mac/

* confirm docker version shown
```
$ docker --version
Docker version 18.06.0-ce, build 0ffa825
```

* download docker images
```
$ docker pull ruby:2.4.2
$ docker pull mysql:5.7
```

* confirm docker images downloaded
```
$ docker images
```
```
REPOSITORY           TAG                 IMAGE ID            CREATED             SIZE
mysql                5.7                 ac3967b02892        About an hour ago   545MB
ruby                 2.4.2               2a867526d472        5 months ago        687MB
```

* create work directories
```
$ mkdir ~/works
$ cd ~/works
```

* git clone
```
$ git clone https://github.com/r-sugi/giglog.git
```

* cd to directory
```
$ cd giglog
```

* docker-compose
build
```
$ docker-compose build
```

* first time and whenever needed, yarn install
```
$ docker-compose run web yarn install
```

* add webpack-dev-server
if web-server needed
```
docker-compose run web yarn add webpack-dev-server -g
```

* first time and whenever needed, bundle install
```
$ docker-compose run web bundle install
```

* exec
```
$ docker-compose up
```

* confirm
```
$ docker ps -a
```
```
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                                            NAMES
8557a9836a19        techbook-rank_web   "./entrypoint.sh ./b…"   12 days ago         Up 23 seconds               0.0.0.0:3000->3000/tcp, 0.0.0.0:8080->8080/tcp   techbook-rank_web_1
fc3614d1fcc8        mysql:5.7           "docker-entrypoint.s…"   12 days ago         Up 6 minutes                0.0.0.0:3306->3306/tcp                     techbook-rank_db_1
```

* create db
```
$ docker-compose run web bundle exec rake db:create
```

* db migrate
```
docker-compose run web bin/rails db:migrate RAILS_ENV=development
```

* check browser
```
http://0.0.0.0:3000/
```

---
---

### command in docker container
```
"docker-compose run web"
eg.) docker-compose run web rails s
```

```
$ docker-compose build
=> start docker container built by
```
Dockerfile-mysql
Dockerfile-ruby
docker-compose.yml
```
$ docker-compose up
$ docker-compose down
$ docker-compose start
$ docker-compose stop
$ docker-compose restart
```

### how to do rails c in docker container

```
docker ps
#techbook-rank_webに対応するCONTAINER_IDを確認する
#CONTAINER_ID: 8557a9836a19
```
```
docker exec -it CONTAINER_ID /bin/bash
```
```
rails c
```

how to exit from rails console
```
quit
```

how to exit from docker console
```
ctrl + q　
```
