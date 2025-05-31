#!/bin/bash

echo "🔐 Configurando Git..."
git config --global user.name "Seu Nome"
git config --global user.email "seu@email.com"

echo "🔑 Gerando chave SSH (caso não exista)..."
SSH_KEY="$HOME/.ssh/id_ed25519"
if [ ! -f "$SSH_KEY" ]; then
  ssh-keygen -t ed25519 -C "seu@email.com" -f "$SSH_KEY" -N ""
  echo "✅ Chave SSH criada em $SSH_KEY"
else
  echo "⚠️ Chave SSH já existe. Pulando geração."
fi
