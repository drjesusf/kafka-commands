@echo off

REM Iniciar Kafka
start cmd /k "C:\kafka\kafka_2.13-3.8.1\bin\windows\kafka-server-start.bat C:\kafka\kafka_2.13-3.8.1\config\server.properties"
