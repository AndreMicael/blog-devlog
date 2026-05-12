---
layout: post
title: "Implementação de Tabela de Finanças e Correções de Bugs no Sistema de Contratos"
date: 2026-05-11 22:00:01 +0000
categories: [Frontend]
tags: ["React", "Sistema Contratos Frontend", "bugfix", "API", "testes", "feature"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

===========================================================

## O que foi feito
--------

Esta implementação abrange várias melhorias cruciais no sistema de contratos, visando tornar o gerenciamento de contratos mais eficiente e intuitivo. As mudanças realizadas incluem:

- **Implementação da Tabela de Finanças por Período**: No arquivo `Financeiro.tsx`, foi adicionada uma tabela que detalha as finanças por período, incluindo informações como vigência, meses, mensal, estimado, pago, saldo, e progressão. Isso permite que os usuários tenham uma visão mais clara das finanças relacionadas a cada contrato.

```tsx
const FinanceiroPorPeriodo = [
  {
    id: 1,
    periodo: "Período 1",
    vigencia: "24/04/2024 - 24/05/2025",
    meses: 12,
    mensal: 3977.47,
    estimado: 47729.6,
    pago: 0,
    saldo: 47729.6,
    progressao: 0,
  },
  // ...
];
```

- **Ajustes nos Componentes de Contratos**: No arquivo `ContratosPageComponents.tsx`, foram realizados ajustes para melhorar a exibição de informações de partes envolvidas nos contratos, como CNPJ e CPF, formatados corretamente.

```tsx
function fmtCnpj(cnpj: string | undefined): string {
  if (!cnpj) return "";
  const digits = cnpj.replace(/\D/g, "");
  if (digits.length !== 14) return cnpj;
  return digits.replace(
    /^(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})$/,
    "$1.$2.$3/$4-$5",
  );
}
```

- **Criação da Rota API para Fiscalização**: Foram criadas rotas para o gerenciamento de fiscalizações no front-end, permitindo a criação de novas fiscalizações diretamente através da interface do usuário.

- **Correções de Bugs**: Além disso, foram corrigidos vários bugs, como o problema de scroll na tela de representantes e a formatação de datas e números de documentos.

## Por que foi feito
-------------

Essas mudanças foram implementadas para melhorar a funcionalidade, a usabilidade e a eficiência do sistema de contratos. Com a implementação da tabela de finanças por período, os usuários agora podem gerenciar melhor as finanças de seus contratos. A formatação correta de CNPJ e CPF ajuda a evitar erros ao cadastrar partes envolvidas nos contratos. A criação da rota API para fiscalização simplifica o processo de gerenciamento de fiscalizações, tornando o sistema mais intuitivo e fácil de usar. As correções de bugs garantem uma experiência mais estável e confiável para os usuários.

## Impacto
---------

O impacto dessas mudanças é significativo. Os usuários do sistema de contratos agora têm uma ferramenta mais poderosa e fácil de usar para gerenciar seus contratos. A adição da tabela de finanças por período e as melhorias nos componentes de contratos tornam o sistema mais eficiente, permitindo que os usuários tomem decisões informadas com base em dados precisos. A criação da rota API para fiscalização e as correções de bugs contribuem para uma experiência de usuário mais positiva, reduzindo a frustração causada por erros e melhorando a produtividade. Em resumo, essas mudanças melhoram a funcionalidade, a usabilidade e a confiabilidade do sistema de contratos, alinhando-se com as necessidades dos usuários e contribuindo para o sucesso dos negócios.

---
*Post gerado automaticamente a partir dos commits [`edcad3b`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/edcad3bd5c0ccdb6870ca73855eb4aa27edf71a9), [`ca3b2a2`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/ca3b2a28f2039a9614c8fe1a0bc27b7f3abb9a71), [`aec6aa5`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/aec6aa5e253e9f581742f48c0e981c2f01776de1), [`461d63f`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/461d63fbff6f9d1a3cc008f6d27ec847f296ba8f), [`3785239`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/37852395760e70573102e77a34fad0c42e04e16c), [`547b05f`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/547b05fd8e90b35b7247006da4bdb6ad73d8356b), [`2923734`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/292373474a02dca031d5415095ee5568addd88bd) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*