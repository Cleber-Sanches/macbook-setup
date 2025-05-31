#!/bin/bash

echo "🔐 Configurando Git..."

# Solicitar nome e email do usuário
read -p "Digite seu nome para o Git: " git_user_name
read -p "Digite seu email para o Git: " git_user_email

# Configurar Git com os valores fornecidos
git config --global user.name "$git_user_name"
git config --global user.email "$git_user_email"

echo "✅ Git configurado com nome: $git_user_name e email: $git_user_email"

echo "🔑 Gerando chave SSH (caso não exista)..."
SSH_KEY="$HOME/.ssh/id_ed25519"
if [ ! -f "$SSH_KEY" ]; then
  ssh-keygen -t ed25519 -C "$git_user_email" -f "$SSH_KEY" -N ""
  echo "✅ Chave SSH criada em $SSH_KEY"
else
  echo "⚠️ Chave SSH já existe. Pulando geração."
fi
