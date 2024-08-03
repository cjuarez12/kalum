# Acerca del Repositorio
Repositorio para almacenar todo lo relacionado a Payara

# Plugins necesarios:

en la siguiente ruta copiar el jar mysql -> /opt/payara/appserver/glassfish/domains/domain1/lib

# Iniciar el contenedor y crear el siguiente volumen

Path Local: storage-container
Path Container: /opt/payara/appserver/glassfish/domains/domain1/lib

# Comando para iniciar docker

docker run -d -p 4848:4848 -p 8080:8080 --name=payara-server-dev-2024 -v storage-container:/opt/payara/appserver/glassfish/domains/domain1/lib  payara/server-full:5.2022.3-jdk17

# Url para llegar a consola

https://[IP]:4848/common/index.jsf

# User y Password

admin / admin
