---
layout: post
title: "Implementação de Ordenação e Correções de Bugs no Sistema-Contratos-Frontend"
date: 2026-04-17 11:49:18 +0000
categories: [Frontend]
tags: ["banco de dados", "Sistema Contratos Frontend", "testes", "UI", "React", "JavaScript"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Recentemente, realizamos uma série de mudanças importantes no repositório Sistema-Contratos-Frontend, visando melhorar a experiência do usuário e corrigir bugs críticos. As principais alterações abrangem a implementação de ordenação nas tabelas principais do sistema, ajustes no soft delete de anexos e melhorias na edição e exclusão de anexos.

- **Implementação de Ordenação**: A ordenação foi implementada nas tabelas principais do sistema, permitindo que os usuários organizem os dados de acordo com suas necessidades. Isso foi feito mediante a criação de uma função de ordenação em um ciclo de 3 estados (asc/desc/reset) em `utils/sorting.ts`.
  
  ```typescript
  /**
   * ASC -> DESC -> None
   */
  export function getNextSortConfig(
    currentKey: string,
    currentDirection: SortDirection,
    nextKey: string,
  ): { key: string; direction: SortDirection } {
    // lógica para determinar a próxima configuração de ordenação
  }
  ```

- **Ajustes no Soft Delete de Anexos**: Foram realizados ajustes no soft delete de anexos para melhorar a lógica de exclusão e desativação de anexos, tornando o processo mais intuitivo e minimizando a perda de dados. Isso envolveu mudanças nos componentes responsáveis pela upload de arquivos e gerenciamento de anexos.

  ```diff
  - {selectedFile && (
  + {selectedFile && initialName && (
  ```

- **Melhorias na Edição e Exclusão de Anexos**: Foram implementadas melhorias na edição e exclusão de anexos, facilitando a gestão de arquivos anexados a contratos. Isso inclui a capacidade de substituir anexos existentes e uma interface de usuário mais amigável para essas operações.

## Por que foi feito

Essas mudanças foram motivadas pela necessidade de melhorar a usabilidade e a funcionalidade do Sistema-Contratos-Frontend. A ordenação é uma funcionalidade essencial para qualquer sistema que lidar com grandes conjuntos de dados, permitindo que os usuários encontrem e analisem os dados de forma mais eficiente.

Os ajustes no soft delete de anexos e as melhorias na edição e exclusão de anexos visam minimizar a perda de dados e tornar o gerenciamento de anexos mais intuitivo e seguro. Além disso, essas mudanças são parte de um esforço contínuo para refinar o Sistema-Contratos-Frontend, baseado no feedback dos usuários e nas melhores práticas de desenvolvimento de software.

## Impacto

O impacto dessas mudanças é significativo para os usuários do Sistema-Contratos-Frontend. A ordenação nas tabelas principais do sistema melhora a produtividade, permitindo que os usuários encontrem e analisem os dados de forma mais eficiente. As melhorias na gestão de anexos reduzem o risco de perda de dados e tornam o processo de edição e exclusão de anexos mais seguro e intuitivo.

Além disso, essas mudanças contribuem para a estabilidade e confiabilidade do sistema, o que é crucial para um aplicativo que lida com contratos e documentos importantes. A equipe está comprometida em continuar melhorando o Sistema-Contratos-Frontend, garantindo que atenda às necessidades dos usuários e permaneça uma ferramenta valiosa para a gestão de contratos.

---
*Post gerado automaticamente a partir dos commits [`cc26e36`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/cc26e363c1e84cfa46164af18ffa2e65f132cb2b), [`2ec3743`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/2ec37438310d1e43fe24c02ac75fd4b4c5eab648), [`ec7869c`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/ec7869c32460167e7eefd774ba5b86af7c3417ef), [`c798163`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/c798163c683cccd39bcba8a26399cb72516ddb58), [`297e434`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/297e434f6422c7d8e5f31ea8e5d5b5872e658a0e), [`2fca2bf`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/2fca2bfd39f1ccb597a1b5d2fa3a80a6a49a4322), [`81ca4a1`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/81ca4a17ac8cd69b0d0d3177999052190e1c946b), [`9123dd2`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/9123dd22167373b1b685d0e1b5168e781a1ba213), [`e21c2c9`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/e21c2c9bd37120ff7f6d3936851005839c078f03), [`38b8e8e`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/38b8e8ea6fde0b1237e93b5c594815a949d7eb87) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*