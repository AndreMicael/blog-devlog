---
layout: post
title: "Refatoração da Página de Eventos e Aditivos no Sistema-Contratos-Frontend"
date: 2026-06-11 21:58:25 +0000
categories: [Frontend]
tags: ["React", "TypeScript", "Sistema Contratos Frontend"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

No commit `72782f4`, várias mudanças significativas foram feitas no repositório `Sistema-Contratos-Frontend`. A página de criar aditivo foi removida e substituída por uma página de criar evento geral, que inclui informações gerais, anexos e ações. Isso foi feito em três arquivos principais: `Eventos.tsx`, `page.tsx` (anteriormente responsável pela criação de aditivos) e `eventos/novo/page.tsx` (novo arquivo criado para a página de criar eventos).

Aqui estão os detalhes das mudanças feitas em cada arquivo:

- `Eventos.tsx`: 
  - Um botão de adicionar novo evento foi adicionado à página de eventos.
  - O código relacionado à execução e medições foi removido.
  - A seção de cláusulas do contrato foi renomeada para "Apostilamento".

```typescript
// Antes
return (
  <div className="flex flex-col gap-4 py-4">
    {/* ADITIVOS */}
    <ContractCard>
      <SectionHeader
        icon={FileText}
        title="Cláusulas do Contrato"
        right={<ActionButton disabled>+ Adicionar Cláusula</ActionButton>}
      />
      <ModuloEmDesenvolvimento label="Cláusulas do Contrato" />
    </ContractCard>
  </div>
);

// Depois
return (
  <div className="flex flex-col gap-4 py-4 w-full justify-end">
    <button
      className="py-3 bg-primary text-white  max-w-40 rounded-2xl"
      onClick={() =>
        router.push(
          `/contratos/gerenciar/${contrato.id_contrato}/eventos/novo`,
        )
      }
    >
      + Novo Evento
    </button>
    {/* CLÁUSULAS */}
    <ContractCard>
      <SectionHeader
        icon={FileText}
        title="Apostilamento"
        right={<ActionButton disabled>+ Adicionar Cláusula</ActionButton>}
      />
      <ModuloEmDesenvolvimento label="Apostilamento" />
    </ContractCard>
  </div>
);
```

- `page.tsx` (anteriormente `aditivos/novo/page.tsx`): 
  - O arquivo inteiro foi removido, pois a funcionalidade de criar aditivos foi substituída pela página de criar eventos em `eventos/novo/page.tsx`.

- `eventos/novo/page.tsx`: 
  - Este arquivo foi criado para hospedar a página de criar eventos, incluindo as funcionalidades de informações gerais, anexos e ações.

## Por que foi feito

As mudanças foram feitas para melhorar a funcionalidade do sistema de contratos, substituindo a página de criar aditivos por uma página mais abrangente de criar eventos. Isso permite uma gestão mais eficaz dos eventos relacionados a um contrato, incluindo a possibilidade de adicionar anexos e definir ações específicas para cada evento.

Além disso, a remoção da seção de execuções e medições e a renomeação da seção de cláusulas para "Apostilamento" sugerem uma reestruturação das prioridades e necessidades do sistema, focando mais na gestão de eventos e documentos do contrato.

## Impacto

As mudanças realizadas terão um impacto significativo na maneira como os usuários interagem com o sistema de contratos. Aqui estão alguns pontos-chave:

- **Nova página de criar eventos**: Os usuários agora terão uma página dedicada para criar eventos, o que deve facilitar a gestão de eventos relacionados a contratos.
- **Remoção da página de criar aditivos**: A funcionalidade de criar aditivos foi removida, o que pode afetar os usuários que dependiam dessa funcionalidade. No entanto, a nova página de criar eventos pode oferecer funcionalidades similares ou melhores.
- **Melhorias na organização**: A reestruturação das seções e a renomeação de "Cláusulas do Contrato" para "Apostilamento" devem melhorar a clareza e a organização do sistema.
- **Riscos e pontos de atenção**: É importante monitorar a adaptação dos usuários às novas mudanças e garantir que as funcionalidades removidas não estejam causando problemas para os

---
*Post gerado automaticamente a partir dos commits [`72782f4`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/72782f4bb9a8a744e01f1017e1d2970f1ece41f6) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*