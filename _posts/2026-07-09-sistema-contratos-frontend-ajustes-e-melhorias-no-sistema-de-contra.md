---
layout: post
title: "Ajustes e Melhorias no Sistema de Contratos Frontend"
date: 2026-07-09 21:30:19 +0000
categories: [Frontend]
tags: ["bugfix", "UI", "React", "Sistema Contratos Frontend", "TypeScript", "feature"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

Este post visa descrever as mudanças realizadas no repositório "Sistema-Contratos-Frontend" para melhorar a experiência do usuário e corrigir bugs.

## O que foi feito

Foram realizados vários commits para ajustar e melhorar o sistema de contratos frontend. Os principais ajustes foram feitos nos arquivos `src/app/(protected)/contratos/gerenciar/[id]/eventos/novo/page.tsx`, `src/app/(protected)/contratos/_abas/Eventos.tsx`, `src/app/(protected)/contratos/_abas/Anotacoes.tsx` e `src/app/(protected)/contratos/_components/ModalAditivo.tsx`.

No arquivo `src/app/(protected)/contratos/gerenciar/[id]/eventos/novo/page.tsx`, foram feitas alterações para melhorar a interface do usuário e corrigir bugs. Por exemplo, foi adicionado um campo para o valor final do contrato e foi corrigido um bug que impedia a exibição correta das datas.

No arquivo `src/app/(protected)/contratos/_abas/Eventos.tsx`, foi feita uma alteração para exibir a data de publicação e assinatura de forma mais clara.

No arquivo `src/app/(protected)/contratos/_abas/Anotacoes.tsx`, foram feitas alterações para melhorar a exibição das anotações e corrigir bugs. Por exemplo, foi adicionado um botão para criar novas anotações e foi corrigido um bug que impedia a exibição correta das anotações.

No arquivo `src/app/(protected)/contratos/_components/ModalAditivo.tsx`, foi adicionada uma função para formatar as datas de publicação e assinatura.

Aqui estão alguns trechos de código que ilustram as mudanças:
```c
// src/app/(protected)/contratos/gerenciar/[id]/eventos/novo/page.tsx
const EventosNovoPage = () => {
  // ...
  const [impacto, setImpacto] = useState({});
  // ...
  return (
    <div>
      {/* ... */}
      <Input
        type="date"
        value={(impacto.data_inicio_nova) ?? ""}
        onChange={(e) => setImpacto({ ...impacto, data_inicio_nova: e.target.value })}
        className="w-full rounded-xl border border-[#cfd6df] bg-white px-4 text-sm outline-none focus:border-[#00528c]"
      />
      {/* ... */}
    </div>
  );
};
```

```c
// src/app/(protected)/contratos/_abas/Eventos.tsx
const Eventos = ({ contrato }: { contrato?: ContratoDetalhe }) => {
  // ...
  return (
    <div>
      {/* ... */}
      <p className="font-medium">{fmtDate(impacto?.data_fim_nova)}</p>
      {/* ... */}
    </div>
  );
};
```

```c
// src/app/(protected)/contratos/_abas/Anotacoes.tsx
const Anotacoes = ({ contrato }: { contrato?: ContratoDetalhe }) => {
  // ...
  return (
    <div>
      {/* ... */}
      <button onClick={() => criarAnotacao()}>Criar anotação</button>
      {/* ... */}
    </div>
  );
};
```

```c
// src/app/(protected)/contratos/_components/ModalAditivo.tsx
function fmtDate(d?: string | null): string {
  if (!d) return "---";
  const date = new Date(d);
  if (isNaN(date.getTime())) return d;
  return date.toLocaleString("pt-BR", {
    day: "2-digit",
    month: "2-digit",
    year: "numeric",
  });
}
```

## Por que foi feito

As mudanças foram feitas para melhorar a experiência do usuário e corrigir bugs. O sistema de contratos frontend precisa ser fácil de usar e entender, e as mudanças visam alcançar esse objetivo.

Além disso, as mudanças foram feitas para corrigir bugs que estavam afetando a funcionalidade do sistema. Por exemplo, o bug que impedia a exibição correta das datas foi corrigido para garantir que as informações sejam exibidas corretamente.

## Impacto

As mudanças terão um impacto positivo no sistema de contratos frontend. As melhorias na interface do usuário e a correção de bugs irão tornar o sistema mais fácil de usar e entender, o que irá melhorar a experi

---
*Post gerado automaticamente a partir dos commits [`904bbce`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/904bbce2c5eccbb5cc4958932867b5f11145db6f), [`54b6e88`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/54b6e8822cd5ba2c523a4433d9126d8a65886e42), [`228c853`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/228c8535350c18247cbf8e1f30b6e8a82577b333), [`5ffafa5`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/5ffafa58066058e5929edc05cd14e60d06bdc0d8), [`305dc51`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/305dc5108de1af2b1b79185da8228205abe2cadc), [`6b196cc`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/6b196ccd0414d1a691b316d25ab0823c0d4d8f70), [`5b59aab`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/5b59aabe181b27ec789a495c1c99ce29e96552a6) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*