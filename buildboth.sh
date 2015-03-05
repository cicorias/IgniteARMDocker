#!/bin/sh
cd seed
docker build --tag scicoria/seedmongo:0.1 .
cd ../orderService
docker build -t scicoria/orderservice:0.1 .
cd ../
