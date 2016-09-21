FROM 781127743430.dkr.ecr.us-east-1.amazonaws.com/nurego/uaa_nurego:2
#RUN apt-get update
#RUN yum  -y update
#COPY jdk1.8.0_91 /opt/jdk1.8.0_91
#RUN apt-get update
#RUN yum  -y update
RUN rm -f /opt/tomcat/webapps/uaa.war
RUN rm -rf /opt/tomcat/webapps/ROOT
#COPY jdk1.8.0_91 /opt/jdk1.8.0_91
COPY tomcat/apache-tomcat-8.0.35 /opt/tomcat
#COPY tomcat/setenv.sh /opt/tomcat/bin
COPY tomcat/server.xml /opt/tomcat/conf
COPY tomcat/cloudfoundry-identity-api-3.4.0.war.zip /opt/tomcat/webapps/api.war
COPY tomcat/cloudfoundry-identity-app-3.4.0.war.zip /opt/tomcat/webapps/app.war
COPY tomcat/cloudfoundry-identity-uaa-3.4.0.war.zip /opt/tomcat/webapps/ROOT.war
COPY tomcat/postgresql-9.4.1209.jre6.jar /opt/tomcat/lib
COPY uaa /opt/uaa
COPY tomcat/setenv.sh /mnt
#ENTRYPOINT [ "/opt/tomcat/bin/startup.sh" ]
CMD  ["/bin/sh", "-c", "/opt/tomcat/bin/startup.sh"]
                #"/opt/tomcat/bin/deploy-and-run.sh"
EXPOSE 8080
