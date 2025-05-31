#!/bin/bash

echo "☁️ Configurando ferramentas AWS..."

# Configurar AWS CLI
if ! command -v aws >/dev/null 2>&1; then
  echo "⚠️ AWS CLI não encontrado. Instalando via Homebrew..."
  brew install awscli
fi

# Configurar AWS CDK
if ! command -v cdk >/dev/null 2>&1; then
  echo "⚠️ AWS CDK não encontrado. Instalando via Homebrew..."
  brew install aws-cdk
fi

# Configurar AWS SAM CLI
if ! command -v sam >/dev/null 2>&1; then
  echo "⚠️ AWS SAM CLI não encontrado. Instalando via Homebrew..."
  brew install aws-sam-cli
fi

# Configurar AWS Amplify CLI
if ! command -v amplify >/dev/null 2>&1; then
  echo "⚠️ AWS Amplify CLI não encontrado. Instalando via npm..."
  npm install -g @aws-amplify/cli
  echo "✅ AWS Amplify CLI instalado via npm"
fi

echo "🔐 Configurando perfil AWS padrão..."
read -p "Deseja configurar o AWS CLI agora? (s/n): " configure_aws
if [ "$configure_aws" = "s" ]; then
  aws configure
  echo "✅ AWS CLI configurado com sucesso!"
else
  echo "⏭️ Configuração do AWS CLI pulada. Execute 'aws configure' manualmente quando necessário."
fi

echo "✅ Configuração das ferramentas AWS concluída!"
