#!/bin/bash

# Função para exibir o menu de personalização
show_menu() {
  clear
  echo "📦 MacBook Setup - Menu de Personalização"
  echo "=========================================="
  echo "Selecione os componentes que deseja instalar:"
  echo ""
  echo "1) 🍺 Homebrew e pacotes básicos (obrigatório)"
  echo "2) 🐟 Fish Shell e configurações de terminal"
  echo "3) 🟩 Node.js, NVM e ferramentas JavaScript"
  echo "4) 🔐 Git e configurações"
  echo "5) ☁️ Ferramentas AWS (AWS CLI, CDK, SAM, Amplify)"
  echo "6) 🔄 Backup das configurações atuais"
  echo "7) 🔙 Restaurar a partir de um backup"
  echo ""
  echo "a) ✅ Instalar tudo"
  echo "q) ❌ Sair"
  echo ""
}

# Função para instalar Homebrew
install_homebrew() {
  echo "📦 Instalando Homebrew (se necessário)..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo "📚 Instalando pacotes via Brewfile..."
  brew bundle --file=./Brewfile
}

# Função para configurar terminal
setup_terminal() {
  echo "🖥️ Configurando terminal..."
  chmod +x scripts/setup-terminal.sh
  ./scripts/setup-terminal.sh
}

# Função para configurar Node.js
setup_node() {
  echo "🟩 Instalando Node.js com NVM..."
  chmod +x scripts/setup-node.sh
  ./scripts/setup-node.sh
}

# Função para configurar Git
setup_git() {
  echo "🔐 Configurando Git..."
  chmod +x scripts/setup-git.sh
  ./scripts/setup-git.sh
}

# Função para configurar AWS
setup_aws() {
  echo "☁️ Configurando ferramentas AWS..."
  chmod +x scripts/setup-aws.sh
  ./scripts/setup-aws.sh
}

# Função para fazer backup
backup_configs() {
  echo "🔄 Fazendo backup das configurações atuais..."
  chmod +x scripts/backup.sh
  ./scripts/backup.sh
}

# Função para restaurar a partir de um backup
restore_configs() {
  echo "🔙 Restaurando a partir de um backup..."
  chmod +x scripts/restore.sh
  ./scripts/restore.sh
}

# Menu principal
while true; do
  show_menu
  read -p "Escolha uma opção: " choice
  
  case $choice in
    1) install_homebrew ;;
    2) setup_terminal ;;
    3) setup_node ;;
    4) setup_git ;;
    5) setup_aws ;;
    6) backup_configs ;;
    7) restore_configs ;;
    a) 
      backup_configs
      install_homebrew
      setup_terminal
      setup_node
      setup_git
      setup_aws
      echo "✅ Setup completo finalizado com sucesso!"
      break
      ;;
    q) 
      echo "Saindo do instalador. Nenhuma alteração foi feita."
      exit 0
      ;;
    *) echo "Opção inválida. Por favor, tente novamente." ;;
  esac
  
  read -p "Pressione Enter para continuar..."
done
