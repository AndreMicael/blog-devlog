---
layout: post
title: "Implementação de Funcionalidades Avançadas no Sistema-Contratos-Frontend"
date: 2026-05-26 14:35:58 +0000
categories: [Frontend]
tags: ["feature", "UI", "Sistema Contratos Frontend", "banco de dados", "TypeScript", "API"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

=================================================================

Neste artigo, vamos explorar as recentes mudanças implementadas no repositório "Sistema-Contratos-Frontend", com foco nas melhorias e adições significativas que visam aprimorar a experiência do usuário e a eficiência do sistema.

## O que foi feito

Para entender as mudanças, vamos mergulhar nos detalhes de cada commit relevante.

- **Commit 1be3c2b**: Foi realizado um ajuste no arquivo `ModalAditivo.tsx`, alterando a definição do tipo `ModalAditivoBaseProps` para incluir a propriedade `acao` do tipo `AcaoEdicao`. Isso significa que o modal agora pode lidar com diferentes ações de edição relacionadas a aditivos de contratos.

  ```typescript
  type ModalAditivoBaseProps = {
    acao: AcaoEdicao;
    closeModal: React.Dispatch<React.SetStateAction<null>>;
    idContrato: string;
    aditivo?: ContratoAditivo;
  };
  ```

- **Commit fcd5e51**: Foram feitos ajustes no arquivo `Financeiro.tsx`, incluindo a adição do ícone `CalendarRange` e a reorganização do mapa de meses (`monthMapAbrNum`) para fora do componente `InstallmentRow`.

  ```typescript
  const monthMapAbrNum: Record<number, string> = {
    1: "jan",
    2: "fev",
    3: "mar",
    4: "abr",
    5: "mai",
    6: "jun",
    7: "jul",
    8: "ago",
    9: "set",
    10: "out",
    11: "nov",
    12: "dez",
  };
  ```

  Além disso, houve mudanças na forma como os dados de parcelas são recuperados e manipulados, com a adição de estados para `activeYearFilter` e `selectedMesRef`, e a utilização de hooks como `useContratoParcelas`.

- **Commit 3129b72**: O arquivo `Financeiro.tsx` passou por uma grande revisão, com a adição de funcionalidades para lidar com parcelas, incluindo a utilização de hooks como `useContratoParcelas`, `useCreateContratoParcela`, `useUpdateContratoParcela`, e `useDeleteContratoParcela`. Isso possibilita a criação, edição e exclusão de parcelas de forma mais eficiente.

- **Commit e3297a4**: Foram realizadas alterações no modelo de dados do Prisma, adicionando novos campos e relacionamentos para melhor acomodar as necessidades do sistema, especialmente em relação a notas fiscais e fiscalização de contratos.

## Por que foi feito

As mudanças foram motivadas pela necessidade de melhorar a usabilidade e a funcionalidade do sistema de gestão de contratos. Com a adição de novas funcionalidades e a melhoria das existentes, o objetivo é reduzir a complexidade para os usuários finais e aumentar a eficiência operacional.

A inclusão de funcionalidades de CRUD (criar, ler, atualizar, deletar) para parcelas de contratos permite uma gestão mais precisa e flexível dos pagamentos e recebimentos, reduzindo erros manuais e melhorando a transparência.

## Impacto

O impacto dessas mudanças é multifacetado:

- **Melhoria da Experiência do Usuário**: Com interfaces mais intuitivas e funcionalidades mais robustas, os usuários podem navegar e gerenciar os contratos com maior facilidade, reduzindo o tempo de aprendizado e aumentando a produtividade.

- **Eficiência Operacional**: A automação de processos e a redução de erros manuais contribuem para uma gestão mais eficiente dos contratos, permitindo que as equipes se concentrem em atividades de maior valor.

- **Flexibilidade e Escalabilidade**: As mudanças no modelo de dados e na arquitetura do sistema prepararam o terreno para futuras expansões e melhorias, permitindo que o sistema se adapte às necessidades em constante evolução dos usuários.

Em resumo, as mudanças implementadas no Sistema-Contratos-Frontend visam melhorar significativamente a experiência do usuário e a eficiência operacional, preparando o sistema para atender às demandas crescent

---
*Post gerado automaticamente a partir dos commits [`1be3c2b`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/1be3c2bfb5a05a710688fcacc6f198c83d15002f), [`fcd5e51`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/fcd5e51ff73b73e863c381fc8116aeb289ec30a2), [`3129b72`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/3129b727ef888d987aae77cce890454909cf1c00), [`e3297a4`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/e3297a40c40180b1d0ec7d47d133b15728ffb8e2), [`cbb3f83`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/cbb3f832870d03b0b59065f67d8bd1e1b11ebb54), [`5d60ed8`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/5d60ed89b889eb9b4e22478236ce257587217849), [`b426981`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/b42698120f770431e30ba4363f63bd1e792e4144) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*