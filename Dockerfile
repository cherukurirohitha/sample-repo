FROM tomcat
COPY SampleWebApp.war /usr/local/tomcat/webapps
EXPOSE 8889
CMD [“/usr/local/tomcat/bin/catalina.sh”, “run”]
