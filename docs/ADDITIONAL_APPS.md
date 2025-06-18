# 📱 Aplicativos Adicionais

Este documento descreve a funcionalidade de instalação de aplicativos adicionais disponível no MacBook Setup.

## 🎯 Visão Geral

O MacBook Setup inclui um menu interativo para instalar aplicativos adicionais organizados por categorias. Esta funcionalidade permite que você personalize seu ambiente de desenvolvimento instalando apenas os aplicativos que realmente precisa.

## 🚀 Como Usar

### Acesso ao Menu

1. Execute o script principal:

   ```bash
   ./scripts/install.sh
   ```

2. Selecione a opção **6) 📱 Aplicativos Adicionais (escolha personalizada)**

3. Ou execute diretamente:
   ```bash
   ./scripts/setup-additional-apps.sh
   ```

### Navegação no Menu

O menu de aplicativos adicionais é organizado em categorias:

1. **💬 Comunicação e Social**
2. **🎵 Mídia e Entretenimento**
3. **🎨 Design e Criatividade**
4. **🎮 Jogos**
5. **🛠️ Ferramentas de Desenvolvimento**
6. **🔒 Segurança e Pentesting**
7. **🖥️ Virtualização**
8. **☁️ Cloud e DevOps**
9. **📊 Monitoramento e Observabilidade**
10. **🗄️ Bancos de Dados**
11. **📦 Todos os aplicativos**

### Seleção de Aplicativos

Para cada categoria, você pode:

- **Selecionar aplicativos individuais**: Digite os números separados por vírgula (ex: `1,3,5`)
- **Instalar todos da categoria**: Digite `todos`
- **Sair**: Digite `q`

## 📋 Aplicativos Disponíveis por Categoria

### 💬 Comunicação e Social

| Aplicativo      | Descrição                              | Tipo |
| --------------- | -------------------------------------- | ---- |
| Discord         | Comunicação e colaboração em equipe    | Cask |
| Telegram        | Mensageiro instantâneo                 | Cask |
| WhatsApp        | Mensageiro instantâneo                 | Cask |
| Slack           | Plataforma de comunicação para equipes | Cask |
| Microsoft Teams | Plataforma de colaboração              | Cask |
| Zoom            | Plataforma de videoconferência         | Cask |
| Skype           | Comunicação por voz e vídeo            | Cask |

### 🎵 Mídia e Entretenimento

| Aplicativo      | Descrição                        | Tipo |
| --------------- | -------------------------------- | ---- |
| Spotify         | Streaming de música              | Cask |
| VLC             | Reprodutor de mídia              | Cask |
| HandBrake       | Conversor de vídeo               | Cask |
| OBS Studio      | Software de gravação e streaming | Cask |
| Audacity        | Editor de áudio                  | Cask |
| DaVinci Resolve | Editor de vídeo profissional     | Cask |
| IINA            | Reprodutor de mídia moderno      | Cask |

### 🎨 Design e Criatividade

| Aplicativo         | Descrição                         | Tipo |
| ------------------ | --------------------------------- | ---- |
| GIMP               | Editor de imagens gratuito        | Cask |
| Inkscape           | Editor de gráficos vetoriais      | Cask |
| Blender            | Software 3D gratuito              | Cask |
| Krita              | Software de pintura digital       | Cask |
| Figma              | Ferramenta de design de interface | Cask |
| Sketch             | Design de interface (pago)        | Cask |
| Affinity Designer  | Design vetorial                   | Cask |
| Affinity Photo     | Editor de fotos                   | Cask |
| Affinity Publisher | Editoração                        | Cask |

### 🎮 Jogos

| Aplicativo          | Descrição           | Tipo |
| ------------------- | ------------------- | ---- |
| Steam               | Plataforma de jogos | Cask |
| Epic Games Launcher | Plataforma de jogos | Cask |
| Minecraft           | Jogo de construção  | Cask |
| Battle.net          | Plataforma Blizzard | Cask |
| Origin              | Plataforma EA       | Cask |
| Ubisoft Connect     | Plataforma Ubisoft  | Cask |

### 🛠️ Ferramentas de Desenvolvimento

| Aplicativo            | Descrição                        | Tipo    |
| --------------------- | -------------------------------- | ------- |
| Postman               | Cliente para testes de API       | Cask    |
| TablePlus             | Cliente de banco de dados        | Cask    |
| Sequel Pro            | Cliente MySQL                    | Cask    |
| MongoDB Compass       | Cliente MongoDB                  | Cask    |
| Redis Desktop Manager | Cliente Redis                    | Cask    |
| ngrok                 | Túnel para desenvolvimento local | Formula |
| Charles Proxy         | Proxy para debugging             | Cask    |
| Wireshark             | Analisador de protocolos de rede | Cask    |
| Burp Suite            | Ferramenta de segurança web      | Cask    |

### 🔒 Segurança e Pentesting

| Aplicativo      | Descrição                         | Tipo    |
| --------------- | --------------------------------- | ------- |
| Kali Linux      | Distribuição Linux para segurança | Cask    |
| Nmap            | Scanner de rede                   | Formula |
| Wireshark       | Analisador de protocolos de rede  | Cask    |
| Burp Suite      | Ferramenta de segurança web       | Cask    |
| Metasploit      | Framework de penetração           | Formula |
| John the Ripper | Quebrador de senhas               | Formula |
| Hashcat         | Quebrador de hashes               | Formula |

