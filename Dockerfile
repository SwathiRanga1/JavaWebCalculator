FROM maven:3.2.5-jdk-8 AS build

RUN mkdir /myapp
WORKDIR /myapp

COPY . /myapp

RUN mvn package

FROM tomcat:8.0-alpine

# ADD  target/webapp-0.2.war /usr/local/tomcat/webapps/

# EXPOSE 8080

COPY --from=build /myapp/target/webapp-0.2.war /usr/local/tomcat/webapps/

EXPOSE 8080
