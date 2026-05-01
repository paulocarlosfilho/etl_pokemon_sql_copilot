# Projeto de Catalogação de Cartas TCG (Arquitetura Medalhão)

Esta é uma implementação do projeto de catalogação de cartas Pokémon TCG utilizando a **Arquitetura Medalhão** para organizar o fluxo de dados em camadas de qualidade crescente.

## Estrutura das Camadas

### 🥉 Camada Bronze: Dados Brutos

-   **Localização**: `bronze/`
-   **Conteúdo**: Contém os dados em seu estado mais cru, exatamente como foram recebidos.
    -   `bronze/assets/`: Imagens originais das cartas.
    -   `bronze/prompts/`: Prompts e configurações usadas para a extração de dados pela IA.

### 🥈 Camada Prata: Dados Limpos e Estruturados

-   **Localização**: `silver/`
-   **Conteúdo**: Representa a "fonte da verdade" dos dados limpos, validados e estruturados. Nesta implementação, corresponde ao esquema do banco de dados relacional.
    -   `silver/db/tables/`: Scripts para criar as tabelas normalizadas.
    -   `silver/db/seeds/`: Scripts para popular as tabelas com dados limpos.
    -   `silver/db/migrations/`: Scripts de migração que controlam a evolução do esquema da camada Prata.

### 🥇 Camada Ouro: Dados Agregados para Análise

-   **Localização**: `gold/`
-   **Conteúdo**: Dados prontos para o consumo, otimizados para análise e geração de insights.
    -   `gold/db/views/`: Scripts SQL que criam views (visões) desnormalizadas e agregadas para facilitar consultas de negócio e alimentar dashboards.