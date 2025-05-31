#!/bin/bash

# Obter o diretório do projeto
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BACKUPS_DIR="$PROJECT_DIR/backups"

# Verificar se existem backups
if [ ! -d "$BACKUPS_DIR" ]; then
  echo "❌ Nenhum backup encontrado em $BACKUPS_DIR"
  exit 1
fi

# Listar backups disponíveis
echo "📂 Backups disponíveis:"
BACKUPS=($(ls -1 "$BACKUPS_DIR"))
if [ ${#BACKUPS[@]} -eq 0 ]; then
  echo "❌ Nenhum backup encontrado em $BACKUPS_DIR"
  exit 1
fi

# Mostrar backups disponíveis
for i in "${!BACKUPS[@]}"; do
  echo "  $((i+1))) ${BACKUPS[$i]}"
done

# Solicitar escolha do usuário
read -p "Escolha o número do backup para restaurar (ou 'q' para sair): " choice

# Validar escolha
if [[ "$choice" == "q" ]]; then
  echo "❌ Operação cancelada pelo usuário."
  exit 0
fi

if ! [[ "$choice" =~ ^[0-9]+$ ]] || [ "$choice" -lt 1 ] || [ "$choice" -gt ${#BACKUPS[@]} ]; then
  echo "❌ Escolha inválida."
  exit 1
fi

# Definir diretório do backup escolhido
SELECTED_BACKUP="$BACKUPS_DIR/${BACKUPS[$((choice-1))]}"
echo "🔄 Restaurando a partir de $SELECTED_BACKUP..."

# Restaurar dotfiles
echo "📁 Restaurando dotfiles..."
if [ -d "$SELECTED_BACKUP/dotfiles" ]; then
  [ -f "$SELECTED_BACKUP/dotfiles/.gitconfig" ] && cp "$SELECTED_BACKUP/dotfiles/.gitconfig" ~/.gitconfig
  
  # Criar diretórios se não existirem
  mkdir -p ~/.config/fish
  [ -f "$SELECTED_BACKUP/dotfiles/config.fish" ] && cp "$SELECTED_BACKUP/dotfiles/config.fish" ~/.config/fish/config.fish
  
  mkdir -p ~/.config
  [ -f "$SELECTED_BACKUP/dotfiles/starship.toml" ] && cp "$SELECTED_BACKUP/dotfiles/starship.toml" ~/.config/starship.toml
fi

# Restaurar extensões VS Code
echo "💻 Restaurando extensões VS Code..."
if [ -f "$SELECTED_BACKUP/vscode-extensions.txt" ] && command -v code >/dev/null 2>&1; then
  cat "$SELECTED_BACKUP/vscode-extensions.txt" | xargs -n 1 code --install-extension
fi

# Perguntar se deseja restaurar pacotes Homebrew
if [ -f "$SELECTED_BACKUP/Brewfile" ]; then
  read -p "Deseja restaurar pacotes Homebrew? Isso pode levar algum tempo (s/n): " restore_brew
  if [[ "$restore_brew" == "s" ]]; then
    echo "🍺 Restaurando pacotes Homebrew..."
    brew bundle install --file="$SELECTED_BACKUP/Brewfile"
  fi
fi

echo "✅ Restauração concluída!"