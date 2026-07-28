---
layout: post
title: "Refatoração do componente de notificações no Sistema-Contratos-Frontend"
date: 2026-07-27 19:19:07 +0000
categories: [Frontend]
tags: ["feature", "TypeScript", "Sistema Contratos Frontend", "banco de dados"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Nas últimas atualizações do repositório Sistema-Contratos-Frontend, foram realizadas mudanças significativas no componente de notificações. Os commits `ce68512` e `1e3edcc` introduziram alterações nos arquivos `lib/notificacao-ui.ts` e `prisma/schema.prisma`, entre outros. O objetivo principal dessas mudanças foi adicionar e posteriormente refatorar a funcionalidade de notificações de eventos contratuais.

No arquivo `lib/notificacao-ui.ts`, foi adicionada uma função `isNotificacaoEventoContrato` que verifica se uma notificação é relacionada a eventos de contrato, como aditivos ou apostilamentos. Essa função utiliza a categoria da notificação para determinar se é um evento de contrato. Além disso, uma nova constante `FilePenLine` foi adicionada para representar o ícone de evento de contrato nas notificações.

No entanto, uma versão anterior do commit `ce68512` removeu a função `isNotificacaoEventoContrato` e o uso do ícone `FilePenLine`, mas isso foi revertido no commit `1e3edcc`, restaurando essas funcionalidades. O exemplo abaixo ilustra a mudança:
```typescript
export function isNotificacaoEventoContrato(n: Notificacao): boolean {
  const t = textoCategoriaNotificacao(n);
  return (
    t.includes("ADITIVO") ||
    t.includes("APOSTILAMENTO") ||
    t.includes("EVENTO_ADITIVO") ||
    t.includes("EVENTO_APOSTILAMENTO")
  );
}
```

No arquivo `prisma/schema.prisma`, a relação entre `Usuario` e `grupo` teve sua ação `onDelete` alterada de `NoAction` para `Restrict`, o que impede a exclusão de um grupo se houver usuários relacionados a ele.

## Por que foi feito

As mudanças realizadas tinham como objetivo melhorar a funcionalidade de notificações no sistema, permitindo que os usuários recebam notificações mais precisas e úteis sobre eventos contratuais. A função `isNotificacaoEventoContrato` permite que o sistema identifique e trate essas notificações de forma personalizada, melhorando a experiência do usuário.

A alteração na relação entre `Usuario` e `grupo` no modelo Prisma visa manter a integridade dos dados, evitando a exclusão acidental de grupos que ainda têm usuários associados, o que ajudaria a prevenir perda de dados importantes.

## Impacto

Com essas mudanças, os usuários do sistema devem perceber uma melhoria na forma como as notificações de eventos contratuais são exibidas e tratadas. As notificações devem ser mais precisas e úteis, graças à função `isNotificacaoEventoContrato` que permite uma identificação clara desses eventos.

Além disso, a alteração na relação entre `Usuario` e `grupo` ajuda a garantir que os dados sejamconsistentes e confiáveis, evitando possíveis problemas de perda de dados de usuários ou grupos.

No entanto, é importante verificar se as alterações não introduziram novos problemas ou bugs no sistema, como sempre deve ser feito após mudanças significativas. Testes adequados devem ser realizados para garantir que o sistema continue funcionando como esperado.

---
*Post gerado automaticamente a partir dos commits [`ce68512`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/ce6851281bde36d71a5c980cd52b151a5e202b2b), [`1e3edcc`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/1e3edcc3db356de4ad2e199fa10286cad99e6d86) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*