FROM jboss/wildfly:24.0.0.Final
LABEL maintainer="Matthias Pischka, pischka-it.de" description="WildFly mit Keycloak Adapter"

ENV KEYCLOAK_VERSION 14.0.0
ENV WILDFLY_HOME /opt/jboss/wildfly

RUN cd $WILDFLY_HOME \
&& curl -LO https://github.com/keycloak/keycloak/releases/download/14.0.0/keycloak-oidc-wildfly-adapter-14.0.0.zip \
&& unzip keycloak-oidc-wildfly-adapter-${KEYCLOAK_VERSION}.zip -d . \
&& rm keycloak-oidc-wildfly-adapter-${KEYCLOAK_VERSION}.zip \
&& bin/jboss-cli.sh --file=bin/adapter-elytron-install-offline.cli \
# Admin-User anlegen
&& bin/add-user.sh admin admin1234 --silent \
# Zu Vermeidung von Fehlermeldungen beim Start
&& rm -r standalone/configuration/standalone_xml_history/current/

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]

EXPOSE 8080
EXPOSE 9990
