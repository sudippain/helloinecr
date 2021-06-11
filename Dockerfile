#FROM tomcat:8.0-alpine
#LABEL maintainer="myfirstDockerImage"
#ADD hello.jar /usr/local/tomcat/webapps/
#EXPOSE 8080 #This one is default docker container port
#CMD ["catalina.sh", "run"]
FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 9000
ENTRYPOINT ["java","-jar","/app.jar"]