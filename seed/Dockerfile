
FROM      ubuntu:latest 
MAINTAINER Shawn Cicoria shawn.cicoria@microsoft.com

RUN mkdir -p /tmp


RUN sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN sudo apt-get install -y mongodb-org-shell
RUN sudo apt-get install -y mongodb-org-tools

COPY mongodb.catalog.json /tmp/mongodb.catalog.json
COPY mongodb.dealers.json /tmp/mongodb.dealers.json
COPY mongodb.quotes.json /tmp/mongodb.quotes.json
COPY seedData.sh /tmp/seedData.sh

WORKDIR /tmp

RUN chmod +x /tmp/seedData.sh

CMD ["/tmp/seedData.sh"]


