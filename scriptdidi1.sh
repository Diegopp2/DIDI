#!/bin/bash

# Solicitar al usuario que ingrese una dirección IP
read -p "Ingrese una dirección IP para hacer ping: " ip_address

# Ejecutar comando de ping y guardar el resultado
ping_result=$(ping -n 4 $ip_address)

# Ejecutar otros comandos de ejemplo y guardar los resultados
system_info=$(systeminfo | grep "Nombre del sistema")
disk_space=$(wmic logicaldisk get deviceid, freespace)
processes=$(tasklist)
network_info=$(ipconfig)

# Plantilla para presentar los resultados
template="
======= Resultados =======
- Información del sistema:
$system_info
- Espacio libre en disco:
$disk_space
- Listado de procesos en ejecución:
$processes
- Información de red:
$network_info
- Resultado de ping a $ip_address:
$ping_result
=========================
"

# Mostrar los resultados utilizando la plantilla
echo "$template"
