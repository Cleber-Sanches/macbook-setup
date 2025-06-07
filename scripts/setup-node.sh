#!/bin/bash

echo "📦 Instalando Node com FNM..."
# Instala a versão LTS mais recente do Node.js
fnm install --lts
# Define a versão LTS como padrão
fnm default --lts

echo "✅ Node.js instalado com sucesso!"
