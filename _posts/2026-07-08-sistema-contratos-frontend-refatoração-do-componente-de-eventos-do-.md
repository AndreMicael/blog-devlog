---
layout: post
title: "Refatoração do componente de eventos do contrato para melhor UX e manuseio de ações"
date: 2026-07-08 20:43:45 +0000
categories: [Frontend]
tags: ["TypeScript", "feature", "Sistema Contratos Frontend", "React"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Foram realizadas várias mudanças no componente de eventos do contrato para melhorar a experiência do usuário e o manuseio de ações. As principais alterações incluem:

- Ajuste nos valores atualizados no banco de dados para garantir a consistência dos dados.
- Ajuste no filtro de aditivos e apostilamentos para melhorar a visualização e o manuseio desses eventos.
- Adição de lógica para editar e apagar ações, tornando o componente mais interativo e flexível.
- Ajuste nas ações conflitantes dos apostilamentos para garantir a integridade dos dados.
- Atualização da página de criar evento para refletir as mudanças realizadas e melhorar a usabilidade.

Os arquivos alterados incluem `src/app/(protected)/contratos/gerenciar/[id]/eventos/novo/page.tsx` e `src/app/(protected)/contratos/_abas/Eventos.tsx`, onde foram feitas as principais modificações para melhorar a lógica de negócios e a interface do usuário.

Exemplos de código alterado incluem:
```typescript
// Antes
reajuste_contratual: [
  {
    nome: "periodo",
    label: "Selecione o periodo",
  },
];

// Depois
"Reajuste Contratual": [
  {
    nome: "periodo",
    label: "Selecione o periodo",
  },
];
```

## Por que foi feito

Essas mudanças foram feitas para resolver problemas específicos e melhorar a experiência do usuário. O ajuste nos valores atualizados no banco de dados foi necessário para garantir a consistência dos dados e evitar erros de cálculo. O ajuste no filtro de aditivos e apostilamentos foi feito para melhorar a visualização e o manuseio desses eventos, tornando mais fácil para os usuários encontrar e gerenciar essas informações.

A adição de lógica para editar e apagar ações foi uma resposta às necessidades dos usuários, que precisavam de mais flexibilidade e interatividade no componente. O ajuste nas ações conflitantes dos apostilamentos foi feito para garantir a integridade dos dados e evitar problemas de consistência.

A atualização da página de criar evento foi uma consequência natural das outras mudanças, visando garantir que a interface do usuário reflita as novas funcionalidades e melhorias.

## Impacto

As mudanças realizadas terão um impacto positivo significativo na experiência do usuário e na funcionalidade do sistema. Os usuários poderão gerenciar eventos e ações de forma mais eficiente, com uma interface mais intuitiva e flexível. A consistência dos dados será garantida, reduzindo os erros e melhorando a confiabilidade do sistema.

Além disso, as mudanças feitas permitem uma melhor manutenção e atualização do sistema, pois a lógica de negócios está mais organizada e é mais fácil de entender e modificar.

No entanto, é importante notar que as mudanças podem exigir ajustes adicionais em outras partes do sistema, especialmente se houver dependências não óbvias entre os componentes. Portanto, é crucial testar o sistema completamente após as mudanças para garantir que não haja efeitos colaterais indesejados.

---
*Post gerado automaticamente a partir dos commits [`1d39930`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/1d39930cbb400c90cd2732df507caa6c03ff1a04), [`374ee1f`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/374ee1fec07ad83e2278558583a60b4dc329f716), [`1fa4e41`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/1fa4e41d0c9c5e731e93c6fd00dbfff3cce80825), [`524e094`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/524e0942dc2c27cc216814f626e38665515d7c57), [`771e309`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/771e3093cc418c66ecf4e7fb154852e587e6a070), [`cb6eef5`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/cb6eef5825776f0a548ef019996c11588587b59e) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*