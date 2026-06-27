---
layout: post
title: "Refatoração do componente de eventos para melhor exibição de dados de contratos"
date: 2026-06-26 21:24:25 +0000
categories: [Frontend]
tags: ["UI", "React", "TypeScript", "Sistema Contratos Frontend"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Foram realizadas mudanças significativas no componente de eventos do frontend do Sistema de Contratos, com o objetivo de melhorar a exibição de dados de contratos. Os principais arquivos alterados foram `Eventos.tsx` e `GerenciarComponents.tsx`, localizados em `src/app/(protected)/contratos/_abas` e `src/app/(protected)/contratos/gerenciar`, respectivamente.

As mudanças incluem a atualização do card de eventos para exibir informações mais relevantes e de forma mais organizada. Foi adicionada a função `renderResumoAcao` para lidar com a renderização de resumos de ações de eventos de contratos, considerando diferentes tipos de ações, como prorrogação de execução e vigência.

Além disso, foram realizadas alterações na forma como os dados de eventos são exibidos, incluindo a adição de ícones para representingar usuários e datas, melhorando a legibilidade e a usabilidade da interface.

```typescript
function renderResumoAcao(
  acao: ContratoEventoAcao,
  periodo?: ContratoPeriodo,
  impacto?: ContratoEventoImpacto,
) {
  // ...
}
```

## Por que foi feito

As mudanças foram realizadas para atender à necessidade de melhorar a exibição de dados de contratos no sistema, tornando mais fácil para os usuários entender e gerenciar os eventos relacionados a seus contratos. Além disso, as alterações visam preparar o sistema para futuras funcionalidades e melhorias, como a integração com outros módulos e a expandindo as capacidades de relatórios e análise de dados.

As mudanças também foram motivadas por problemas de usabilidade e legibilidade identificados na versão anterior do componente, onde os dados de eventos eram exibidos de forma confusa e não muito clara. Com as alterações, o sistema agora fornece uma visão mais clara e organizada dos eventos de contratos, facilitando a tomada de decisões e a gestão de contratos.

## Impacto

As mudanças realizadas têm um impacto positivo significativo na usabilidade e na funcionalidade do sistema. Os usuários agora podem visualizar os dados de eventos de contratos de forma mais clara e organizada, o que melhora a experiência do usuário e facilita a gestão de contratos.

Além disso, as alterações prepararam o sistema para futuras melhorias e expansões, permitindo que o time de desenvolvimento continue a trabalhar em melhorias e novas funcionalidades de forma mais eficiente.

No entanto, é importante observar que as mudanças podem requerer ajustes por parte dos usuários, especialmente aquelos que estavam habituados à forma anterior de exibir os dados de eventos. Para minimizar o impacto, é recomendável fornecer treinamento e suporte adequados para ajudar os usuários a se adaptarem às novas funcionalidades e melhorias.

---
*Post gerado automaticamente a partir dos commits [`ca38ba7`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/ca38ba70801f1269d1815e36abf4b87889c9da0b), [`dcefa66`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/dcefa66296cd62ded4cf39fbaf14a3120a07fe40) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*