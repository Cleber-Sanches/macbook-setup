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
  echo "8) 🔄 Backup das configurações do n8n"
  echo "9) 🔙 Restaurar configurações do n8n"
  echo ""
  echo "a) ✅ Instalar tudo"
  echo "q) ❌ Sair"
  echo ""
}

# Função para instalar Homebrew
install_homebrew() {
  echo "📦 Instalando Homebrew (se necessário)..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo "📚 Adicionando Homebrew ao PATH..."
  echo >> /Users/clebersancs/.zprofile
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/clebersancs/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
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

# Função para fazer backup do n8n
backup_n8n() {
  echo "🔄 Fazendo backup das configurações do n8n..."
  
  # Definir diretório de backup
  BACKUP_DIR="backups/n8n_$(date +%Y%m%d_%H%M%S)"
  mkdir -p "$BACKUP_DIR"
  
  # Verificar se o diretório n8n existe
  N8N_CONFIG_DIR="$HOME/.n8n"
  if [ -d "$N8N_CONFIG_DIR" ]; then
    echo "📁 Copiando configurações do n8n..."
    cp -r "$N8N_CONFIG_DIR"/* "$BACKUP_DIR/"
    echo "✅ Backup do n8n concluído em $BACKUP_DIR"
  else
    echo "⚠️ Diretório de configuração do n8n não encontrado em $N8N_CONFIG_DIR"
    read -p "Deseja especificar outro caminho para o diretório do n8n? (s/n): " custom_path
    if [ "$custom_path" = "s" ]; then
      read -p "Digite o caminho completo para o diretório de configuração do n8n: " custom_n8n_dir
      if [ -d "$custom_n8n_dir" ]; then
        cp -r "$custom_n8n_dir"/* "$BACKUP_DIR/"
        echo "✅ Backup do n8n concluído em $BACKUP_DIR"
      else
        echo "❌ Diretório não encontrado. Backup cancelado."
      fi
    fi
  fi
}

# Função para restaurar configurações do n8n
restore_n8n() {
  echo "🔙 Restaurando configurações do n8n..."
  
  # Listar backups disponíveis
  BACKUPS_DIR="backups"
  if [ ! -d "$BACKUPS_DIR" ]; then
    echo "❌ Nenhum diretório de backup encontrado."
    return
  fi
  
  # Filtrar apenas backups do n8n
  N8N_BACKUPS=($(ls -1 "$BACKUPS_DIR" | grep "^n8n_"))
  if [ ${#N8N_BACKUPS[@]} -eq 0 ]; then
    echo "❌ Nenhum backup do n8n encontrado."
    return
  fi
  
  # Mostrar backups disponíveis
  echo "📂 Backups do n8n disponíveis:"
  for i in "${!N8N_BACKUPS[@]}"; do
    echo "  $((i+1))) ${N8N_BACKUPS[$i]}"
  done
  
  # Solicitar escolha do usuário
  read -p "Escolha o número do backup para restaurar (ou 'q' para sair): " choice
  
  # Validar escolha
  if [[ "$choice" == "q" ]]; then
    echo "❌ Operação cancelada pelo usuário."
    return
  fi
  
  if ! [[ "$choice" =~ ^[0-9]+$ ]] || [ "$choice" -lt 1 ] || [ "$choice" -gt ${#N8N_BACKUPS[@]} ]; then
    echo "❌ Escolha inválida."
    return
  fi
  
  # Definir diretório do backup escolhido
  SELECTED_BACKUP="$BACKUPS_DIR/${N8N_BACKUPS[$((choice-1))]}"
  
  # Restaurar configurações
  N8N_CONFIG_DIR="$HOME/.n8n"
  read -p "Deseja restaurar para o diretório padrão ($N8N_CONFIG_DIR)? (s/n): " use_default
  
  if [ "$use_default" = "s" ]; then
    mkdir -p "$N8N_CONFIG_DIR"
    cp -r "$SELECTED_BACKUP"/* "$N8N_CONFIG_DIR/"
    echo "✅ Configurações do n8n restauradas com sucesso para $N8N_CONFIG_DIR"
  else
    read -p "Digite o caminho completo para o diretório de destino: " custom_dir
    if [ -n "$custom_dir" ]; then
      mkdir -p "$custom_dir"
      cp -r "$SELECTED_BACKUP"/* "$custom_dir/"
      echo "✅ Configurações do n8n restauradas com sucesso para $custom_dir"
    else
      echo "❌ Caminho inválido. Restauração cancelada."
    fi
  fi
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
    8) backup_n8n ;;
    9) restore_n8n ;;
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
