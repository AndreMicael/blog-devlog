---
layout: post
title: "Implantação de Funcionalidades para Edição, Análise e Histórico de Notas Fiscais no Sistema-Contratos-Frontend"
date: 2026-05-18 14:00:25 +0000
categories: [Frontend]
tags: ["feature", "Sistema Contratos Frontend", "UI", "TypeScript", "React"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Foram realizados três commits principais no repositório Sistema-Contratos-Frontend, com o objetivo de expandir a funcionalidade da aplicação em relação às notas fiscais. Os commits (`d701c16`, `f584bda` e `2a5dd36`) adicionaram as telas de edição, análise e histórico de notas fiscais, respectivamente.

### Commit d701c16: Adição da Tela de Edição de Notas Fiscais

Neste commit, foram adicionados 757 linhas de código e removida 1 linha, afetando os arquivos `NotasFiscaisComponents.tsx`, `EditarNotaFiscalComponents.tsx` e `page.tsx`. A adição mais significativa foi a criação da tela de edição de notas fiscais, permitindo que os usuários possam editar diretamente as informações de uma nota fiscal existente.

```tsx
// Trecho do arquivo NotasFiscaisComponents.tsx
<button
  onClick={() =>
    router.push(
      `/contratos/gerenciar/${contratoId}/notas-fiscais/${invoice.id}/editar`,
    )
  }
  className="flex w-full items-center gap-2.5 rounded-lg px-3 py-2 text-left text-xs font-medium text-gray-700 transition hover:bg-gray-50 hover:text-blue-primary cursor-pointer"
>
  <Pencil className="h-4 w-4 text-blue-500" />
  Editar Nota Fiscal
</button>
```

### Commit f584bda: Adição da Tela de Análise de Notas Fiscais

Com 322 linhas adicionadas e 1 linha removida, este commit impactou os arquivos `_components/ui.tsx`, `NotasFiscaisComponents.tsx`, `AnaliseNotaFiscalComponents.tsx` e `page.tsx`. A funcionalidade de análise de notas fiscais foi introduzida, permitindo que os usuários possam visualizar e interagir com os detalhes de uma nota fiscal de forma mais aprofundada.

```tsx
// Trecho do arquivo NotasFiscaisComponents.tsx
<button
  onClick={() =>
    router.push(
      `/contratos/gerenciar/${contratoId}/notas-fiscais/${invoice.id}/analise`,
    )
  }
  className={primaryBtnCls}
  title="Aprovar ou Recusar"
>
  <Send className="h-3.5 w-3.5" />
  Aprovar/Recusar
</button>
```

### Commit 2a5dd36: Adição do Histórico de Notas Fiscais

Este commit adicionou 431 linhas de código e removeu 1 linha, afetando os arquivos `NotasFiscaisComponents.tsx`, `HistoricoNotasFiscaisComponents.tsx` e `page.tsx`. A funcionalidade de histórico de notas fiscais foi implementada, permitindo que os usuários possam visualizar um registro de todas as ações realizadas em relação às notas fiscais.

```tsx
// Trecho do arquivo NotasFiscaisComponents.tsx
<ActionButton
  onClick={() =>
    router.push(
      `/contratos/gerenciar/${contratoId}/notas-fiscais/historico`,
    )
  }
>
  <History className="h-3.5 w-3.5" />
  Visualizar Histórico
</ActionButton>
```

## Por que foi feito

As mudanças realizadas tinham como objetivo melhorar a experiência do usuário ao lidar com notas fiscais no Sistema-Contratos-Frontend. A necessidade de editar, analisar e visualizar o histórico de notas fiscais foi identificada como uma funcionalidade crítica para os usuários da aplicação. Além disso, essas mudanças também visam preparar o sistema para futuras funcionalidades que possam ser necessárias para a gestão de contratos e notas fiscais.

## Impacto

O resultado prático dessas mudanças é a capacidade do usuário de ter um maior controle sobre as notas fiscais, podendo editar, analisar e visualizar o histórico de cada nota de forma eficiente. Isso não apenas melhora a usabilidade da aplicação, mas também proporciona uma experiência mais completa e integrada para a gestão de contratos e

---
*Post gerado automaticamente a partir dos commits [`d701c16`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/d701c1657354dbd90add90edad5a5f489728df5e), [`f584bda`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/f584bda4e11126df2ec656b80cf51b5ed9872a7c), [`2a5dd36`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/2a5dd368f984889aca9b195ac331d80bc633c74e) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*