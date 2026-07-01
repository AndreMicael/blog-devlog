---
layout: post
title: "Refatoração do Sistema de Eventos e Correção de Erros no Frontend do Sistema de Contratos"
date: 2026-06-30 20:37:49 +0000
categories: [Frontend]
tags: ["UI", "API", "Sistema Contratos Frontend", "React", "TypeScript", "feature"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Nesta atualização, várias mudanças importantes foram realizadas no repositório do Sistema-Contratos-Frontend. Os commits `3818eb8`, `6f802bf` e `af756d9` trazem ajustes em eventos, correções de erros de cálculo e melhorias na fetch de dados para o modal de adicionar data de assinatura e publicação.

- No commit `3818eb8`, houve uma refatoração significativa no arquivo `Eventos.tsx`, que é parte do componente de abas de eventos. Esse arquivo teve várias linhas removidas e adicionadas, indicando uma reestruturação do código. Por exemplo, a função `Section` sofreu mudanças, especialmente na forma como é tratada a abertura do modal e como os eventos são renderizados.
  
  ```jsx
  function Section({
    title,
    children,
    evento,
  }: {
    title: string;
    children: React.ReactNode;
    evento: ContratoEvento;
  }) {
    // ...
  }
  ```

- No commit `6f802bf`, o arquivo `DashboardMetricasFinanceiras.tsx` foi alterado para ajustar um erro de cálculo. A mudança corrigiu a forma como o valor executado e o total de períodos são calculados, impactando diretamente o saldo atual e o valor acumulado.
  
  ```jsx
  const saldoAtual = totalPeriodos
    ? totalPeriodos - valorExecutado
    : Number(fin?.valor_contrato ?? 0) - valorExecutado;
  ```

- No commit `af756d9`, houve mais ajustes no arquivo `Eventos.tsx`, especialmente em como os dados são fetchados e renderizados para o modal de aditivos. Isso inclui a forma como as ações e impactos são exibidos.

  ```jsx
  function renderResumoAcao(
    acao: ContratoEventoAcao,
    impacto?: ContratoEventoImpacto,
  ) {
    // ...
  }
  ```

## Por que foi feito

Essas mudanças foram feitas para melhorar a usabilidade do sistema, corrigir erros que estavam causando problemas para os usuários e preparar o sistema para novas funcionalidades. A refatoração do componente de eventos visa tornar a interface mais intuitiva e eficiente, enquanto as correções de erros de cálculo são cruciais para manter a precisão dos dados financeiros. Além disso, os ajustes na fetch de dados ajudam a garantir que as informações sejam atualizadas e consistentes, melhorando a experiência do usuário.

O problema que estava sendo resolvido é a necessidade de manter o sistema atualizado, correto e otimizado. Com essas mudanças, o sistema de contratos frontend se torna mais confiável e fácil de usar, o que é essencial para os usuários que dependem dele para gerenciar contratos e acompanhar eventos relacionados.

## Impacto

O impacto prático dessas mudanças é significativo. Os usuários do sistema de contratos frontend agora terão uma experiência mais suave e menos propensa a erros. A correção dos erros de cálculo e a melhoria na exibição de dados financeiros garantem que as decisões sejam baseadas em informações precisas. Além disso, a refatoração do componente de eventos melhora a usabilidade, tornando mais fácil para os usuários encontrar e interagir com as informações que necessitam.

No entanto, como em qualquer mudança significativa, é importante testar o sistema completamente para garantir que não houve regressões ou novos problemas introduzidos. Os desenvolvedores e testadores devem verificar se todas as funcionalidades continuam funcionando como esperado, especialmente aquelas relacionadas aos cálculos financeiros e à renderização de eventos. Com esses testes em lugar, o sistema de contratos frontend estará mais robusto e pronto para atender às necessidades dos usuários de forma eficaz.

---
*Post gerado automaticamente a partir dos commits [`3818eb8`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/3818eb8edd091e20f58c88280b21d08efa19d9c7), [`6f802bf`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/6f802bf36da97ef39e6dec7b9044bf7187e7eef5), [`af756d9`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/af756d919856c288ba543c32a5ae442c0ea768e8) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*