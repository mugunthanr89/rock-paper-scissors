FROM tomcat:8.0
EXPOSE 8080/tcp
MAINTAINER mugunthan
COPY target/roshambo.war /usr/local/tomcat/webapps/
