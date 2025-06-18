#!/bin/bash

# =====================================================
# Script para instalação de aplicativos adicionais
# =====================================================

# Função para exibir o menu de aplicativos
show_apps_menu() {
  clear
  echo "📱 Menu de Aplicativos Adicionais"
  echo "================================="
  echo ""
  echo "Categorias disponíveis:"
  echo ""
  echo "1) 💬 Comunicação e Social"
  echo "2) 🎵 Mídia e Entretenimento"
  echo "3) 🎨 Design e Criatividade"
  echo "4) 🎮 Jogos"
  echo "5) 🛠️ Ferramentas de Desenvolvimento"
  echo "6) 🔒 Segurança e Pentesting"
  echo "7) 🖥️ Virtualização"
  echo "8) ☁️ Cloud e DevOps"
  echo "9) 📊 Monitoramento e Observabilidade"
  echo "10) 🗄️ Bancos de Dados"
  echo "11) 📦 Todos os aplicativos"
  echo ""
  echo "q) ❌ Voltar ao menu principal"
  echo ""
}

# Função para aplicativos de comunicação
install_communication_apps() {
  echo "💬 Instalando aplicativos de comunicação..."
  
  local apps=(
    "discord|Discord|Comunicação e colaboração em equipe"
    "telegram|Telegram|Mensageiro instantâneo"
    "whatsapp|WhatsApp|Mensageiro instantâneo"
    "slack|Slack|Plataforma de comunicação para equipes"
    "microsoft-teams|Microsoft Teams|Plataforma de colaboração"
    "zoom|Zoom|Plataforma de videoconferência"
    "skype|Skype|Comunicação por voz e vídeo"
  )
  
  install_apps_from_array "${apps[@]}"
}

# Função para aplicativos de mídia
install_media_apps() {
  echo "🎵 Instalando aplicativos de mídia..."
  
  local apps=(
    "spotify|Spotify|Streaming de música"
    "vlc|VLC|Reprodutor de mídia"
    "handbrake|HandBrake|Conversor de vídeo"
    "obs|OBS Studio|Software de gravação e streaming"
    "audacity|Audacity|Editor de áudio"
    "davinci-resolve|DaVinci Resolve|Editor de vídeo profissional"
    "iina|IINA|Reprodutor de mídia moderno"
    "spotify|Spotify|Streaming de música"
  )
  
  install_apps_from_array "${apps[@]}"
}

# Função para aplicativos de design
install_design_apps() {
  echo "🎨 Instalando aplicativos de design..."
  
  local apps=(
    "gimp|GIMP|Editor de imagens gratuito"
    "inkscape|Inkscape|Editor de gráficos vetoriais"
    "blender|Blender|Software 3D gratuito"
    "krita|Krita|Software de pintura digital"
    "figma|Figma|Ferramenta de design de interface"
    "sketch|Sketch|Design de interface (pago)"
    "affinity-designer|Affinity Designer|Design vetorial"
    "affinity-photo|Affinity Photo|Editor de fotos"
    "affinity-publisher|Affinity Publisher|Editoração"
  )
  
  install_apps_from_array "${apps[@]}"
}

# Função para aplicativos de jogos
install_gaming_apps() {
  echo "🎮 Instalando aplicativos de jogos..."
  
  local apps=(
    "steam|Steam|Plataforma de jogos"
    "epic-games|Epic Games Launcher|Plataforma de jogos"
    "minecraft|Minecraft|Jogo de construção"
    "battle-net|Battle.net|Plataforma Blizzard"
    "origin|Origin|Plataforma EA"
    "uplay|Ubisoft Connect|Plataforma Ubisoft"
  )
  
  install_apps_from_array "${apps[@]}"
}

