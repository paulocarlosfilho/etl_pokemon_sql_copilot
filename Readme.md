# E-CARDS Project (SQL COPILOT DBEAVER) Projeto de Extração e Catalogação de Cartas Pokémon TCG

## 📌 Sobre o Projeto
Este projeto foi desenvolvido como parte da minha jornada de especialização em **Engenharia de Dados**.  
O objetivo foi criar um processo de **ETL (Extract, Transform, Load)** utilizando **SQL**, com apoio do **Microsoft Copilot** para otimizar a escrita de consultas e do **DBeaver** como ferramenta de gerenciamento de banco de dados. É uma solução completa para extrair informações de imagens de cartas de Pokémon TCG, processar esses dados e armazená-los em um banco de dados PostgreSQL estruturado. Ele utiliza uma combinação de prompts de IA (para a extração de dados a partir de imagens) e scripts SQL para a criação, população e gerenciamento do banco de dados.

## 🎯 Objetivos
- Construir um modelo relacional para representar coleções de cartas (Pokémon TCG).
- Criar scripts de **migrations** para definição das tabelas.
- Desenvolver **seeds** para popular o banco com dados iniciais.
- Implementar **views** para facilitar consultas otimizadas.
- Demonstrar boas práticas de organização de scripts SQL em um projeto real.

## Visão Geral do Projeto

O fluxo de trabalho principal consiste em:

1.  **Extração de Dados**: Utilizar um modelo de IA (potencialmente com a ajuda de um Copilot) e prompts específicos para analisar imagens de cartas de Pokémon.
2.  **Estruturação**: Os dados extraídos, como nome, HP, ataques e informações da coleção, são organizados.
3.  **Armazenamento**: Os dados estruturados são inseridos em um banco de dados PostgreSQL, seguindo um esquema relacional bem definido.

## 🛠️ Tecnologias Utilizadas
- **PostgreSQL** → Banco de dados relacional.
- **SQL** → Linguagem para criação de tabelas, seeds e views.
- **DBeaver** → Ferramenta de administração e execução dos scripts.
- **Microsoft Copilot** → Apoio na escrita e revisão das queries.

### Tabelas Principais

-   `tbl_collections`: Armazena informações sobre os sets de coleções de cartas.
    -   `id`: Identificador único da coleção.
    -   `collectionSetName`: Nome do set (ex: "Base Set", "Jungle").
    -   `releaseDate`: Data de lançamento da coleção.
    -   `totalCardsInCollection`: Número total de cartas na coleção.

-   `tbl_cards`: Tabela central que armazena os detalhes de cada carta individual.
    -   `id`: Identificador único da carta.
    -   `hp`: Pontos de vida da carta.
    -   `name`: Nome do Pokémon.
    -   `info`: Informações adicionais ou texto descritivo da carta.
    -   `attack`: Nome do ataque.
    -   `damage`: Dano do ataque.
    -   `weak`: Fraqueza do Pokémon.
    -   `resist`: Resistência do Pokémon.
    -   `retreat`: Custo de recuo.
    -   `cardNumberInCollection`: Número da carta dentro da sua coleção.
    -   `collection_id`: Chave estrangeira para `tbl_collections`.
    -   `type_id`: Chave estrangeira para `tbl_types`.
    -   `stage_id`: Chave estrangeira para `tbl_stages`.

-   `tbl_types`: Tabela de apoio para os tipos de Pokémon (ex: "Fogo", "Água", "Elétrico").

-   `tbl_stages`: Tabela de apoio para os estágios de evolução (ex: "Básico", "Estágio 1").

## Organização dos Scripts

O diretório `db-scripts` contém todos os scripts SQL e PowerShell necessários para gerenciar o ciclo de vida do banco de dados.

-   `tables/`: Contém os scripts para a criação (`CREATE TABLE`) de todas as tabelas.
-   `seeds/`: Scripts para popular o banco de dados com dados iniciais (`INSERT INTO`). Inclui sementes iniciais e cargas de dados em massa.
-   `views/`: Scripts para criar visualizações (`CREATE VIEW`) que facilitam a consulta dos dados.
-   `migrations/`: Armazena os scripts de migração gerados.
-   `seeds/to_migration.ps1`: Um script PowerShell utilitário que lê todos os arquivos `.sql` no diretório, os ordena e os combina em um único arquivo de migração. Isso é extremamente útil para garantir que os scripts sejam executados na ordem correta.

## Como Usar

1.  **Configurar o Banco de Dados**: Execute o script de criação de tabelas em `tables/`.
2.  **Popular os Dados**: Execute os scripts de `seeds/` para popular o banco com dados iniciais.
3.  **Gerar Migrações**: Utilize o script `to_migration.ps1` para consolidar os scripts SQL em um único arquivo de migração, facilitando a implantação em diferentes ambientes.

## 🚀 Aprendizado
Este projeto representa um passo importante na minha especialização.  
Através dele, estou consolidando conhecimentos em:
- Modelagem de dados.
- Processos de ETL.
- Boas práticas em SQL.
- Organização de projetos de banco de dados.

## 💼 Objetivo Profissional
Estou me preparando de forma **profissional e estruturada** para conquistar meu primeiro emprego na área de **Engenharia de Dados**.  
Este repositório é uma amostra prática das minhas habilidades e dedicação em evoluir constantemente.
E ele ta aberto criticas construtivas, conselhos e dicas! Vamos bater um papo!

---
📌 *Autor: Paulo Carlos*  
🔗 [LinkedIn](https://www.linkedin.com/in/paulocarlosfilho)
