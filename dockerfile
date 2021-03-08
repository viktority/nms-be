#!/bin/bash

FROM maven:3.6.0-jdk-11-slim AS build
COPY nms-impl/src /home/app/nms/nms-impl/src
COPY nms-impl/target/nms-impl-0.0.1-SNAPSHOT.war /home/app/nms/nms-impl/target/nms-impl-0.0.1-SNAPSHOT.war
COPY nms-impl/pom.xml /home/app/nms/nms-impl
COPY pom.xml /home/app/nms

#RUN mvn -f /home/app/nms/pom.xml clean package
#RUN mvn -f /home/app/nms/nms-impl/pom.xml clean package

#
# Package stage
#
FROM openjdk:8-jdk-alpine
COPY --from=build /home/app/nms/nms-impl/target/nms-impl-0.0.1-SNAPSHOT.war /home/app/nms/nms-impl-0.0.1-SNAPSHOT.war
ADD  "/home/app/nms/nms-impl-0.0.1-SNAPSHOT.war" nms-impl-0.0.1-SNAPSHOT.war
EXPOSE 8080
COPY run.sh /home/app/nms/
RUN chmod +x /home/app/nms/run.sh
CMD ["/bin/sh","/home/app/nms/run.sh"]
