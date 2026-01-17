# Futuro Analista de Dados 📊
Quero documentar oque tenho aprendido no Bootcamp "Randstad - Análise de Dados".

Busco deixar documentado de forma mais clara possivel, tanto para uso pessoal (revisão), quanto quem desejar acompanhar essa trajetória

# Links úteis 😉
- [Markdown](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)
- [Datasets Públicos](https://github.com/awesomedata/awesome-public-datasets?tab=readme-ov-file)
- [Documentação Git Hub](https://docs.github.com/en/get-started
)


## Sumário

- [Git e GitHub](#Git-e-GitHub)
- [Dicionário dos Dados](#-dicionário-dos-dados)
  - [Analista de Dados](#-perfil-analista-de-dados)
  - [Cientista de Dados](#-perfil-cientista-de-dados)
  - [Engenheiro de Machine Learning](#-perfil-enheiro-de-machine-learning-ml-engineer)
- [Processo de Machine Learning](#-processo-de-machine-learning)
- [Tipos de Tarefas para Machine Learning](#-tipos-de-tarefas-para-machine-learning)
- [Visualização de Dados](#-visualização-de-dados)
- [Arquitetura de MLOps](#aquitetura-de-mlops)
- [Armazenar Dados](#armazenar-os-dados)
- [banco de Dados](#)


# Git e GitHub

## Git
Git é um **sistema de controlo de versões** que guarda o histórico de alterações de um projeto, permitindo trabalhar em equipa e recuperar versões anteriores.

### O que fazer com Git
- Inicializar um repositório
- Controlar alterações nos ficheiros
- Criar commits
- Trabalhar com branches

### Comandos principais do Git

| Comando | Descrição |
|-------|----------|
| `git init` | Inicia um repositório Git |
| `git clone URL` | Clona um repositório existente |
| `git status` | Mostra o estado dos ficheiros |
| `git add .` | Adiciona todas as alterações |
| `git commit -m "mensagem"` | Guarda as alterações |
| `git branch` | Lista branches |
| `git checkout -b nome` | Cria e muda de branch |
| `git merge nome` | Junta branches |
| `git pull` | Atualiza o repositório local |

---

## GitHub

GitHub é uma **plataforma online** para alojar repositórios Git e facilitar colaboração e partilha de código.

### O que fazer com GitHub
- Guardar código na nuvem
- Trabalhar em equipa
- Gerir issues e pull requests
- Publicar projetos

### Comandos para usar com GitHub

| Comando | Descrição |
|-------|----------|
| `git remote add origin URL` | Liga o repositório local ao GitHub |
| `git push -u origin main` | Envia o código para o GitHub |
| `git push` | Envia alterações |
| `git pull` | Recebe alterações do GitHub |
| `git fetch` | Busca atualizações sem aplicar |



# 📘 Dicionário dos Dados


## 📂 Banco de Dados & SQL

| Termo          | Definição                    |
| -------------- | ---------------------------- |
| Banco de Dados | Armazenamento de dados       |
| SQL            | Linguagem de consulta        |
| Query          | Consulta ao banco            |
| Tabela         | Linhas e colunas             |
| Primary Key    | Identificador único          |
| Foreign Key    | Relacionamento               |
| Index          | Otimiza consultas            |
| Join           | Combina tabelas              |
| CRUD           | Create, Read, Update, Delete |
| NoSQL          | Bancos não relacionais       |

## 👀 Visualização de Dados

| Termo          | Definição               |
| -------------- | ----------------------- |
| Dashboard      | Painel de indicadores   |
| Gráfico        | Representação visual    |
| Storytelling   | Comunicação com dados   |
| KPI            | Indicador-chave         |
| Heatmap        | Mapa de calor           |
| Série Temporal | Dados ao longo do tempo |
| Insight        | Descoberta relevante    |

## 💻 Programação & Tecnologia

| Termo         | Definição                  |
| ------------- | -------------------------- |
| Python        | Linguagem popular em dados |
| R             | Linguagem estatística      |
| API           | Comunicação entre sistemas |
| JSON          | Formato de dados           |
| ETL           | Extract, Transform, Load   |
| ELT           | Extract, Load, Transform   |
| Versionamento | Controle de versões        |
| Git           | Versionamento              |
| GitHub        | Repositórios               |
| Automação     | Execução automática        |

---

## 👨‍💼 Perfil: Analista de Dados

**Foco:** Análise exploratória, métricas, visualização e suporte à tomada de decisão.

### Conceitos Essenciais

| Termo | Definição |
|------|----------|
| Análise de Dados | Exploração e interpretação de dados |
| Análise Descritiva  | Resume o que aconteceu         |
| Análise Diagnóstica | Explica por que aconteceu      |
| Análise Preditiva   | Estima o que pode acontecer    |
| Análise Prescritiva | Recomenda ações                |
| EDA (Exploratory Data Analysis) | Compreensão inicial dos dados |
| KPI (Key Performance Indicator) | Métrica de desempenho |
| Métrica | Medida quantitativa |
| Dimensão | Perspectiva de análise |
| Insight | Descoberta relevante |
| Outlier | Valor fora do padrão |
| Agregação | Soma, média, contagem, etc |
| Série Temporal | Dados ao longo do tempo |
| Causalidade         | Relação causa–efeito           |
| Normalização        | Ajuste de escala               |

---

### Ferramentas e Tecnologias

| Termo | Definição |
|------|----------|
| SQL | Consultas e agregações em bases de dados |
| Python | Análise e automação |
| Excel / Google Sheets | Análise tabular |
| Power BI / Tableau | Visualização e dashboards |
| Dashboard | Painel de indicadores |
| Git / GitHub | Versionamento de código |

---

### Estatística Aplicada

| Termo | Definição |
|------|----------|
| Média                  | Valor médio                  |
| Mediana                | Valor central                |
| Moda                   | Valor mais frequente         |
| Variância              | Dispersão dos dados          |
| Desvio Padrão          | Medida de variabilidade      |
| Distribuição           | Forma dos dados              |
| Probabilidade          | Chance de evento             |
| Intervalo de Confiança | Faixa provável do valor real |
| Teste de Hipótese      | Validação estatística        |
| p-value                | Grau de significância        |

---

## 👩‍🔬 Perfil: Cientista de Dados

**Foco:** Modelagem, estatística, Machine Learning e experimentação.

### Fundamentos de Ciência de Dados

| Termo | Definição |
|------|----------|
| Data Science | Extração de valor a partir dos dados |
| Feature Engineering | Criação de novas variáveis |
| Modelagem | Representação matemática do problema |
| Pipeline | Fluxo automatizado de etapas |
| Experimentation | Testes controlados |
| Baseline Model | Modelo simples de referência |
| Treinamento         | Ajuste do modelo            |
| Validação           | Teste com novos dados       |
| Overfitting         | Modelo decorou os dados     |
| Underfitting        | Modelo simples demais       |


---

### Machine Learning

| Termo | Definição |
|------|----------|
| Machine Learning | Algoritmos que aprendem com dados |
| Supervised Learning | Dados rotulados |
| Unsupervised Learning | Dados sem rótulos |
| Classification | Previsão de classes |
| Regression | Previsão de valores numéricos |
| Clustering | Agrupamento de dados |
| Overfitting | Modelo decorou os dados |
| Underfitting | Modelo simples demais |

---

### Estatística e Avaliação de Modelos

| Termo | Definição |
|------|----------|
| Hypothesis Testing | Testes estatísticos |
| Confidence Interval | Intervalo de confiança |
| Cross-validation | Validação cruzada |
| Bias | Viés do modelo |
| Explainability | Capacidade de explicar o modelo |

---

## 🤖 Perfil: Enheiro de Machine Learning (ML Engineer)

**Foco:** Produção, escalabilidade, arquitetura e performance de modelos.

### Engenharia de Machine Learning

| Termo | Definição |
|------|----------|
| ML Pipeline | Fluxo de treino e deploy |
| Model Training | Treinamento em escala |
| Model Serving | Disponibilização do modelo |
| Feature Store | Repositório de features |
| Model Monitoring | Monitorização do modelo |
| Drift | Mudança no padrão dos dados |
| KNN                | Baseado em vizinhos           |
| Árvore de Decisão  | Modelo por regras             |
| Random Forest      | Conjunto de árvores           |
| Gradient Boosting  | Modelos sequenciais           |

---

### Big Data e Processamento

| Termo | Definição |
|------|----------|
| Big Data | Grandes volumes de dados |
| Spark | Processamento distribuído |
| Hadoop | Framework distribuído |
| Data Lake | Armazenamento de dados brutos |
| Data Warehouse | Dados estruturados para análise |

---

### Cloud, DevOps e Produção

| Termo | Definição |
|------|----------|
| Cloud Computing | Infraestrutura sob demanda |
| AWS / Azure / GCP | Plataformas de cloud |
| Docker | Containers |
| Kubernetes | Orquestração de containers |
| CI/CD | Deploy automatizado |
| Escalabilidade | Capacidade de crescimento |
| Alta Disponibilidade | Sistema resiliente |

---

### Governança, Ética e Segurança

| Termo | Definição |
|------|----------|
| Governança de Dados | Gestão e controlo dos dados |
| GDPR / LGPD | Leis de proteção de dados |
| Segurança da Informação | Proteção contra falhas |
| Explainability | Transparência do modelo |

---

# ⚙ Processo de Machine Learning


## Definir o Problema


## Obter os Dados


## Preparação dos Dados


## Treinar Modelo


## Integrar Modelo


## Monitorar Modelo



# 🤖 Tipos de Tarefas para Machine Learning

## Classificação: Por grupos
  
## Regressão: Liniar ou Não Linear

## Previsão de Série Temporal: Expecifico para Datas

## Pesquisa Visual Computacional: Expecifico para Imagens

## NPL (Processo de Linguagem Natural): Expecifico para Textos


# 🔍 Identificar a Fonte dos Dados e Formato
Um exemplo de uma identificação e estruturação de dados: 
  - Um dispositivo que fornece dados quanto a temperatura de uma máquina. Podese pegar os horários e datas que há variação na temperatura para entender se o dispositivo sofrido com essas alteração com anos de uso e se isso pode impactar em um problema futuro, prevendo uma manutenção preventiva antecipada.

## Identificar a Fonte de Dados: 
  - Identifica como o dado aparece (dados coletados).
  - dispositvo, maquina, horario, data, temperatura.

|DADOS|
|------|
| {"dispositivo":01,"maquina":MQ01, "time"0"2025-12-01T11:00","temperatura":20.4} |
| {"dispositivo":01,"maquina":MQ01, "time"0"2025-12-01T11:30","temperatura":35} |
| {"dispositivo":01,"maquina":MQ01, "time"0"2025-12-01T12:00","temperatura":20.2} |

## Identificar o Formato de Dados Atual: 
  - Estruturação dos dados (linhas e colunas)

| DISPOSITIVO | MÁQUINA | DATA | HORÁRIO | TEMPERATURA |
|------|----------|----------|----------|----------|
|01 | MQ01 | 01-12-25 | 11:00 | 20.4 |
|01 | MQ01 | 01-12-25 | 11:30 | 35 |
|01 | MQ01 | 01-12-25 | 12:00 | 20.2 |


## Identificar o Formato de Dados Desejado: 
  - Filtro de dados que se deseja obter (não necessariamento precisa de todos os dados que um dispositivo fornece por exemplo)

| DATA | HORÁRIO | TEMPERATURA |
|------|----------|----------|
| 01-12-25 | 11:00 | 20.4 |
| 01-12-25 | 11:30 | 35 |
| 01-12-25 | 12:00 | 20.2 |


# Criar solução de Ingestão de Dados
Forma de obter, estruturar e automatizar a formas de obter informações de forma a deixa disponível para se usar em Machine Learning

## Extrair Dados Brutos: 
  - Sistema CRM ou IoT (Telemetria)

## Copiar e Transformar os Dados: 
  - Criar um pipeline para obter e tratar os dados (Azure Synapse Analytics, Azure Databricks)

## Armazenar os Dados:
  - Os dados preparados são armazenaods em um Armazenamento de Blobs do Azure

## Treinar modelo com Azure Machine Learning:
  - Com base nos dados obtidos, tratados e armazenados. Os dados são treinados.

# Aquitetura de MLOps

## Instalação:
  - Criar todos os recursos necessários para solução

## Desenvolvimento de Modelo:
  - Explorar e processar os dados para treinar e avaliar modelo (Loop Interno)
  - Processo de experimentação
  - Gerar modelo replicável

## Integração Continua:
  - Empacotar e registrar modelo
  - Deploy
  - End Point vai ser usado em tempo real ou lote

## Implatação de Modelo:
  - Implantar o modelos (Loop Externo)
  - Implementação do modelo direto na aplicação

## Implantação Conínua:
  - Testar o modelo e promovê-lo ao ambiente de produção

## Monitoramento: 
  - Monitorar o desempenho do modelo e do ponto de extremidade
  - Verificar parametros de acurácia


# 🗃Banco de Dados

## SGBD
Sistema de Gereciamento de Banco de Dados.

