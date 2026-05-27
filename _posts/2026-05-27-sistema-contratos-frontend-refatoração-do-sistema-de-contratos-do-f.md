---
layout: post
title: "Refatoração do Sistema de Contratos do Frontend"
date: 2026-05-27 13:03:16 +0000
categories: [Frontend]
tags: ["TypeScript", "React", "API", "feature", "Sistema Contratos Frontend", "UI"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

====================================================

## O que foi feito
---------------

No repositório `Sistema-Contratos-Frontend`, várias mudanças foram implementadas para melhorar a funcionalidade e a usabilidade do sistema. Aqui estão as principais alterações:

*   **Remoção da tela de edição de aditivo**: A tela de edição de aditivo foi removida, como visto no commit `9994ea7`.
*   **Melhorias no financeiro**: Foram feitas melhorias no financeiro, adicionando cards e melhorando a exibição de informações, como mostrado no commit `3c2970c`.
*   **Criação de rota para buscar todas as ações**: Foi criada uma rota para buscar todas as ações, como visto no commit `9b6b096`.
*   **Retirada da data prevista e data executada da tela de fiscalizações**: A data prevista e a data executada foram removidas da tela de fiscalizações, como mostrado no commit `5329f5f`.
*   **Adição de modais de edição no termo aditivo**: Foram adicionados modais de edição no termo aditivo, como visto no commit `1a8e87c`.

Alguns arquivos específicos que foram alterados incluem:

*   `src/app/(protected)/contratos/_abas/Eventos.tsx`
*   `src/app/(protected)/contratos/_abas/Financeiro.tsx`
*   `src/app/(protected)/contratos/_components/ModalAditivo.tsx`
*   `src/app/(protected)/contratos/gerenciar/[id]/aditivos/novo/page.tsx`
*   `src/app/api/evento-acoes/get/route.ts`

Trechos de código relevantes incluem:

```jsx
// src/app/(protected)/contratos/_abas/Eventos.tsx
function AditivoCard({ aditivo }: { aditivo: ContratoAditivo }) {
  // ...
  <Info label="Início Vigência" value={fmtDate(aditivo.inicio_vigencia)} />
  // ...
}
```

```jsx
// src/app/(protected)/contratos/_abas/Financeiro.tsx
const Financeiro = ({ contrato }: { contrato?: ContratoDetalhe }) => {
  // ...
  const proximoVencimentoParcela = useMemo(() => {
    // ...
  }, [parcelasListWithNumero]);
  // ...
}
```

## Por que foi feito
-------------------

As mudanças foram feitas para melhorar a funcionalidade e a usabilidade do sistema. A remoção da tela de edição de aditivo, por exemplo, foi feita para simplificar o processo de edição de aditivos. As melhorias no financeiro foram feitas para melhorar a exibição de informações e tornar o sistema mais intuitivo.

A criação de rota para buscar todas as ações foi feita para permitir que o sistema busque todas as ações de forma eficiente. A retirada da data prevista e da data executada da tela de fiscalizações foi feita para remover informações desnecessárias e melhorar a exibição de dados.

A adição de modais de edição no termo aditivo foi feita para permitir que os usuários editem os termos aditivos de forma mais fácil e intuitiva.

## Impacto
------------

As mudanças realizadas terão um impacto positivo no sistema, melhorando a funcionalidade e a usabilidade. Os usuários poderão editar aditivos de forma mais fácil e intuitiva, e o sistema será mais eficiente na busca de ações.

No entanto, é importante notar que as mudanças podem ter um impacto negativo se não forem testadas adequadamente. Por exemplo, a remoção da tela de edição de aditivo pode causar problemas se os usuários precisarem editar aditivos de forma mais detalhada.

Em resumo, as mudanças realizadas no repositório `Sistema-Contratos-Frontend` melhorarão a funcionalidade e a usabilidade do sistema, mas é importante testá-las adequadamente para evitar problemas.

---
*Post gerado automaticamente a partir dos commits [`fa368c5`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/fa368c504bbe014e309708df859d5796831f1cfa), [`5329f5f`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/5329f5fc5a196454c262e122a4cb6a27a980eed5), [`6815e8b`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/6815e8bdc9390292dff213e349c3ee7547c07434), [`ee01934`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/ee01934bc19136299ffd3725927e7c28710fc373), [`3c2970c`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/3c2970c57cfa6ea1d7a7a84445e468bb15637a51), [`8fb43e8`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/8fb43e8a3484070f6357ad791d372a0487d8f97d), [`9b6b096`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/9b6b09600c7b9963d448f5c9387a7d718ae9c470), [`9994ea7`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/9994ea7f4db40bdab7671f9be7823c0816e568b7), [`a884d38`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/a884d38c474ea7a315e482e99499e3791ecfbbd9), [`1a8e87c`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/1a8e87c42fd4b9cd560aed33df2f4dfa4dfa762d) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*