# Função para ferramentas de desenvolvimento
install_dev_tools() {
  echo "🛠️ Instalando ferramentas de desenvolvimento..."
  
  local apps=(
    "postman|Postman|Cliente para testes de API"
    "tableplus|TablePlus|Cliente de banco de dados"
    "sequel-pro|Sequel Pro|Cliente MySQL"
    "mongodb-compass|MongoDB Compass|Cliente MongoDB"
    "redisinsight|Redis Desktop Manager|Cliente Redis"
    "ngrok|ngrok|Túnel para desenvolvimento local"
    "charles|Charles Proxy|Proxy para debugging"
    "wireshark|Wireshark|Analisador de protocolos de rede"
    "burp-suite|Burp Suite|Ferramenta de segurança web"
  )
  
  install_apps_from_array "${apps[@]}"
}

# Função para ferramentas de segurança
install_security_apps() {
  echo "🔒 Instalando ferramentas de segurança..."
  
  local apps=(
    "kali-linux|Kali Linux|Distribuição Linux para segurança"
    "nmap|Nmap|Scanner de rede"
    "wireshark|Wireshark|Analisador de protocolos de rede"
    "burp-suite|Burp Suite|Ferramenta de segurança web"
    "metasploit|Metasploit|Framework de penetração"
    "john|John the Ripper|Quebrador de senhas"
    "hashcat|Hashcat|Quebrador de hashes"
  )
  
  install_apps_from_array "${apps[@]}"
}

# Função para aplicativos de virtualização
install_virtualization_apps() {
  echo "🖥️ Instalando aplicativos de virtualização..."
  
  local apps=(
    "virtualbox|VirtualBox|Virtualização gratuita"
    "parallels|Parallels Desktop|Virtualização para macOS"
    "vmware-fusion|VMware Fusion|Virtualização para macOS"
    "docker|Docker Desktop|Plataforma de containerização"
    "multipass|Multipass|VMs Ubuntu simples"
  )
  
  install_apps_from_array "${apps[@]}"
}

# Função para ferramentas cloud e DevOps
install_cloud_devops_apps() {
  echo "☁️ Instalando ferramentas cloud e DevOps..."
  
  local apps=(
    "kubernetes-cli|Kubernetes CLI|CLI para Kubernetes"
    "minikube|Minikube|Kubernetes local"
    "kind|Kind|Kubernetes em Docker"
    "helm|Helm|Gerenciador de pacotes para Kubernetes"
    "istioctl|Istio|Service mesh"
    "terraform|Terraform|Infraestrutura como código"
    "ansible|Ansible|Automação de configuração"
    "packer|Packer|Criação de imagens"
    "vagrant|Vagrant|Gerenciamento de ambientes virtuais"
  )
  
  install_apps_from_array "${apps[@]}"
}

# Função para ferramentas de monitoramento
install_monitoring_apps() {
  echo "📊 Instalando ferramentas de monitoramento..."
  
  local apps=(
    "prometheus|Prometheus|Monitoramento"
    "grafana|Grafana|Visualização de dados"
    "jaeger|Jaeger|Distributed tracing"
    "elasticsearch|Elasticsearch|Motor de busca"
    "logstash|Logstash|Processamento de logs"
    "kibana|Kibana|Visualização de dados"
    "influxdb|InfluxDB|Banco de dados de séries temporais"
    "telegraf|Telegraf|Coletor de métricas"
  )
  
  install_apps_from_array "${apps[@]}"
}

# Função para bancos de dados
install_database_apps() {
  echo "🗄️ Instalando bancos de dados..."
  
  local apps=(
    "redis|Redis|Banco de dados em memória"
    "postgresql|PostgreSQL|Banco de dados relacional"
    "mysql|MySQL|Banco de dados relacional"
    "mongodb/brew/mongodb-community|MongoDB|Banco de dados NoSQL"
    "neo4j|Neo4j|Banco de dados de grafos"
    "cassandra|Cassandra|Banco de dados distribuído"
    "couchdb|CouchDB|Banco de dados NoSQL"
    "rethinkdb|RethinkDB|Banco de dados NoSQL"
    "sqlite|SQLite|Banco de dados leve"
  )
  
  install_apps_from_array "${apps[@]}"
}

