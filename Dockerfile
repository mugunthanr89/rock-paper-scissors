FROM tomcat:8.0
EXPOSE 8080/tcp
MAINTAINER mugunthan
COPY target/rps.war /usr/local/tomcat/webapps/
