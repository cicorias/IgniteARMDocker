#!/bin/sh
docker run -d -p 27017:27017 --name mongodb -v /data/db:/data/db mongo:2.6.7 --smallfiles
docker run -d -p 8080:8080 --link mongodb:mongo scicoria/orderservice:0.1
