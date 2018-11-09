FROM  javaenv:latest
LABEL maintainer="DISH Docker Maintainers <docker-maint@dish.com>"

RUN ["mkdir","/opt/dishweb"]

WORKDIR /opt/dishweb
ADD ./config /opt/dishweb/config 
ADD ./webapp /opt/dishweb/webapp
ADD ./dish.jar /opt/dishweb/dish.jar

ENV  DISH_BASE_CONFIG /opt/dishweb/config/dish-config.xml

EXPOSE 8080

CMD ["java","-jar","dish.jar"]



