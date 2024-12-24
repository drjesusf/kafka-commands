@echo off
REM Iniciar Zookeeper
start cmd /k "C:\kafka\kafka_2.13-3.8.1\bin\windows\zookeeper-server-start.bat C:\kafka\kafka_2.13-3.8.1\config\zookeeper.properties"
