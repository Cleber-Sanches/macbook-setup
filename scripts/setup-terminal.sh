#!/bin/bash

echo "🔧 Configurando Fish como shell padrão..."
if ! grep -q "/opt/homebrew/bin/fish" /etc/shells; then
  echo "/opt/homebrew/bin/fish" | sudo tee -a /etc/shells
fi
chsh -s /opt/homebrew/bin/fish

echo "⭐ Instalando Starship..."
brew install starship

echo "🧩 Instalando Fisher (gerenciador de plugins do Fish)..."
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source
fisher install jorgebucaran/fisher

echo "📁 Copiando dotfiles de terminal..."
mkdir -p ~/.config/fish
cp ./dotfiles/config.fish ~/.config/fish/config.fish
