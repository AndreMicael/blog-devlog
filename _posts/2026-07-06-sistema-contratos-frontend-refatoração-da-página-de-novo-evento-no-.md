---
layout: post
title: "Refatoração da Página de Novo Evento no Sistema-Contratos-Frontend"
date: 2026-07-06 21:01:08 +0000
categories: [Frontend]
tags: ["Sistema Contratos Frontend", "React", "TypeScript"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Durante as últimas atualizações no repositório Sistema-Contratos-Frontend, várias mudanças foram realizadas na página de criar evento, com o objetivo de melhorar a usabilidade e a apresentação das informações. A mudança mais notável foi na forma como as ações são exibidas e interagem com o usuário. O arquivo `src/app/(protected)/contratos/gerenciar/[id]/eventos/novo/page.tsx` foi extensivamente alterado para incluir essas melhorias.

Entre as mudanças feitas, destacam-se a adição de novos ícones para as ações, como `DollarSign` para ações relacionadas a valores contratuais e `Calendar` para ações relacionadas a prazos. Isso melhorou a legibilidade e a intuitividade da interface:

```javascript
const icone = isValor ? (
  <DollarSign className="h-8 w-8 text-blue-600" />
) : (
  <Calendar className="h-8 w-8 text-emerald-600" />
);
```

Além disso, a forma como as ações são resumidas e apresentadas foi alterada para incluir mais informações relevantes, como o período do contrato:

```javascript
const periodoContrato = contrato?.periodos?.find(
  (p) => p.id_contrato_periodo === String(acao.impacto.id_contrato_periodo),
);

const periodoLabel = periodoContrato
  ? `${fmtDate(periodoContrato?.data_inicio)} - ${fmtDate(periodoContrato?.data_fim)}`
  : "-";
```

Essas mudanças visam fornecer aos usuários uma visão mais clara e precisa das ações disponíveis e de suas implicações nos contratos.

## Por que foi feito

As mudanças realizadas tinham como objetivo resolver alguns problemas de usabilidade e apresentação que foram identificados na versão anterior da página de novo evento. Uma das principais motivações foi melhorar a forma como as ações são apresentadas aos usuários, tornando-a mais clara e intuitiva. Além disso, a adição de novos ícones e a reformulação da exibição das informações dos períodos dos contratos visam facilitar a compreensão e a gestão dessas ações por parte dos usuários.

Outro fator importante foi a necessidade de se adequar às melhorias de design e usabilidade que estão sendo implementadas em todo o sistema, garantindo uma experiência mais consistente e agradável para os usuários.

## Impacto

O resultado prático dessas mudanças é uma página de novo evento mais amigável e fácil de usar. Os usuários podem agora entender mais facilmente as ações disponíveis e como elas afetam os contratos, graças à apresentação mais clara e à inclusão de ícones relevantes. Além disso, a reformulação da exibição dos períodos dos contratos ajuda a evitar confusões e erros, melhorando a eficiência na gestão dos contratos.

No entanto, é importante notar que essas mudanças podem exigir um breve período de adaptação para os usuários que estavam habituados à versão anterior da página. Para mitigar isso, é recomendável fornecer suporte e treinamento adequados para garantir que todos os usuários possam tirar proveito das melhorias implementadas.

---
*Post gerado automaticamente a partir dos commits [`88eb6b0`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/88eb6b0332feca90327879835b2f72ae1457df4a) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*