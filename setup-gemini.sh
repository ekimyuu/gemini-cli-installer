#!/bin/bash

# Asegúrate de estar en /root
cd /root || exit 1

# Actualiza el sistema
apt update -y && apt upgrade -y

# Instala herramientas necesarias
apt install -y curl npm

# Configura el repositorio de Node.js 20
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -

# Instala Node.js
apt install -y nodejs

# Verifica versiones
echo "Node.js version: $(node -v)"
echo "npm version: $(npm -v)"

# Instala el CLI de Gemini globalmente
npm install -g @google/gemini-cli@latest

# Crea el archivo .env en /root con la API key
echo "GEMINI_API_KEY=AIzaSyAjTnKp1Sjf3Xg0YPtRoXNxGYWT2uVnLvA" > /root/.env

# Confirmación final
echo "✅ Instalación completa. Archivo /root/.env creado con la API key."
