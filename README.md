IC Security Analysis

Este repositório faz parte do desenvolvimento de uma Iniciação Científica na área de cibersegurança.

O objetivo do projeto é executar múltiplas ferramentas de análise de código em aproximadamente 50 repositórios do GitHub e comparar os resultados obtidos.

Para isso, está sendo desenvolvido um pipeline automatizado para análise de segurança de código, utilizando diferentes abordagens:

SAST (Static Application Security Testing)
DAST (Dynamic Application Security Testing)
Ferramentas baseadas em Inteligência Artificial

Objetivo deste repositório

Este repositório tem como foco os testes iniciais e a construção do pipeline.

Ele serve para:

validar o funcionamento das ferramentas
testar o ambiente com Docker
documentar o processo de aprendizado e evolução

Os resultados finais e a análise científica serão organizados em um repositório separado.

Ferramentas utilizadas (até o momento)
Semgrep

Status atual
Pipeline inicial com Docker configurado
Execução de análise SAST com Semgrep
Integração com outras ferramentas em andamento

Como executar

Build da imagem
docker build -t ic-security-lab:v1 .

Executar análise
docker run -v $(pwd):/workspace ic-security-lab:v1 /scripts/run_semgrep.sh <repo_url>

Exemplo de saída

Um exemplo de resultado gerado pelo Semgrep pode ser encontrado na pasta:

examples/semgrep_example.json

Observações
Este repositório não contém o dataset final da pesquisa
Os resultados aqui são apenas exemplos de execução
O foco principal é a infraestrutura e automação do pipeline