FROM nginx:1.7.10
MAINTAINER Shawn Cicoria shawn.cicoria@microsoft.com

ENV WEB_HOME /usr/local/web

ADD Web.tar $WEB_HOME/

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 8000
CMD ["nginx", "-g", "daemon off;"]

