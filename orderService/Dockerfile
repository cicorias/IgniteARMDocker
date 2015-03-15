FROM java:8-jre
MAINTAINER Shawn Cicoria shawn.cicoria@microsoft.com


ENV APP_HOME /usr/local/app
ENV PATH $APP_HOME:$PATH
RUN mkdir -p "$APP_HOME"

WORKDIR $APP_HOME

ADD ordering-service-0.1.0.jar $APP_HOME/
ADD startService.sh $APP_HOME/


RUN chmod +x startService.sh 

EXPOSE 8080
#CMD ["java", "-jar", "ordering-service-0.1.0.jar"]
CMD ["./startService.sh"]