### 🖥️ Virtualização

| Aplicativo        | Descrição                     | Tipo    |
| ----------------- | ----------------------------- | ------- |
| VirtualBox        | Virtualização gratuita        | Cask    |
| Parallels Desktop | Virtualização para macOS      | Cask    |
| VMware Fusion     | Virtualização para macOS      | Cask    |
| Docker Desktop    | Plataforma de containerização | Cask    |
| Multipass         | VMs Ubuntu simples            | Formula |

### ☁️ Cloud e DevOps

| Aplicativo     | Descrição                              | Tipo    |
| -------------- | -------------------------------------- | ------- |
| Kubernetes CLI | CLI para Kubernetes                    | Formula |
| Minikube       | Kubernetes local                       | Formula |
| Kind           | Kubernetes em Docker                   | Formula |
| Helm           | Gerenciador de pacotes para Kubernetes | Formula |
| Istio          | Service mesh                           | Formula |
| Terraform      | Infraestrutura como código             | Formula |
| Ansible        | Automação de configuração              | Formula |
| Packer         | Criação de imagens                     | Formula |
| Vagrant        | Gerenciamento de ambientes virtuais    | Formula |

### 📊 Monitoramento e Observabilidade

| Aplicativo    | Descrição                          | Tipo    |
| ------------- | ---------------------------------- | ------- |
| Prometheus    | Monitoramento                      | Formula |
| Grafana       | Visualização de dados              | Formula |
| Jaeger        | Distributed tracing                | Formula |
| Elasticsearch | Motor de busca                     | Formula |
| Logstash      | Processamento de logs              | Formula |
| Kibana        | Visualização de dados              | Formula |
| InfluxDB      | Banco de dados de séries temporais | Formula |
| Telegraf      | Coletor de métricas                | Formula |

### 🗄️ Bancos de Dados

| Aplicativo | Descrição                  | Tipo    |
| ---------- | -------------------------- | ------- |
| Redis      | Banco de dados em memória  | Formula |
| PostgreSQL | Banco de dados relacional  | Formula |
| MySQL      | Banco de dados relacional  | Formula |
| MongoDB    | Banco de dados NoSQL       | Formula |
| Neo4j      | Banco de dados de grafos   | Formula |
| Cassandra  | Banco de dados distribuído | Formula |
| CouchDB    | Banco de dados NoSQL       | Formula |
| RethinkDB  | Banco de dados NoSQL       | Formula |
| SQLite     | Banco de dados leve        | Formula |

## ⚙️ Configuração Pós-Instalação

Alguns aplicativos podem precisar de configuração adicional após a instalação:

### Aplicativos de Virtualização

- **Docker Desktop**: Pode precisar de permissões de administrador
- **VirtualBox**: Pode precisar instalar extensões adicionais
- **Parallels/VMware**: Requer licença comercial

### Ferramentas de Segurança

- **Kali Linux**: Pode precisar de configuração de rede adicional
- **Burp Suite**: Requer licença para funcionalidades avançadas

### Bancos de Dados

- **MongoDB**: Pode precisar de configuração de serviço
- **PostgreSQL/MySQL**: Pode precisar de configuração de usuário e senha

## 🔧 Solução de Problemas

### Erro de Instalação

Se um aplicativo falhar na instalação:

1. Verifique se o Homebrew está atualizado:

   ```bash
   brew update
   ```

2. Tente instalar manualmente:

   ```bash
   brew install --cask nome-do-app
   # ou
   brew install nome-do-app
   ```

3. Verifique se há conflitos de dependências:
   ```bash
   brew doctor
   ```

### Aplicativo Não Encontrado

Se um aplicativo não estiver disponível no Homebrew:

1. Verifique se o nome está correto no script
2. Considere instalar manualmente do site oficial
3. Abra uma issue no repositório para adicionar o aplicativo

## 🎯 Dicas de Uso

### Instalação Seletiva

- Instale apenas os aplicativos que você realmente usa
- Você pode sempre voltar e instalar mais aplicativos depois
- Use a opção "todos" com cuidado - pode instalar muitos aplicativos

### Organização

- Os aplicativos são organizados por categoria para facilitar a escolha
- Cada categoria tem aplicativos relacionados
- Você pode instalar aplicativos de múltiplas categorias em uma sessão

### Manutenção

- Use `brew upgrade` para atualizar aplicativos instalados
- Use `brew cleanup` para limpar versões antigas
- Use `brew list` para ver todos os aplicativos instalados

## 🤝 Contribuindo

Para adicionar novos aplicativos:

1. Edite o arquivo `scripts/setup-additional-apps.sh`
2. Adicione o aplicativo na categoria apropriada
3. Use o formato: `"package-name|Nome do App|Descrição"`
4. Teste a instalação antes de fazer commit
5. Atualize esta documentação

## 📝 Notas

- Todos os aplicativos são instalados via Homebrew
- Aplicativos pagos podem requerer licenças adicionais
- Alguns aplicativos podem ter dependências específicas do sistema
- O script detecta automaticamente se deve usar `--cask` ou formula
