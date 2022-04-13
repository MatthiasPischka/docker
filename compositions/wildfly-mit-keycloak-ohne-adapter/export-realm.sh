
# Exportieren des Testrealms. Funktioniert für mich zurzeit unter Windows nur in der Windows CMD
docker exec -it wildfly-mit-keycloak_keycloak_1 /opt/jboss/keycloak/bin/standalone.sh -Djboss.socket.binding.port-offset=100 -Dkeycloak.migration.action=export -Dkeycloak.migration.provider=singleFile -Dkeycloak.migration.realmName=Testrealm -Dkeycloak.migration.usersExportStrategy=REALM_FILE -Dkeycloak.migration.file=/tmp/Testrealm.json
