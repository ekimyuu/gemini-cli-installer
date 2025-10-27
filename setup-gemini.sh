#!/bin/bash

# Actualiza el sistema
sudo apt update -y && sudo apt upgrade -y

# Instala herramientas necesarias
sudo apt install -y curl npm

# Configura el repositorio de Node.js 20
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -

# Instala Node.js
sudo apt install -y nodejs

# Verifica versiones
echo "Node.js version: $(node -v)"
echo "npm version: $(npm -v)"

# Instala el CLI de Gemini globalmente
npm install -g @google/gemini-cli@latest

# Crea el archivo .env con la API key
echo "GEMINI_API_KEY=AIzaSyAjTnKp1Sjf3Xg0YPtRoXNxGYWT2uVnLvA" > .env

# Confirmación final
echo "✅ Instalación completa. Archivo .env creado con la API key."
