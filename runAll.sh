#!/bin/sh
docker run -d -p 27017:27017 --name mongodb -v /data/db:/data/db scicoria/mongoseed:0.1
docker run -d -p 8080:8080 --name orderservice --link mongodb:mongo scicoria/orderservice:0.1
docker run -d -p 8000:8000 --name web --link orderservice:orderservice scicoria/staticsite:0.1
 
