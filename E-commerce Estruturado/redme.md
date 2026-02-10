# Projeto E-commerce Database

Este projeto apresenta a modelagem lógica de um banco de dados para um cenário de e-commerce, contemplando clientes PF e PJ, pedidos, pagamentos múltiplos, entregas com rastreio, produtos, fornecedores e estoque. O projeto inclui scripts SQL de criação do esquema, persistência de dados e consultas simples e avançadas utilizando SELECT, WHERE, ORDER BY, HAVING e JOIN.

## Estrutura do Projeto

- **schema.sql**: Script DDL para criação do banco de dados e tabelas.
- **inserts.sql**: Script DML para inserção de dados de teste.
- **queries.sql**: Queries SQL para responder às perguntas do desafio.

## Descrição do Modelo Lógico

O modelo lógico foi mapeado a partir do conceitual considerando as seguintes regras de negócio refinadas:

### Clientes (Herança)
- **Cliente**: Tabela pai com dados comuns (ID, Nome, Email).
- **Cliente PF**: Tabela filha com CPF, relacionamento 1:1 com Cliente.
- **Cliente PJ**: Tabela filha com CNPJ, relacionamento 1:1 com Cliente.
*Regra*: Um cliente é cadastrado na tabela `cliente` e sua especialização em `cliente_pf` ou `cliente_pj`.

### Pedidos e Pagamentos
- Um **Pedido** pertence a um Cliente.
- Um Pedido pode ter múltiplas formas de **Pagamento** (Relacionamento 1:N).

### Entrega
- Cada Pedido possui informações de **Entrega** com status e código de rastreio.

### Produtos e Estoque
- **Produto**: Cadastro de produtos.
- **Estoque**: Relacionamento 1:1 com Produto para controlar quantidade.
- **Fornecedor**: Fornecedores de produtos.
- **Produto_Fornecedor**: Relacionamento N:N, pois um produto pode ter vários fornecedores e vice-versa.

## Como Executar
1. Execute o script `schema.sql` para criar o banco `ecommerce`.
2. Execute o script `inserts.sql` para popular as tabelas.
3. Execute o script `queries.sql` para testar as consultas.

