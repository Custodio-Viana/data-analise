# Projeto Oficina Mecânica Database

Este projeto apresenta a modelagem lógica de um banco de dados para o contexto de uma oficina mecânica, incluindo ordens de serviço (OS), controle de veículos, clientes, serviços, peças e fornecedores. O projeto foi desenvolvido como parte de um desafio para praticar a transição de modelo ER para relacional e consultas SQL complexas.

## Estrutura do Projeto

- **schema.sql**: Script DDL para criação do banco de dados `oficina_mecanica` e suas tabelas.
- **inserts.sql**: Script DML para inserção de dados de teste para validação.
- **queries.sql**: Consultas SQL respondendo às perguntas do negócio.

## Contexto e Regras de Negócio

O sistema controla o fluxo de trabalho de uma oficina mecânica, onde clientes levam veículos para conserto ou revisão. As principais regras são:

- **Clientes**: Podem ser Pessoa Física (PF) ou Jurídica (PJ).
- **Veículos**: Pertencem a um cliente e podem ter várias OS.
- **Ordem de Serviço (OS)**: Contém data, status, valor, serviços executados e peças utilizadas.
- **Serviços e Peças**: Compõem o valor total da OS. Peças são controladas em estoque e vinculadas a fornecedores.
- **Pagamento**: Pode ser realizado de múltiplas formas para uma mesma OS.

## Modelagem Lógica

### Entidades Principais
- `cliente`, `cliente_pf`, `cliente_pj` (Especialização/Generalização)
- `veiculo`
- `ordem_servico`
- `servico`, `os_servico` (Relacionamento N:N)
- `peca`, `estoque`, `fornecedor`, `peca_fornecedor` (Relacionamento N:N)
- `pagamento`

## Perguntas Respondidas pelas Queries

As consultas no arquivo `queries.sql` respondem às seguintes questões de negócio:
1. Quantas ordens de serviço cada cliente realizou?
2. Quais ordens de serviço estão em andamento?
3. Qual o valor total pago por ordem de serviço?
4. Quais serviços foram realizados em cada OS?
5. Quais ordens de serviço ultrapassaram determinado valor (ex: 300)?
6. Qual a relação entre peças, fornecedores e estoque?

## Como Executar

1. Execute o script `schema.sql` para criar o banco de dados.
2. Execute o script `inserts.sql` para popular as tabelas.
3. Execute o script `queries.sql` para validar as consultas e respostas.
