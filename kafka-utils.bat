REM mostrar el path de kafka en las variables de entorno de windows
echo $env.KAFKA_HOME

REM Iniciar zookeeper desde PowerShell
Start-Process -NoNewWindow -FilePath "$env:KAFKA_HOME\bin\windows\zookeeper-server-start.bat" -ArgumentList "$env:KAFKA_HOME\config\zookeeper.properties"

REM Iniciar Kafka desde PowerShell
Start-Process -NoNewWindow -FilePath "$env:KAFKA_HOME\bin\windows\kafka-server-start.bat" -ArgumentList "$env:KAFKA_HOME\config\server.properties"

REM Listar los topicos de kafka desde PowerShell
& "$env:KAFKA_HOME\bin\windows\kafka-topics.bat" --list --bootstrap-server localhost:9092

REM Crear un publisher en kafka desde PowerShell
echo "Mensaje 1" | & "$env:KAFKA_HOME\bin\windows\kafka-console-producer.bat" --broker-list localhost:9092 --topic test-topic


REM Crear un consumer en kafka desde PowerShell
& "$env:KAFKA_HOME\bin\windows\kafka-console-consumer.bat" --bootstrap-server localhost:9092 --topic test-topic --from-beginning

REM Configurar KAFKA para que pueda ser accedido desde minikube
En el archivo server.properties de KAFKA, cambiar la propiedad advertised.listeners a la ip de la maquina virtual de minikube
advertised.listeners=PLAINTEXT://192.168.18.199:9092