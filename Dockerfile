From tomcat 9.0.45

ADD **/*.war /myJenkinsTomCat/tomcat/webapps

EXPOSE 8081

CMD ["catalina.sh", "run"]