# 🍎 MacBook Setup - Desenvolvedor Backend
Guia completo para configurar automaticamente meu ambiente após formatação do MacBook Pro.

![GitHub stars](https://img.shields.io/github/stars/seu-usuario/macbook-setup?style=social)
![GitHub forks](https://img.shields.io/github/forks/seu-usuario/macbook-setup?style=social)
![GitHub issues](https://img.shields.io/github/issues/seu-usuario/macbook-setup)

## 💻 Especificações da Máquina

- MacBook Pro 14" (2024) - M4 Max, 48GB RAM, 1TB SSD
- Fish Shell com Starship
- Node.js + TypeScript + AWS CLI + Terraform
- CLI Tools modernas + VS Code + Docker

## 🚀 Início Rápido

```bash
git clone https://github.com/seu-usuario/macbook-setup.git && cd macbook-setup
chmod +x scripts/install.sh
./scripts/install.sh
```

## 📋 O Que Este Setup Faz

Este projeto automatiza a configuração completa de um ambiente de desenvolvimento para backend, incluindo:

1. **Instalação de Ferramentas**: Homebrew, Git, Node.js, Docker, AWS CLI, Terraform e muito mais
2. **Configuração do Terminal**: Fish Shell com Starship prompt, aliases úteis e plugins
3. **Aplicativos de Desenvolvimento**: VS Code, iTerm2, Insomnia, Docker Desktop
4. **Aplicativos de Produtividade**: Notion, Slack, Arc Browser, Raycast
5. **Dotfiles**: Configurações pré-otimizadas para Git, Fish, Starship e mais
6. **Backup Automático**: Preservação das configurações existentes antes da instalação
7. **Atualizações Automáticas**: Manutenção programada de todas as ferramentas

## ✅ Aplicativos e Ferramentas Instaladas

### Terminal & CLI
- **Shell**: Fish, Starship, Zoxide, Fzf
- **Git**: Lazygit, GitHub CLI
- **Editores**: VS Code
- **Utilitários**: Ripgrep, Bat, Jq, Httpie, Fd, Tree, Htop, Tldr

### Desenvolvimento
- **Node.js**: via NVM
- **Containers**: Docker, Docker Compose
- **Banco de Dados**: Beekeeper Studio
- **API**: Insomnia, Apidog

### Cloud & IaC
- **AWS**: AWS CLI, CDK, SAM CLI, Amplify
- **Terraform**: Terraform CLI

### Produtividade
- **Navegador**: Arc Browser
- **Notas**: Notion
- **Comunicação**: Slack, Spark
- **Utilitários**: Raycast, Swiftbar, Focus To-Do

## 🗂 Estrutura do Repositório

```
macbook-setup/
├── README.md                # Este arquivo
├── Brewfile                 # Pacotes e apps para Homebrew
├── dotfiles/                # Arquivos de configuração
│   ├── .gitconfig           # Configuração do Git
│   └── config.fish          # Configuração do Fish Shell
├── config/                  # Configurações adicionais
│   ├── starship.toml        # Configuração do prompt Starship
│   └── vscode-extensions.txt # Extensões do VS Code
├── docs/                    # Documentação detalhada
│   ├── USAGE.md             # Guia de uso das ferramentas
│   ├── CUSTOMIZATION.md     # Guia de personalização
│   └── TROUBLESHOOTING.md   # Solução de problemas
└── scripts/                 # Scripts de instalação
    ├── install.sh           # Script principal com menu interativo
    ├── setup-terminal.sh    # Configuração do terminal
    ├── setup-node.sh        # Configuração do Node.js
    ├── setup-git.sh         # Configuração do Git
    ├── setup-aws.sh         # Configuração das ferramentas AWS
    ├── backup.sh            # Backup das configurações existentes
    └── update.sh            # Atualização automática das ferramentas
```

## 📚 Documentação

Para informações mais detalhadas, consulte:

- [📘 Guia de Uso](docs/USAGE.md) - Como usar as ferramentas instaladas
- [🎨 Personalização](docs/CUSTOMIZATION.md) - Como personalizar seu ambiente
- [🔧 Solução de Problemas](docs/TROUBLESHOOTING.md) - Resolução de problemas comuns

## 🧼 Pós-Instalação

- Configurar Time Machine
- Remover GarageBand, iMovie
- Rodar AppCleaner
- Ativar modo energia otimizada e Spotlight

## 🔄 Backup e Restauração

Este projeto inclui funcionalidades completas de backup e restauração:

```bash
# Fazer backup das configurações atuais
./scripts/backup.sh

# Restaurar a partir de um backup anterior
./scripts/restore.sh
```

Você também pode acessar essas funções através do menu interativo:
```bash
./scripts/install.sh
# Selecione a opção 6 para backup ou 7 para restauração
```

Os backups são armazenados no diretório `backups/` do projeto, com timestamps para fácil identificação.

## 🔄 Manutenção e Atualização

Para manter seu ambiente atualizado:

```bash
# Atualização manual de todas as ferramentas
./scripts/update.sh

# Fazer backup das configurações atuais
./scripts/backup.sh

# Configurar atualizações automáticas semanais
./scripts/update.sh
# Responda "s" quando perguntado sobre configurar atualizações automáticas
```

## 🤝 Contribuindo

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests.

1. Fork este repositório
2. Crie sua branch de feature (`git checkout -b feature/nova-ferramenta`)
3. Commit suas mudanças (`git commit -m 'Adiciona nova ferramenta'`)
4. Push para a branch (`git push origin feature/nova-ferramenta`)
5. Abra um Pull Request

## 📝 Licença

Este projeto está licenciado sob a licença MIT - veja o arquivo [LICENSE](LICENSE) para detalhes.
