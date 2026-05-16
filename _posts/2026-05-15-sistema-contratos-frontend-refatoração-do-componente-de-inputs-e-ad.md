---
layout: post
title: "Refatoração do Componente de Inputs e Adição de Funcionalidades no Sistema-Contratos-Frontend"
date: 2026-05-15 21:52:36 +0000
categories: [Frontend]
tags: ["Sistema Contratos Frontend", "React", "feature", "TypeScript", "UI", "API"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Foram realizadas várias mudanças no repositório "Sistema-Contratos-Frontend" com o objetivo de melhorar a experiência do usuário e adicionar novas funcionalidades. Aqui está um resumo das principais alterações:

- **Adição de validação na página de criar termo aditivo**: No commit `bfd85a1`, foi adicionada validação na página de criar termo aditivo. Isso inclui a alteração do arquivo `components/Input.tsx` para incluir a propriedade `bgTransparent`, que permite que o input tenha um fundo transparente. Além disso, foram alterados os arquivos `src/app/(protected)/contratos/gerenciar/[id]/aditivos/editar/[idAditivo]/page.tsx` e `src/app/(protected)/contratos/gerenciar/[id]/aditivos/novo/page.tsx` para utilizar a nova propriedade.

```jsx
// components/Input.tsx
export function Input({
  // ...
  bgTransparent = false,
  // ...
}) {
  // ...
  const className = `${!bgTransparent && "bg-white"} border-zinc-300 focus-within:border-blue-primary focus-within:ring-1 focus-within:ring-blue-primary/30`;
  // ...
}
```

- **Ajuste do fetch das páginas de aditivos**: No commit `d9212c6`, foi ajustado o fetch das páginas de aditivos. Isso inclui a alteração dos arquivos `src/app/(protected)/contratos/_abas/Eventos.tsx`, `src/app/(protected)/contratos/gerenciar/[id]/aditivos/editar/[idAditivo]/page.tsx`, `src/app/(protected)/contratos/gerenciar/[id]/aditivos/novo/page.tsx` e `src/hooks/useContratoAditivos.ts`.

```jsx
// src/app/(protected)/contratos/_abas/Eventos.tsx
const { data: aditivos, error } = useContratoAditivos(contrato?.id_contrato);
```

- **Adição de tela e nova nota fiscal**: No commit `92b220d`, foi adicionada uma tela e uma nova nota fiscal. Isso inclui a alteração dos arquivos `src/app/(protected)/contratos/_abas/Cadastro.tsx`, `src/app/(protected)/contratos/_components/ui.tsx`, `src/app/(protected)/contratos/gerenciar/[id]/notas-fiscais/NotasFiscaisComponents.tsx`, `src/app/(protected)/contratos/gerenciar/[id]/notas-fiscais/nova/NovaNotaFiscalComponents.tsx`, `src/app/(protected)/contratos/gerenciar/[id]/notas-fiscais/nova/page.tsx` e `src/app/(protected)/contratos/gerenciar/[id]/notas-fiscais/page.tsx`.

- **Adição de lógica e modal de 'excluir' aditivo**: No commit `f2a4553`, foi adicionada lógica e um modal de 'excluir' aditivo. Isso inclui a alteração dos arquivos `src/app/(protected)/contratos/_abas/Eventos.tsx`, `src/app/(protected)/contratos/gerenciar/[id]/aditivos/editar/[idAditivo]/page.tsx`, `src/app/(protected)/contratos/gerenciar/[id]/aditivos/novo/page.tsx` e `src/app/api/contratos/[idContrato]/aditivos/[idAditivo]/status/route.ts`.

- **Adição de tela de listagem de NFs**: No commit `4b35409`, foi adicionada uma tela de listagem de NFs. Isso inclui a alteração dos arquivos `src/app/(protected)/contratos/_abas/Financeiro.tsx`, `src/app/(protected)/contratos/_components/ui.tsx`, `src/app/(protected)/contratos/gerenciar/[id]/notas-fiscais/NotasFiscaisComponents.tsx`, `src/app/(protected)/contratos/gerenciar/[id]/notas-fiscais/page.tsx` e `utils/functions.ts`.

## Por que foi feito

Essas mudanças foram feitas para melhorar a experiência do usuário e adicionar novas funcionalidades ao sistema. A adição de validação na página de criar termo aditivo ajuda a

---
*Post gerado automaticamente a partir dos commits [`bfd85a1`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/bfd85a12433aa1d4f7fc419d00e850e401e8d5e5), [`d9212c6`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/d9212c6d2032da3ff9c9854109ed6f45b75dbbf5), [`92b220d`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/92b220d87a11e004274c28ff0759cd4dd7812d1c), [`f2a4553`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/f2a4553753635f7e47b7b6ac0a726b57a1e92593), [`4b35409`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/4b35409841024bf94725ed0c1a162b56c406e224) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*