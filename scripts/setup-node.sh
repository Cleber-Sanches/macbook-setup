#!/bin/bash

echo "📦 Instalando Node com FNM..."

# Verificar se o FNM já está instalado
if ! command -v fnm &> /dev/null; then
    echo "🔄 FNM não encontrado. Instalando FNM..."
    curl -fsSL https://fnm.vercel.app/install | bash
    
    # Adicionar FNM ao PATH para a sessão atual
    export PATH="$HOME/.fnm:$PATH"
    eval "`fnm env`"
else
    echo "✅ FNM já está instalado."
fi

# Mostrar menu de versões do Node
echo "📋 Escolha a versão do Node.js para instalar:"
echo "1) Node.js LTS (Recomendado)"
echo "2) Node.js Mais recente"
echo "3) Node.js 20.x"
echo "4) Node.js 18.x"
echo "5) Node.js 16.x"
echo "6) Node.js 14.x"
echo "7) Especificar outra versão"

read -p "Digite sua escolha (1-7): " node_choice

case $node_choice in
    1)
        echo "🔄 Instalando Node.js LTS..."
        fnm install --lts
        fnm default $(fnm list | grep 'lts' | head -n1 | awk '{print $2}')
        ;;
    2)
        echo "🔄 Instalando Node.js mais recente..."
        fnm install latest
        fnm default latest
        ;;
    3)
        echo "🔄 Instalando Node.js 20.x..."
        fnm install 20
        fnm default 20
        ;;
    4)
        echo "🔄 Instalando Node.js 18.x..."
        fnm install 18
        fnm default 18
        ;;
    5)
        echo "🔄 Instalando Node.js 16.x..."
        fnm install 16
        fnm default 16
        ;;
    6)
        echo "🔄 Instalando Node.js 14.x..."
        fnm install 14
        fnm default 14
        ;;
    7)
        read -p "Digite a versão específica do Node.js (ex: 12.22.12): " custom_version
        echo "🔄 Instalando Node.js $custom_version..."
        fnm install $custom_version
        fnm default $custom_version
        ;;
    *)
        echo "⚠️ Opção inválida. Instalando Node.js LTS por padrão..."
        fnm install --lts
        fnm default $(fnm list | grep 'lts' | head -n1 | awk '{print $2}')
        ;;
esac

# Verificar a instalação
NODE_VERSION=$(node -v)
echo "✅ Node.js $NODE_VERSION instalado com sucesso!"

# Instalar pacotes globais úteis
echo "📦 Instalando pacotes globais úteis..."
npm install -g npm@latest
npm install -g yarn
npm install -g pnpm
npm install -g typescript
npm install -g ts-node

echo "🔧 Configurando npm para salvar pacotes exatos..."
npm config set save-exact true

echo "✅ Configuração do Node.js concluída!"
