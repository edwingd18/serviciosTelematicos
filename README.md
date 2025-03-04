# Scripts para configurar y ejecutar ngrok

Este documento proporciona instrucciones para instalar, configurar y ejecutar `ngrok` en un sistema basado en Debian/Ubuntu.

## 1. Instalación de ngrok

Ejecuta el siguiente comando para instalar `ngrok` desde su repositorio oficial:

```sh
curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
    | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
    && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
    | sudo tee /etc/apt/sources.list.d/ngrok.list \
    && sudo apt update \
    && sudo apt install ngrok


#Configuar ngrok con el token
ngrok config add-authtoken TU_AUTHTOKEN


#Exponer el puerto
ngrok http 80
