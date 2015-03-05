#!/bin/sh
#cd mongo
#docker build -t scicoria/mongo:0.1 .
cd seed
docker build -t scicoria/seedmongo:0.1 .
cd ../orderService
docker build -t scicoria/orderservice:0.1 .
cd ../
