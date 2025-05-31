# 🔧 Solução de Problemas

## Problemas Comuns e Soluções

### 1. Homebrew não instala pacotes

**Sintoma**: Erro durante `brew install` ou `brew bundle`

**Solução**:
```bash
# Verificar permissões
sudo chown -R $(whoami) /opt/homebrew
# Atualizar Homebrew
brew update
# Tentar novamente
brew doctor
```

### 2. Fish Shell não está configurado corretamente

**Sintoma**: Prompt não aparece como esperado ou aliases não funcionam

**Solução**:
```bash
# Verificar se Fish é o shell padrão
echo $SHELL
# Se não for /opt/homebrew/bin/fish, execute:
chsh -s /opt/homebrew/bin/fish
# Verificar se config.fish está carregando
cat ~/.config/fish/config.fish
```

### 3. NVM não funciona no Fish

**Sintoma**: Comando `nvm` não encontrado

**Solução**:
```bash
# Instalar plugin nvm.fish
fisher install jorgebucaran/nvm.fish
# Verificar variável NVM_DIR
set -x NVM_DIR $HOME/.nvm
# Reiniciar terminal
```

### 4. Starship não mostra ícones corretamente

**Sintoma**: Caracteres estranhos no lugar de ícones

**Solução**:
```bash
# Instalar fonte Nerd Font
brew tap homebrew/cask-fonts
brew install --cask font-meslo-lg-nerd-font
# Configurar terminal para usar a fonte
# iTerm2: Preferences > Profiles > Text > Font
```

### 5. VS Code não reconhece extensões

**Sintoma**: Extensões instaladas mas não funcionando

**Solução**:
```bash
# Reinstalar extensões manualmente
code --list-extensions
code --install-extension extensao-com-problema
# Verificar configurações
cat ~/Library/Application\ Support/Code/User/settings.json
```

### 6. Docker não inicia

**Sintoma**: Erro ao iniciar Docker Desktop

**Solução**:
```bash
# Reiniciar o daemon
killall Docker && open /Applications/Docker.app
# Se persistir, reinstalar
brew uninstall --cask docker
brew install --cask docker
```

### 7. Ferramentas AWS não funcionam corretamente

**Sintoma**: Erros ao executar comandos AWS CLI, CDK ou SAM

**Solução**:
```bash
# Verificar instalação da AWS CLI
aws --version
# Reinstalar AWS CLI
pip install --upgrade awscli

# Verificar instalação do CDK
cdk --version
# Reinstalar CDK
npm uninstall -g aws-cdk
npm install -g aws-cdk

# Verificar instalação do SAM CLI
sam --version
# Reinstalar SAM CLI
brew uninstall aws-sam-cli
brew install aws-sam-cli
```

### 8. Problemas com o script de backup

**Sintoma**: Erro ao executar `backup.sh`

**Solução**:
```bash
# Verificar permissões
chmod +x scripts/backup.sh
# Verificar se diretório
```

## Logs e Diagnóstico

Para diagnóstico avançado, verifique:

1. Logs do Homebrew: `brew doctor`
2. Logs do Fish: `fish --debug-stack-frames -c "comando_com_problema"`
3. Logs do sistema: `Console.app` > "System Reports"
