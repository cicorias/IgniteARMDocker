#!/bin/sh
#docker run -d -p 27017:27017 --name mongodb01 scicoria/mongo:0.1
docker run -d -p 27017:27017 --name mongodb -v /data/db:/data/db mongo:2.6.7 --smallfiles
docker run -d scicoria/seedmongo:0.1
docker run -d -p 8080:8080 scicoria/orderservice:0.1
