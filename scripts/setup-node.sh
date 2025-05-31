#!/bin/bash

echo "📦 Instalando Node com NVM..."
export NVM_DIR="$HOME/.nvm"
source /opt/homebrew/opt/nvm/nvm.sh

nvm install --lts
nvm use --lts
nvm alias default 'lts/*'

echo "✅ Node.js instalado com sucesso!"
