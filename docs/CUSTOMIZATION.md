# 🎨 Guia de Personalização

## Instalação Personalizada

O script `install.sh` agora oferece um menu interativo que permite escolher quais componentes instalar:

```bash
./scripts/install.sh
```

Opções disponíveis:
1. Homebrew e pacotes básicos
2. Fish Shell e configurações de terminal
3. Node.js, NVM e ferramentas JavaScript
4. Git e configurações
5. Ferramentas AWS (AWS CLI, CDK, SAM, Amplify)
6. Backup das configurações atuais

## Starship Prompt

O arquivo `config/starship.toml` contém a configuração do prompt. Você pode:

1. Modificar o formato do prompt:
   ```toml
   format = """
   # Seu formato personalizado aqui
   """
   ```

2. Alterar cores e ícones:
   ```toml
   [git_branch]
   symbol = "🌿 "
   style = "bold purple"
   ```

3. Adicionar novos módulos personalizados:
   ```toml
   [custom.exemplo]
   command = "echo Olá"
   when = "true"
   format = "[$output]($style) "
   ```

## Fish Shell

Para personalizar o Fish Shell além do arquivo `config.fish`:

1. Funções personalizadas:
   ```fish
   # Salve em ~/.config/fish/functions/nome-da-funcao.fish
   function nome-da-funcao
       # Seu código aqui
   end
   ```

2. Completions personalizados:
   ```fish
   # Salve em ~/.config/fish/completions/app.fish
   complete -c app -a "comando1 comando2" -d "Descrição"
   ```

## iTerm2

1. Perfis de cores:
   - Importe temas como Dracula, Nord, Solarized
   - Caminho: Preferences > Profiles > Colors > Color Presets

2. Configurações de fonte:
   - Use fontes Nerd Font para ícones
   - Tamanho recomendado: 14pt
   - Caminho: Preferences > Profiles > Text

## VS Code

1. Temas e ícones:
   ```json
   // settings.json
   {
     "workbench.colorTheme": "GitHub Dark",
     "workbench.iconTheme": "material-icon-theme"
   }
   ```

2. Configurações de editor:
   ```json
   // settings.json
   {
     "editor.fontFamily": "MesloLGS NF, Menlo, Monaco, monospace",
     "editor.fontSize": 14,
     "editor.lineHeight": 24,
     "editor.formatOnSave": true
   }
   ```

## Ferramentas AWS

1. Perfis AWS:
   ```
   # ~/.aws/config
   [profile dev]
   region = us-east-1
   
   [profile prod]
   region = us-east-1
   role_arn = arn:aws:iam::123456789012:role/ProductionRole
   source_profile = default
   ```

2. Configurações do AWS CDK:
   ```json
   // cdk.json
   {
     "app": "npx ts-node --prefer-ts-exts bin/app.ts",
     "context": {
       "@aws-cdk/core:enableStackNameDuplicates": "true",
       "aws-cdk:enableDiffNoFail": "true",
       "@aws-cdk/core:stackRelativeExports": "true"
     }
   }
   ```

## Atualizações Automáticas

1. Configurar frequência das atualizações:
   ```bash
   # Editar crontab manualmente
   crontab -e
   
   # Exemplo: executar às 10:00 de segunda a sexta
   0 10 * * 1-5 /caminho/para/scripts/update.sh
   ```

2. Personalizar quais ferramentas são atualizadas:
   Edite o arquivo `scripts/update.sh` e comente/descomente as seções relevantes.
