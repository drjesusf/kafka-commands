REM mostrar el path de kafka en las variables de entorno de windows
echo $env.KAFKA_HOME

REM Iniciar zookeeper desde PowerShell
Start-Process -NoNewWindow -FilePath "$env:KAFKA_HOME\bin\windows\zookeeper-server-start.bat" -ArgumentList "$env:KAFKA_HOME\config\zookeeper.properties"

REM Iniciar Kafka desde PowerShell
Start-Process -NoNewWindow -FilePath "$env:KAFKA_HOME\bin\windows\kafka-server-start.bat" -ArgumentList "$env:KAFKA_HOME\config\server.properties"

REM Listar los topicos de kafka desde PowerShell
& "$env:KAFKA_HOME\bin\windows\kafka-topics.bat" --list --bootstrap-server localhost:9092

REM Crear un consumer en kafka desde PowerShell
& "$env:KAFKA_HOME\bin\windows\kafka-console-consumer.bat" --bootstrap-server localhost:9092 --topic test-topic --from-beginning

REM Listar los topicos de kafka
C:\kafka\kafka_2.13-3.8.1\bin\windows\kafka-topics.bat --list --bootstrap-server localhost:9092

REM Crear un nuevo tópico en kafka desde PowerShell
"$env.KAFKA_HOME\bin\windows\kafka-topics.bat --create --topic nuevo-topico --bootstrap-server localhost:9092 --partitions 1 --replication-factor 1"

REM Crear un nuevo tópico en kafka desde el archivo .bat
%KAFKA_HOME%\bin\windows\kafka-topics.bat --create --topic nuevo-topico --bootstrap-server localhost:9092 --partitions 1 --replication-factor 1

