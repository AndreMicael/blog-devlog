---
layout: post
title: "Atualização do Frontend do Sistema de Contratos com Melhorias de UX e Correções de Bugs"
date: 2026-03-26 19:33:38 +0000
categories: [Frontend]
tags: ["feature", "TypeScript", "autenticação", "bugfix", "UI", "banco de dados"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

As últimas atualizações no repositório "Sistema-Contratos-Frontend" trouxeram uma série de melhorias significativas, tanto em termos de experiência do usuário (UX) quanto na correção de bugs críticos. Essas mudanças visam proporcionar uma navegação mais intuitiva e uma interação mais eficiente com o sistema.

- **Adicionando itens da API nos anexos**: No commit `fd5f4f1`, foram feitas alterações nos arquivos `src/app/(protected)/contratos/ContratosPageComponents.tsx`, `src/app/(protected)/contratos/_abas/Anexos.tsx`, entre outros. Essas mudanças visam integrar os anexos de contratos diretamente da API, melhorando a forma como os usuários visualizam e interagem com esses anexos. Por exemplo, em `Anexos.tsx`, agora é possível ver o código:
  ```javascript
  import React, { useEffect, useState } from "react";
  // ...
  const [anexos, setAnexos] = useState([]);
  useEffect(() => {
    const fetchAnexos = async () => {
      const response = await fetch(getApiUrl(`anexos/${idContrato}`));
      const data = await response.json();
      setAnexos(data);
    };
    fetchAnexos();
  }, [idContrato]);
  ```
- **Corrigindo erro que forçava a alterar senha no login institucional**: No commit `8e95625`, foi feita uma correção no arquivo `lib/auth.ts` para evitar que o sistema force os usuários a alterarem suas senhas injustificadamente após um login institucional. Isso melhorará a experiência do usuário, reduzindo frustrações causadas por solicitações desnecessárias de troca de senha. Por exemplo, o código foi alterado para:
  ```javascript
  if (existing.TrocarSenhaNoProximoLogin) {
    updates.TrocarSenhaNoProximoLogin = false;
  }
  ```
- **Criando página de consulta de contratos**: Com o commit `d4c0f0d`, houve uma grande adição de código para a criação de uma página dedicada à consulta de contratos. Isso incluiu alterações em vários arquivos, como `prisma/schema.prisma`, para refletir as necessidades de estrutura de dados para essa nova funcionalidade. Por exemplo, foi adicionado o seguinte modelo:
  ```prisma
  model contrato {
    id         Int     @id @default(autoincrement())
    numero     String
    ano        Int
    // ...
  }
  ```

## Por que foi feito

Essas mudanças foram feitas com o objetivo de melhorar a experiência do usuário final e de corrigir problemas conhecidos que afetavam a usabilidade e a estabilidade do sistema.

- A **integração de anexos** permite que os usuários acessem documentos importantes relacionados aos contratos de forma mais direta, melhorando a eficiência na gestão de contratos.
- A **correção do bug de troca de senha** foi necessária para garantir que os usuários não sejam indevidamente forçados a alterar suas senhas, reduzindo a frustação e melhorando a experiência geral.
- A **criação de uma página de consulta de contratos** visa fornecer uma interface dedicada e intuitiva para que os usuários possam facilmente consultar e gerenciar os contratos, melhorando a produtividade e a organização.

## Impacto

O impacto dessas mudanças é multifacetado:

- **Melhoria na UX**: Com a integração de anexos e a criação de uma página de consulta, os usuáriosnow têm uma experiência mais fluída e intuitiva ao interagir com o sistema.
- **Redução de Bugs**: A correção do bug relacionado à troca de senha reduz a ocorrência de problemas técnicos, melhorando a confiabilidade do sistema.
- **Aumento da Eficiência**: A nova página de consulta de contratos e a capacidade de visualizar anexos diretamente no sistema permitem que os usuários gerenciem seus contratos de forma mais eficiente, economizando tempo e reduzindo erros.

No geral, essas atualizações reforçam o compromisso contínuo de melhorar a qualidade e a usabilidade do Sistema de Contratos,

---
*Post gerado automaticamente a partir dos commits [`fd5f4f1`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/fd5f4f1f00deb597ed87e6aeed7b2a945b36f1b1), [`8e95625`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/8e9562564011acc7eb02577cc6d3085bd00c85bb), [`d4c0f0d`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/d4c0f0d2dff33a34bae9b3b550f49a3af6d4e3d0) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*