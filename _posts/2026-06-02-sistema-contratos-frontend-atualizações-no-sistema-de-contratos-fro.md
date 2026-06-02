---
layout: post
title: "Atualizações no Sistema de Contratos Frontend: Edição e Cancelamento de Pagamentos, Anotações e Melhorias no Financeiro"
date: 2026-06-02 12:23:56 +0000
categories: [Frontend]
tags: ["Sistema Contratos Frontend", "feature", "TypeScript", "UI", "React", "API"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Recentemente, foram realizadas várias atualizações importantes no repositório do Sistema-Contratos-Frontend. Essas mudanças visam melhorar a funcionalidade e a usabilidade do sistema, especialmente em relação à edição e cancelamento de pagamentos, à adição de anotações e às melhorias no módulo de financeiro.

- **Commit 1 (`25d90c6`)**: Foi adicionada a funcionalidade de edição e cancelamento de pagamentos. Isso incluiu alterações nos arquivos `src/app/(protected)/contratos/_abas/Financeiro.tsx`, `src/app/(protected)/contratos/gerenciar/[id]/pagamentos/PagamentosComponents.tsx`, entre outros. Essas mudanças permitem que os usuários editam e cancelem pagamentos de forma mais intuitiva e segura.
  
- **Commit 2 (`e594a64`)**: Foi implementada a funcionalidade de anotações no sistema. Isso permitiu que os usuários adicionassem, visualizassem e gerenciassem anotações relacionadas a contratos. Os arquivos alterados incluem `src/app/(protected)/contratos/_abas/Anotacoes.tsx` e `src/app/api/contratos/[idContrato]/anotacoes/create/route.ts`.

- **Commit 3 (`564ca04`)**: Houve uma melhoria na listagem de parcelas. Isso envolveu alterações nos arquivos `src/app/(protected)/contratos/gerenciar/[id]/pagamentos/PagamentosComponents.tsx` e `src/app/(protected)/contratos/gerenciar/[id]/pagamentos/novo/NovoPagamentoComponents.tsx`, melhorando a forma como as parcelas são exibidas e gerenciadas.

- **Commit 4 (`cf6183f`)**: Foi adicionado o status de pagamento parcial. Isso significa que agora os pagamentos podem ser marcados como parcialmente pagos, oferecendo mais flexibilidade no gerenciamento financeiro. Os arquivos `src/app/(protected)/contratos/_abas/Financeiro.tsx` e `src/app/(protected)/contratos/gerenciar/[id]/pagamentos/PagamentosComponents.tsx` foram atualizados para refletir essa nova funcionalidade.

Alguns trechos de código relevante incluem:
```typescript
// Adição do status de pagamento parcial
case "PAGAMENTO_PARCIAL":
  return (
    <span
      className={`${badgeClass} bg-amber-50 text-amber-700 border-amber-200`}
    >
      Parcialmente Pago
    </span>
  );
```

## Por que foi feito

Essas mudanças foram feitas para atender a necessidades específicas do sistema e melhorar a experiência do usuário. A capacidade de editar e cancelar pagamentos de forma eficiente é crucial para a gestão financeira. Além disso, a adição de anotações permite que os usuários mantenham um histórico detalhado de interações e decisões relacionadas a contratos, aumentando a transparência e a responsabilidade.

A melhoria na listagem de parcelas e a inclusão do status de pagamento parcial refletem um esforço contínuo para tornar o sistema mais intuitivo e funcional, alinhado com as necessidades dos usuários e com os objetivos de gestão de contratos.

## Impacto

O impacto dessas mudanças é significativo. Os usuários agora têm mais controle sobre os pagamentos, podem manter anotações detalhadas e visualizar as parcelas de forma mais clara. A adição do status de pagamento parcial proporciona uma representação mais precisa do estado dos pagamentos, ajudando na tomada de decisões financeiras.

No entanto, como com qualquer mudança significativa, é importante testar essas novas funcionalidades amplamente para garantir que elas não introduzam bugs ou problemas de compatibilidade. Além disso, a documentação e o suporte ao usuário devem ser atualizados para refletir essas mudanças, garantindo que os usuários possam aproveitar ao máximo as novas funcionalidades.

Em resumo, as atualizações no Sistema-Contratos-Frontend representam um passo importante na direção da melhoria contínua e da satisfação do usuário, oferecendo funcionalidades mais robustas e uma experi

---
*Post gerado automaticamente a partir dos commits [`25d90c6`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/25d90c64bcb60d4ef1818023eb6c8564ecc9b0bb), [`e594a64`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/e594a645e4d9f7f8026b8ebe275228cb23f8c9bb), [`564ca04`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/564ca04f52bc65a0af7128018d754c3286b02549), [`cf6183f`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/cf6183ffce001627876be483a5fdceefad965744) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*