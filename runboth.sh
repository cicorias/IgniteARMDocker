#!/bin/sh
docker run -d -p 27107:27107 --name mongodb01 mongo:2.6.7
docker run scicoria/seedmongo:0.1
docker run -d -p 8080:8080 scicoria/orderservice:0.1
