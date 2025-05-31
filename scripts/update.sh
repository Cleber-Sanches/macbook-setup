#!/bin/bash

echo "🔄 Verificando atualizações para todas as ferramentas..."

# Atualizar Homebrew e pacotes
echo "🍺 Atualizando Homebrew e pacotes..."
brew update
brew upgrade
brew cleanup

# Atualizar Node.js
echo "🟩 Atualizando Node.js..."
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install --lts
nvm use --lts

# Atualizar pacotes globais do npm
echo "📦 Atualizando pacotes globais do npm..."
npm update -g

# Atualizar extensões do VS Code
echo "💻 Atualizando extensões do VS Code..."
if [ -f "config/vscode-extensions.txt" ]; then
  cat config/vscode-extensions.txt | xargs -n 1 code --install-extension
fi

# Atualizar ferramentas AWS
echo "☁️ Atualizando ferramentas AWS..."
if command -v aws >/dev/null 2>&1; then
  pip install --upgrade awscli
fi

if command -v amplify >/dev/null 2>&1; then
  npm update -g @aws-amplify/cli
fi

echo "✅ Todas as ferramentas foram atualizadas com sucesso!"
echo "⏰ Última atualização: $(date)"

# Adicionar ao crontab para execução semanal
read -p "Deseja configurar atualizações automáticas semanais? (s/n): " setup_cron
if [ "$setup_cron" = "s" ]; then
  SCRIPT_PATH=$(realpath "$0")
  (crontab -l 2>/dev/null; echo "0 10 * * 1 $SCRIPT_PATH") | crontab -
  echo "✅ Atualizações automáticas configuradas para todas as segundas-feiras às 10:00"
fi