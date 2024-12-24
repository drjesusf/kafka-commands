@echo off

REM Detener Kafka
taskkill /F /IM java.exe /T

REM Eliminar manualmente los archivos de logs
del /Q C:\tmp\kafka-logs\test-topic-0\*
