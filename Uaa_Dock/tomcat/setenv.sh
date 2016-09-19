export JAVA_HOME=/opt/jdk1.8.0_91/
export  UAA_OPTIONS="-Dpassword-policy.required-score=0"
export CLOUD_FOUNDRY_CONFIG_PATH=/opt/uaa/config/
export JAVA_OPTS="-DPID=$$ -Dsun.net.inetaddr.ttl=60 -Dnetworkaddress.cache.ttl=60 $HTTP_PROXY_JAVA_OPTIONS $UAA_OPTIONS"
export CATALINA_OPTS="-Xmx512m -XX:MaxPermSize=256m"
export UAA_TOMCAT=/opt/tomcat
export PIDFILE=/opt/tomcat/logs/uaa.pid
export PGHOST=10.246.0.3
export PGPORT=5432
export UAADB=uaadb
export UAAUSER=uaa
export UAAPASS=uaa
