fnm env | source
# ~/.config/fish/config.fish
# Configuração otimizada para desenvolvimento

# ===== CONFIGURAÇÕES BÁSICAS =====
set -gx fish_greeting ""  # Remove a mensagem de boas-vindas
set -gx fish_history main  # Histórico compartilhado entre sessões

# ===== PATH E VARIÁVEIS DE AMBIENTE =====
# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Caminhos adicionais
fish_add_path /opt/homebrew/bin
fish_add_path $HOME/.pyenv/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.local/bin

# Variáveis de ambiente
set -gx PYENV_ROOT $HOME/.pyenv
set -gx EDITOR code
set -gx VISUAL code
set -gx LANG "pt_BR.UTF-8"
set -gx LC_ALL "pt_BR.UTF-8"

# ===== INICIALIZAÇÃO DE FERRAMENTAS =====
# Starship prompt
starship init fish | source

# Zoxide para navegação inteligente
zoxide init fish | source
alias cd='z'  # Substitui cd pelo z do zoxide


# ===== ALIASES =====
# Git
alias gs='git status'                                # Status do Git
alias ga='git add .'                                 # Adiciona todas as mudanças
alias gc='git commit -m'                             # Commita com mensagem
alias gp='git push'                                  # Envia para o repositório remoto
alias gl='git log --oneline --graph --all --decorate' # Log gráfico
alias gco='git checkout'                             # Checkout
alias gb='git branch'                                # Branch
alias gpl='git pull'                                 # Pull
alias gr='git remote -v'                             # Remote
alias gd='git diff'                                  # Diff
alias grb='git rebase'                               # Rebase

# Navegação
alias ..='cd ..'                                     # Volta um diretório
alias ...='cd ../..'                                 # Volta dois diretórios
alias ....='cd ../../..'                             # Volta três diretórios
alias ls='ls -G'                                     # Colorido
alias ll='ls -lah'                                   # Listagem detalhada
alias la='ls -A'                                     # Mostra arquivos ocultos

# NPM
alias ns='npm start'                                 # Inicia o projeto com NPM
alias ni='npm install'                               # Instala dependências do NPM
alias nr='npm run'                                   # Executa script NPM
alias nd='npm run dev'                               # Inicia o servidor de desenvolvimento
alias nb='npm run build'                             # Build do projeto
alias nt='npm test'                                  # Testes

# Docker
alias dps='docker ps'                                # Lista containers
alias dpsa='docker ps -a'                            # Lista todos os containers
alias dim='docker images'                            # Lista imagens
alias dcp='docker-compose up'                        # Inicia docker-compose
alias dcpd='docker-compose up -d'                    # Inicia docker-compose em background
alias dcd='docker-compose down'                      # Para docker-compose

# AWS
alias aws-profile='export AWS_PROFILE='              # Define perfil AWS
alias aws-regions='aws ec2 describe-regions --output table' # Lista regiões AWS

# Terraform
alias tf='terraform'                                 # Terraform
alias tfi='terraform init'                           # Terraform init
alias tfp='terraform plan'                           # Terraform plan
alias tfa='terraform apply'                          # Terraform apply

# Sistema
alias flushdns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder' # Limpa o cache DNS
alias ip='curl -s https://ipinfo.io/ip'              # Mostra IP público
alias localip='ipconfig getifaddr en0'               # Mostra IP local
alias cleanup='find . -type f -name "*.DS_Store" -delete' # Remove arquivos .DS_Store

# Editor
alias code='code .'                                  # Abre o VSCode no diretório atual

# ===== FUNÇÕES ÚTEIS =====
# Cria um diretório e entra nele
function mkcd
    mkdir -p $argv && cd $argv
end

# Extrai arquivos compactados automaticamente
function extract
    switch $argv[1]
        case '*.tar.bz2'
            tar xjf $argv[1]
        case '*.tar.gz'
            tar xzf $argv[1]
        case '*.bz2'
            bunzip2 $argv[1]
        case '*.rar'
            unrar x $argv[1]
        case '*.gz'
            gunzip $argv[1]
        case '*.tar'
            tar xf $argv[1]
        case '*.tbz2'
            tar xjf $argv[1]
        case '*.tgz'
            tar xzf $argv[1]
        case '*.zip'
            unzip $argv[1]
        case '*.Z'
            uncompress $argv[1]
        case '*'
            echo "'$argv[1]' não pode ser extraído"
    end
end

# Busca em arquivos
function ff
    find . -type f -name "*$argv*"
end

# Busca em conteúdo de arquivos
function fif
    grep -r "$argv" .
end

# ===== CONFIGURAÇÕES DE APARÊNCIA =====
# Cores para ls
set -gx LSCOLORS gxfxbEaEBxxEhEhBaDaCaD

# ===== HOOKS E EVENTOS =====
# Executar ao entrar em um diretório com package.json
function __check_node_project --on-variable PWD
    if test -f "./package.json"
        echo "📦 Projeto Node.js detectado"
        if test -f "./package-lock.json"
            echo "📦 Gerenciador: NPM"
        end
    end
end
