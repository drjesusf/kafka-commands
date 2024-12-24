@echo off
REM Iniciar Zookeeper
start cmd /k "C:\kafka\kafka_2.13-3.8.1\bin\windows\zookeeper-server-start.bat C:\kafka\kafka_2.13-3.8.1\config\zookeeper.properties"

REM Esperar 5 segundos para asegurarse de que Zookeeper se inicie completamente
timeout /t 5

REM Iniciar Kafka
start cmd /k "C:\kafka\kafka_2.13-3.8.1\bin\windows\kafka-server-start.bat C:\kafka\kafka_2.13-3.8.1\config\server.properties"
