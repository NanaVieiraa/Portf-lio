#!/bin/bash

# Verifica o branch atual
BRANCH=$(git rev-parse --abbrev-ref HEAD)

echo "🔄 Atualizando o projeto no branch: $BRANCH"

# Puxar mudanças remotas
git pull origin $BRANCH

# Adicionar mudanças locais
git add .

# Commit com mensagem automática com data
git commit -m "Atualização automática em $(date '+%Y-%m-%d %H:%M:%S')"

# Enviar mudanças
git push origin $BRANCH

echo "✅ Projeto atualizado com sucesso!"

