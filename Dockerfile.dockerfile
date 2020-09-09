FROM tomcat:8.0
EXPOSE 8080/tcp
MAINTAINER mugunthan
COPY rps.war /usr/local/tomcat/webapps/
