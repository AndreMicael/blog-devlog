---
layout: post
title: "Refatoração do Upload de Arquivos e Correções de Bugs no Sistema-Contratos-Frontend"
date: 2026-04-16 12:04:17 +0000
categories: [Frontend]
tags: ["bugfix", "UI", "Sistema Contratos Frontend", "React", "feature", "TypeScript"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Durante a última semana, várias mudanças importantes foram implementadas no repositório `Sistema-Contratos-Frontend`. Essas mudanças visam melhorar a experiência do usuário, corrigir bugs críticos e preparar o terreno para futuras funcionalidades. Abaixo, estão detalhadas as principais alterações realizadas:

- **Refatoração do componente de upload de arquivos**: O componente `FileUploadModal` foi significativamente refatorado. As principais mudanças incluem a remoção de funções de formatação de bytes e obtenção de ícones de arquivo para um arquivo de helper (`utils/fileHelpers.ts`), melhorando a organização e reutilização de código. Além disso, a lógica de seleção de arquivos foi atualizada para apenas permitir arquivos com tipos MIME válidos, melhorando a segurança e a prevenção de uploads indevidos.

  ```tsx
  import { ALLOWED_MIME_TYPES, fmtBytes, getFileIcon, getFileColor } from "@/utils/fileHelpers";
  ```

- **Adição de funcionamento de scroll-to-top entre etapas**: No componente `NovoContratoComponents`, foi adicionada uma funcionalidade para garantir que o usuário seja movido para o topo da página ao avançar ou voltar entre as etapas do contrato. Isso foi alcançado através do uso do hook `useRef` para acessar o elemento da etapa atual e usar a função `scrollTo` para mover a página para o topo da etapa.

  ```tsx
  import React, { useEffect, useRef, useState } from "react";
  // ...
  const etapaScrollRef = useRef<HTMLDivElement>(null);
  // ...
  useEffect(() => {
    etapaScrollRef.current?.scrollTo({ top: 0, behavior: "smooth" });
  }, [etapa]);
  ```

- **Correção de bugs e melhorias de UI**: Vários commits abordaram a correção de bugs e melhorias de interface. Por exemplo, foram corrigidas cores de backgrounds e textos em diferentes componentes para melhorar a acessibilidade e a consistência da interface. Além disso, foram feitas atualizações nos estilos de inputs e selects para garantir uma aparência uniforme e agradável.

  ```tsx
  const fieldBaseCore = "flex min-w-0 items-center gap-2 rounded-lg bg-zinc-200/20 border font-medium px-3 py-2.5 transition";
  const fieldBaseDisabledInput = "has-[input:disabled]:bg-zinc-300 has-[input:disabled]:border-zinc-300 has-[input:disabled]:cursor-not-allowed";
  const fieldBase = `${fieldBaseCore} ${fieldBaseDisabledInput}`;
  ```

## Por que foi feito

As mudanças implementadas foram motivadas por várias razões, incluindo:

- **Melhoria da experiência do usuário**: A refatoração do upload de arquivos e a implementação do scroll-to-top visam facilitar a navegação e o uso do sistema, tornando-o mais intuitivo e eficiente.
- **Correção de bugs**: A correção de bugs e melhorias de UI são essenciais para garantir a estabilidade e a confiabilidade do sistema, minimizando erros e problemas para os usuários.
- **Preparação para novas funcionalidades**: Algumas das mudanças, como a reorganização de código em helpers, são preparatórias para futuras funcionalidades, permitindo uma fácil expansão e manutenção do sistema.

## Impacto

O impacto dessas mudanças é multifacetado:

- **Experiência do usuário melhorada**: Com a refatoração do upload de arquivos e a adição do scroll-to-top, os usuários terão uma experiência mais fluida e menos propensa a erros.
- **Redução de bugs**: A correção de bugs e melhorias de UI reduzirão a incidência de problemas e melhorarão a confiabilidade do sistema.
- **Manutenção e expansão facilitadas**: A reorganização do código e a padronização de estilos facilitarão a manutenção e a adição de novas funcionalidades, tornando o sistema mais ágil e responsivo às necessidades dos usuários.

Em resumo, as mudanças implementadas no `Sistema-Contratos-Frontend` visam melhorar a experiência do usuário, corrigir bugs críticos e preparar o sistema para futuras expans

---
*Post gerado automaticamente a partir dos commits [`3beee0f`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/3beee0f32d817faed2f916732a45ee9f16eee4a3), [`8fbc7a0`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/8fbc7a06aab84f9f45fe7619e097e741c2f6be55), [`c28b8cf`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/c28b8cf13d991191638a1cef7dc7f3a90e42529e), [`ddf4a00`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/ddf4a00a4b329c4e0511ca0383a9da19caabdc1a), [`d25ae15`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/d25ae15ab3f867c0a6450fd42c6972722e1580e7), [`8719085`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/87190854d286dfd0200e9e7f2c1285939fba83a0), [`38af441`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/38af4412b45056e85428c7bea5f150ef66f593a0), [`04ca4aa`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/04ca4aaa712b63a76061f0211e505a48a544cce4), [`30c1066`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/30c106634987ccbb89e4b4b0466c3008bbc7eb2d), [`a4b693b`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/a4b693b71fe253d7a8f8254605ad27b2de044318) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*