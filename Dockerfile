FROM tomcat:8.0-alpine
LABEL maintainer="myfirstDockerImage"
ADD hello.jar /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]