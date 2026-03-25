#!/bin/bash

# Detecta o branch atual
BRANCH=$(git rev-parse --abbrev-ref HEAD)

echo "🔄 Atualizando o branch atual: $BRANCH"

# Puxa atualizações do repositório remoto
git pull origin "$BRANCH"

# Adiciona todas as alterações locais
git add .

# Cria um commit com a data/hora
git commit -m "Atualização automática em $(date '+%Y-%m-%d %H:%M:%S')"

# Envia para o GitHub
git push origin "$BRANCH"

echo "✅ Projeto atualizado com sucesso!"

