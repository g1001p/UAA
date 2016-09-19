export CATALINA_OPTS="$CATALINA_OPTS $(jolokia_opts) -Djava.security.egd=file:/dev/./urandom"
/opt/tomcat/bin/catalina.sh run
