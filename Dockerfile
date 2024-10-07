FROM tomcat:latest

EXPOSE 8082
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
COPY /var/lib/jenkins/workspace/First_Build/webapp/target/webapp.war /usr/local/tomcat/webapps/ROOT.war
RUN sed -i 's/8080/8082/g' /usr/local/tomcat/conf/server.xml

CMD ["catalina.sh", "run"]
