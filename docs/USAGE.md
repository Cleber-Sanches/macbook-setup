# 📚 Guia Detalhado de Uso - MacBook Setup

Este guia explica como usar todas as ferramentas e configurações instaladas pelo setup.

## 🐟 Fish Shell e Aliases

### Aliases Git
| Comando | Descrição |
|---------|-----------|
| `gs` | Mostra o status do repositório git |
| `ga` | Adiciona todas as mudanças ao staging |
| `gc 'mensagem'` | Faz commit com a mensagem especificada |
| `gp` | Faz push para o repositório remoto |
| `gl` | Mostra log do git em formato gráfico |

### Aliases Desenvolvimento
| Comando | Descrição |
|---------|-----------|
| `yi` | Executa `yarn install` |
| `yd` | Executa `yarn dev` |
| `ns` | Executa `npm start` |
| `ni` | Executa `npm install` |

### Navegação Inteligente (Zoxide)
- Use `z pasta` em vez de `cd pasta` para navegação com aprendizado
- Zoxide lembra seus diretórios mais usados
- Exemplo: `z proj` pode levar você a `/Users/seu-usuario/Projetos/meu-projeto`

## 🔧 Ferramentas CLI

### FZF (Fuzzy Finder)
- `Ctrl+R`: Busca interativa no histórico de comandos
- `Ctrl+T`: Busca interativa de arquivos
- `Alt+C`: Navegação interativa entre diretórios

### Ripgrep (rg)
- Busca rápida de texto: `rg "termo de busca" ./pasta`
- Busca com contexto: `rg -C 3 "termo" ./pasta` (mostra 3 linhas antes e depois)

### Bat
- Visualização de arquivos com syntax highlighting: `bat arquivo.js`
- Comparar com cat: `bat` é como `cat` com cores e números de linha

### HTTPie
- Fazer requisições HTTP: `http GET api.exemplo.com/usuarios`
- POST com JSON: `http POST api.exemplo.com/usuarios nome=João idade=30`

## ☁️ AWS CLI e Ferramentas Cloud

### AWS CLI
- Listar buckets S3: `aws s3 ls`
- Trocar de perfil: `aws-profile nome-do-perfil`

### AWS CDK
- Inicializar projeto: `cdk init app --language typescript`
- Sintetizar CloudFormation: `cdk synth`
- Implantar: `cdk deploy`

### AWS SAM CLI
- Inicializar projeto: `sam init`
- Construir aplicação: `sam build`
- Implantar: `sam deploy --guided`

### AWS Amplify
- Inicializar projeto: `amplify init`
- Adicionar API: `amplify add api`
- Implantar: `amplify push`

### Terraform
- Inicializar: `tf init`
- Planejar mudanças: `tf plan`
- Aplicar mudanças: `tf apply`

## 🖥️ VS Code

### Atalhos Úteis
- `Cmd+P`: Navegação rápida entre arquivos
- `Cmd+Shift+P`: Paleta de comandos
- `Cmd+B`: Mostrar/esconder sidebar
- `Cmd+Shift+E`: Explorador de arquivos
- `Cmd+Shift+F`: Busca global

### Extensões Instaladas
- Prettier: Formatação automática de código
- ESLint: Análise estática de código
- GitLens: Visualização avançada de histórico git
- Live Share: Colaboração em tempo real

## 🔄 Manutenção do Sistema

### Backup das Configurações
- Fazer backup manual: `./scripts/backup.sh`
- Os backups são armazenados em `~/.macbook-setup-backup/` com timestamp
- Cada backup inclui dotfiles, extensões VS Code e Brewfile

### Atualização de Ferramentas
- Atualizar manualmente: `./scripts/update.sh`
- Verificar status das atualizações automáticas: `crontab -l | grep update.sh`
- Desativar atualizações automáticas: `crontab -l | grep -v update.sh | crontab -`

### Limpeza do Sistema
- Limpar cache DNS: `flushdns`
- Limpar cache Homebrew: `brew cleanup`
