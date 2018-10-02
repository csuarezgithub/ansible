#!/bin/bash
#
# Copyright 2018 Mafiuks.
# Se concede permiso, de forma gratuita, a cualquier persona que obtenga una copia 
# de este software y de los archivos de documentación asociados (el "Software"), 
# para utilizar el Software sin restricción, incluyendo sin limitación los derechos a 
# usar, copiar, modificar, fusionar, publicar, distribuir, sublicenciar, y/o vender copias 
# del Software, y a permitir a las personas a las que se les proporcione el Software a
# hacer lo mismo, sujeto a las siguientes condiciones:
#
# El aviso de copyright anterior y este aviso de permiso se incluirán en todas las 
# copias o partes sustanciales del Software.
#
# EL SOFTWARE SE PROPORCIONA "TAL CUAL", SIN GARANTÍA DE NINGÚN 
# TIPO, EXPRESA O IMPLÍCITA, INCLUYENDO PERO NO LIMITADO A 
# GARANTÍAS DE COMERCIALIZACIÓN, IDONEIDAD PARA UN PROPÓSITO 
# PARTICULAR Y NO INFRACCIÓN. EN NINGÚN CASO LOS AUTORES O 
# TITULARES DEL COPYRIGHT SERÁN RESPONSABLES DE NINGUNA 
# RECLAMACIÓN, DAÑOS U OTRAS RESPONSABILIDADES, YA SEA EN UNA 
# ACCIÓN DE CONTRATO, AGRAVIO O CUALQUIER OTRO MOTIVO, QUE SURJA 
# DE O EN CONEXIÓN CON EL SOFTWARE O EL USO U OTRO TIPO DE 
# ACCIONES EN EL SOFTWARE.
#
# Shell Script desarrollado por Eduardo Valdebenito
# para Claro Chile. 
# Senior Java Developer Engineer +56966680699
#

echo ""
echo "***********************************************************************************"
echo "               Obtiene todos las estados distintos de LISTEN                       "
echo "-----------------------------------------------------------------------------------"
echo " Este proceso envia en formato json el ESTADO de las conexiones para elastic RedHat"
echo " "`date`
echo " Developed by Eduado Valdebenito                                                   "
echo "***********************************************************************************"
echo ""
timestamp=`date '+%Y-%m-%d %H:%M:%S'`
yearmonth=`date +%Y-%m`
date=`date +%Y-%m-%d`
user=""
pass=""
host="10.41.38.179"
port="6060"
path=""
url="$host:$port"

hostname=$(hostname)"("$(hostname -I | cut -d' ' -f1)")"

allData=$(netstat -na|grep tcp|grep -v LISTEN | awk '
    BEGIN { ORS = ""; print }
    /Proto/ {next}
    { printf "%s%s|%s|%s|%s",
          separator,$1, $4, $5, $6
      separator = ","
    }
    END {  }
')

IFS=',' read -ra AIPOD <<< "$allData"
for i in "${AIPOD[@]}"; do   
        proto="$(cut -d'|' -f1 <<<"$i")"
        ipOP="$(cut -d'|' -f2 <<<"$i")"
        ipDP="$(cut -d'|' -f3 <<<"$i")"
        state="$(cut -d'|' -f4 <<<"$i")"
        ipO=${ipOP%%:*}
        portO=${ipOP#*:}
        ipD=${ipDP%%:*}
        portD=${ipDP#*:}
		
        json="{\"fecha\": \"$timestamp\",\"hostname\": \"$hostname\",\"protocolo\": \"$proto\",\"ip_origen\": \"$ipO\",\"puerto_origen\": $portO,\"ip_destino\": \"$ipD\",\"puerto_destino\": $portD,\"estado\": \"$state\"}"

        curl -X POST "$url" -H "Content-Type: application/json" -d "$json" --connect-timeout 3 2>&1 | tee getState.$date.log
done
