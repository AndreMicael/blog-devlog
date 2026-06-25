---
layout: post
title: "Adicionando restrição de ações conflitantes no Sistema de Contratos Frontend"
date: 2026-06-24 18:46:36 +0000
categories: [Frontend]
tags: ["Sistema Contratos Frontend", "UI", "TypeScript", "feature", "React"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Nesta atualização, realizamos várias mudanças importantes no repositório "Sistema-Contratos-Frontend" para melhorar a experiência do usuário e a integridade dos dados. Aqui estão as principais alterações:

*   No commit `6e42bf7`, adicionamos uma restrição para não criar ações com campos conflitantes no mesmo evento. Isso foi feito alterando o arquivo `src/app/(protected)/contratos/gerenciar/[id]/eventos/novo/page.tsx`. A mudança incluiu a criação de um objeto `ACOES_CONFLITANTES` que mapeia ações conflitantes e a adição de uma função `acaoPossuiConflito` para verificar se uma ação selecionada possui conflitos com ações já salvas ou em aberto.

    ```typescript
const ACOES_CONFLITANTES: Record<string, string[]> = {
  "Prorrogar Vigência ": ["Prorrogar Execução", "Modificar Valor Contratual"],
  "Prorrogar Execução": ["Prorrogar Vigência "],
  "Modificar Valor Contratual": ["Prorrogar Vigência "],
};

const acaoPossuiConflito = (acao: EventoAcao) => {
  return acoesSelecionadas.some((acaoSelecionada) => {
    const conflitos = ACOES_CONFLITANTES[acaoSelecionada] ?? [];
    return conflitos.includes(acao.label_evento);
  });
};
```

*   No commit `ed02833`, removemos `console.logs` e funções desnecessárias do código. Essa alteração também foi feita no arquivo `src/app/(protected)/contratos/gerenciar/[id]/eventos/novo/page.tsx`, reduzindo o código desnecessário e melhorando a performance.

*   No commit `310bb48`, implementamos uma funcionalidade para deixar o select de evento disabled quando há alguma ação em aberto ou salva. Essa mudança foi realizada no mesmo arquivo, visando melhorar a usabilidade e evitar ações inconsistentes.

*   No commit `7548b24`, adicionamos descrição e validação iniciais na página de criação de eventos para aditivos somente. Além disso, foram feitas alterações no arquivo `src/app/layout.tsx` para melhorar a apresentação das informações.

## Por que foi feito

Essas mudanças foram realizadas para resolver problemas específicos e melhorar a experiência do usuário no sistema. A adição de restrições para ações conflitantes, por exemplo, visa evitar que o usuário crie combinações inválidas de ações que poderiam causar inconsistências nos dados. A remoção de código desnecessário ajudou a melhorar a performance e a manutenibilidade do sistema. A funcionalidade de desabilitar o select de evento quando há ações em aberto ou salvas melhora a usabilidade, evitando que o usuário faça escolhas inválidas. Finalmente, a adição de descrições e validações iniciais na criação de eventos para aditivos somente ajuda a garantir que os dados sejam consistentes e válidos.

## Impacto

O impacto prático dessas mudanças é significativo. Os usuários agora terão uma experiência mais segura e guiada ao criar eventos e ações, com menos chances de cometer erros devido a combinações inválidas de ações. Além disso, a remoção de código desnecessário e a otimização das funcionalidades devem resultar em uma melhor performance do sistema, tornando-o mais responsivo e eficiente. Os desenvolvedores também se beneficiarão dessas mudanças, pois o código ficou mais limpo e fácil de manter, facilitando futuras atualizações e correções. No entanto, é importante monitorar o sistema após essas alterações para garantir que não surjam novos problemas ou bugs.

---
*Post gerado automaticamente a partir dos commits [`6e42bf7`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/6e42bf729830aa2db3b021ce89cd6765ed99472d), [`ed02833`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/ed028333045b27037d6f158b276faf30e5c17d08), [`310bb48`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/310bb48d5e122096ccdb15c23d3b43ab3b8b27f4), [`7548b24`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/7548b248bcaf281d63d42d9d73ef54ca099a4d7e) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*