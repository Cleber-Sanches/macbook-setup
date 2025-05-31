#!/bin/bash

# Obter o diretório do projeto (onde o script está localizado)
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BACKUP_DIR="$PROJECT_DIR/backups/$(date +%Y%m%d_%H%M%S)"

echo "🔄 Criando backup das configurações atuais em $BACKUP_DIR..."
mkdir -p "$BACKUP_DIR"

# Backup de dotfiles
echo "📁 Fazendo backup dos dotfiles..."
mkdir -p "$BACKUP_DIR/dotfiles"
[ -f ~/.gitconfig ] && cp ~/.gitconfig "$BACKUP_DIR/dotfiles/"
[ -f ~/.config/fish/config.fish ] && cp ~/.config/fish/config.fish "$BACKUP_DIR/dotfiles/"
[ -f ~/.config/starship.toml ] && cp ~/.config/starship.toml "$BACKUP_DIR/dotfiles/"

# Backup de extensões VS Code
echo "💻 Fazendo backup das extensões VS Code..."
if command -v code >/dev/null 2>&1; then
  code --list-extensions > "$BACKUP_DIR/vscode-extensions.txt"
fi

# Backup de configurações do Homebrew
echo "🍺 Fazendo backup das configurações do Homebrew..."
if command -v brew >/dev/null 2>&1; then
  brew bundle dump --file="$BACKUP_DIR/Brewfile"
fi

echo "✅ Backup concluído em $BACKUP_DIR"

# Adicionar ao .gitignore se não existir
if [ -f "$PROJECT_DIR/.gitignore" ]; then
  if ! grep -q "backups/" "$PROJECT_DIR/.gitignore"; then
    echo "backups/" >> "$PROJECT_DIR/.gitignore"
    echo "📝 Adicionado 'backups/' ao .gitignore"
  fi
else
  echo "backups/" > "$PROJECT_DIR/.gitignore"
  echo "📝 Criado .gitignore com 'backups/'"
fi
