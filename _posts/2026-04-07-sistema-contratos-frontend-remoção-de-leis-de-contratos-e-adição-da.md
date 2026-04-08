---
layout: post
title: "Remoção de Leis de Contratos e Adição da Tela de Edição de Contratos no Frontend"
date: 2026-04-07 17:51:29 +0000
categories: [Frontend]
tags: ["UI", "Sistema Contratos Frontend", "bugfix", "API", "feature", "TypeScript"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Neste artigo, vamos abordar as mudanças realizadas no repositório "Sistema-Contratos-Frontend" com o objetivo de remover as leis de contratos e adicionar a tela de edição de contratos. Essas mudanças foram efetuadas através de cinco commits distintos, cada um com um propósito específico.

- **Commit 1 (00a3e9f):** Remoção de leis dos contratos. Neste commit, foram removidas as referências às leis de contratos nos arquivos `ContratosPageComponents.tsx` e `DadosContrato.tsx`. Isso foi feito alterando o código para comentar ou remover as partes que tratavam da exibição e manipulação das leis de contratos.

  ```diff
  - <div>
  -   <p className="text-xs font-semibold uppercase tracking-wide text-[#db2d2d]">
  -     Lei de Regimento
  -   </p>
  -   <p className="mt-1 text-sm font-semibold leading-none text-[#3f4f64]">
  -     {contrato.lei_regimento ?? "--"}
  -   </p>
  - </div>
  ```

- **Commit 2 (140071f):** Merge de atualizações. Este commit efetuou um merge de alterações, não adicionando novos arquivos, mas consolidando os changes feitos anteriormente.

- **Commit 3 (774086c):** Correção da tela de edição. Aqui, foram feitas várias alterações no arquivo `EditPageComponents.tsx` para melhorar a funcionalidade da tela de edição de contratos. Isso incluiu mudanças nos estilos, na lógica de negócios e na estrutura do componente.

  ```typescript
  import { useContrato } from "@/hooks/useContrato";
  // ...
  const { data: contrato, isLoading, error: loadError, refetch } = useContrato(id);
  useEffect(() => { void refetch(); }, []); // eslint-disable-line react-hooks/exhaustive-deps
  ```

- **Commit 4 (45d0359):** Remoção de leis regentes. Neste commit, além da remoção de leis regentes, houve alterações nos arquivos `EditPageComponents.tsx`, `GerenciarComponents.tsx` e `DadosContrato.tsx` para refletir essas mudanças.

  ```typescript
  -const LEI_OPTIONS = ["Lei nº 8.666/1993","Lei nº 14.133/2021","Lei nº 10.520/2002","Lei nº 8.987/1995","Lei nº 11.079/2004"];
  ```

- **Commit 5 (0149651):** Adição da tela de editar contrato. Este commit acrescentou a funcionalidade de edição de contratos por meio da criação do arquivo `EditPageComponents.tsx` e ajustes em outros arquivos relacionados.

  ```typescript
  import React, { useCallback, useEffect, useRef, useState } from "react";
  // ...
  const EditPageComponents = ({ id }: { id: string }) => {
    // Implementação da tela de edição de contratos
  };
  ```

## Por que foi feito

As mudanças foram efetuadas com o objetivo de simplificar a interface do usuário e melhorar a experiência ao lidar com contratos, removendo informações não essenciais e adicionando funcionalidades necessárias para a edição de contratos. A remoção das leis de contratos pode ter sido realizada para reduzir a complexidade da aplicação ou para se alinhar com requisitos legais ou de negócios. A adição da tela de edição de contratos é uma funcionalidade crucial para permitir aos usuários manipular os contratos de forma direta e eficiente.

## Impacto

O impacto dessas mudanças é multifacetado:

- **Melhoria da Usabilidade:** A interface do usuário se tornou mais limpa e fácil de navegar, com menos informações irrelevantes.
- **Funcionalidade Adicionada:** A possibilidade de editar contratos melhora a experiência do usuário e aumenta a utilidade da aplicação.
- **Riscos e Pontos de Atenção:** É importante testar a aplicação após as mudanças para garantir que a remoção

---
*Post gerado automaticamente a partir dos commits [`00a3e9f`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/00a3e9fafd44e444610ff0ccab8e3f26245b3046), [`140071f`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/140071f439ce6d124e6347cb46e27ff56db20b5b), [`774086c`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/774086c9ffb43d1d1291d836c9d15a4fa7cd79d4), [`45d0359`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/45d0359cabd040117519fe98a32e85b739407a9c), [`0149651`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/01496514eedcb0d157470feafcbc3075bacf786c) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*