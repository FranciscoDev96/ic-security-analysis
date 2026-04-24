#!/bin/bash

set -e

if [ -z "$1" ]; then
    echo "Erro: Informe a URL do repositório"
    echo "Uso: ./run_semgrep.sh <repo_url>"
    exit 1
fi

REPO_URL=$1

echo "Clonando repositório..."
git clone "${REPO_URL}" repo

cd repo

echo "Rodando Semgrep..."
semgrep scan --config=auto --json --output /workspace/result.json

echo "Análise finalizada!"