# Função para instalar todos os aplicativos
install_all_apps() {
  echo "📦 Instalando todos os aplicativos disponíveis..."
  
  install_communication_apps
  install_media_apps
  install_design_apps
  install_gaming_apps
  install_dev_tools
  install_security_apps
  install_virtualization_apps
  install_cloud_devops_apps
  install_monitoring_apps
  install_database_apps
}

# Função auxiliar para instalar aplicativos de um array
install_apps_from_array() {
  local apps=("$@")
  
  echo "Aplicativos disponíveis nesta categoria:"
  echo ""
  
  for i in "${!apps[@]}"; do
    IFS='|' read -r package name description <<< "${apps[$i]}"
    printf "%-2s) %-25s - %s\n" "$((i+1))" "$name" "$description"
  done
  
  echo ""
  echo "Digite os números dos aplicativos que deseja instalar (separados por vírgula)"
  echo "Exemplo: 1,3,5"
  echo "Ou digite 'todos' para instalar todos desta categoria"
  echo "Ou digite 'q' para sair"
  echo ""
  
  read -p "Sua escolha: " choice
  
  if [[ "$choice" == "q" ]]; then
    echo "❌ Operação cancelada pelo usuário."
    return
  fi
  
  local selected_apps=()
  
  if [[ "$choice" == "todos" ]]; then
    for app in "${apps[@]}"; do
      IFS='|' read -r package name description <<< "$app"
      selected_apps+=("$package|$name")
    done
  else
    IFS=',' read -ra choices <<< "$choice"
    for c in "${choices[@]}"; do
      c=$(echo "$c" | tr -d ' ')
      if [[ "$c" =~ ^[0-9]+$ ]] && [ "$c" -ge 1 ] && [ "$c" -le ${#apps[@]} ]; then
        local app="${apps[$((c-1))]}"
        IFS='|' read -r package name description <<< "$app"
        selected_apps+=("$package|$name")
      else
        echo "⚠️ Aplicativo número $c não encontrado, ignorando..."
      fi
    done
  fi
  
  if [ ${#selected_apps[@]} -eq 0 ]; then
    echo "❌ Nenhum aplicativo válido selecionado."
    return
  fi
  
  echo ""
  echo "📦 Aplicativos selecionados para instalação:"
  for app in "${selected_apps[@]}"; do
    IFS='|' read -r package name <<< "$app"
    echo "  - $name"
  done
  echo ""
  
  read -p "Confirmar instalação? (s/n): " confirm
  if [[ "$confirm" != "s" ]]; then
    echo "❌ Instalação cancelada."
    return
  fi
  
  echo "🚀 Iniciando instalação dos aplicativos..."
  
  for app in "${selected_apps[@]}"; do
    IFS='|' read -r package name <<< "$app"
    echo "📦 Instalando $name..."
    
    # Determinar se é um cask ou formula
    if [[ "$package" == *"/"* ]]; then
      # É um tap personalizado
      brew install "$package"
    elif [[ "$package" == *"-"* ]] && [[ "$package" != *"@"* ]]; then
      # Provavelmente é um cask
      brew install --cask "$package"
    else
      # É uma formula
      brew install "$package"
    fi
    
    if [ $? -eq 0 ]; then
      echo "✅ $name instalado com sucesso!"
    else
      echo "❌ Erro ao instalar $name"
    fi
  done
  
  echo ""
  echo "🎉 Instalação concluída!"
}

# Menu principal
while true; do
  show_apps_menu
  read -p "Escolha uma categoria: " choice
  
  case $choice in
    1) install_communication_apps ;;
    2) install_media_apps ;;
    3) install_design_apps ;;
    4) install_gaming_apps ;;
    5) install_dev_tools ;;
    6) install_security_apps ;;
    7) install_virtualization_apps ;;
    8) install_cloud_devops_apps ;;
    9) install_monitoring_apps ;;
    10) install_database_apps ;;
    11) install_all_apps ;;
    q) 
      echo "Voltando ao menu principal..."
      exit 0
      ;;
    *) echo "Opção inválida. Por favor, tente novamente." ;;
  esac
  
  echo ""
  read -p "Pressione Enter para continuar..."
done 