FROM tomcat:latest

EXPOSE 8082
RUN rm -rf  /usr/local/tomcat/webapps/*
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
RUN sed -i 's/8080/8082/g' /usr/local/tomcat/conf/server.xml

CMD ["catalina.sh", "run"]
