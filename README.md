# Payara

en la siguiente ruta copiar el jar mysql -> /opt/payara/appserver/glassfish/domains/domain1/lib

# Iniciar el contenedor y crear el siguiente volumen

Path Local: storage-container
Path Container: /opt/payara/appserver/glassfish/domains/domain1/lib

# Comando para iniciar docker

docker run -d -p 4848:4848 -p 8080:8080 --name=payara-server-dev-2024 -v /storage-container/payara/:/opt/payara/appserver/glassfish/domains/domain1/lib payara/server-full:5.2022.3-jdk17

# Url para llegar a consola

https://[IP]:4848/common/index.jsf

# User y Password

admin / admin

______________________________________________

# MYSQL

docker run -d --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=secret -v /storage-container/mysql/:/var/lib/mysql mysql:8.0

Exportar Backup (en el SO no en el cliente )

mysqldump -u root -p kinal > respaldo_kalum.sql;

Importar Backup

mysql -u root -p kinal < kalum-main/respaldo_kalum.sql


