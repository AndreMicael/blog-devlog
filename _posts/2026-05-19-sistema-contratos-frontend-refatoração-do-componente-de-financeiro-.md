---
layout: post
title: "Refatoração do componente de financeiro e adição de novas funcionalidades no Sistema-Contratos-Frontend"
date: 2026-05-19 13:24:55 +0000
categories: [Frontend]
tags: ["bugfix", "banco de dados", "Sistema Contratos Frontend", "refatoração", "API", "React"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

As últimas atualizações no repositório Sistema-Contratos-Frontend trouxeram uma série de melhorias e expandiram as funcionalidades do sistema. Neste artigo, vamos nos concentrar nas principais mudanças feitas, incluindo a refatoração do componente de financeiro, adição de novas abas e melhorias na dashboard.

- **Refatoração do componente de financeiro**: A refatoração do componente de financeiro (`Financeiro.tsx`) teve como objetivo simplificar a exibição e cálculos financeiros. Agora, o componente utiliza o `DashboardMetricasFinanceiras` para exibir métricas financeiras de forma mais clara e direta. Isso não apenas melhora a experiência do usuário, mas também simplifica o código, tornando-o mais fácil de manter e atualizar.

- **Adição da aba de anotações**: Uma nova aba de anotações foi adicionada, permitindo que os usuários adicionem e gerenciem anotações relacionadas a contratos específicos. Esta funcionalidade é útil para registrar observações, notificações ou qualquer informação adicional que possa ser necessária durante o ciclo de vida de um contrato.

- **Melhorias na dashboard**: A dashboard do sistema foi melhorada para proporcionar uma visão geral mais completa e intuitiva dos contratos. Isso inclui a exibição de dados importantes, como o valor inicial, valor pago e valor acumulado dos contratos, além de indicadores de progresso.

- **Correções de bugs e melhorias de desempenho**: Vários bugs foram corrigidos, melhorando a estabilidade e a performance do sistema. Isso inclui a correção de problemas com a listagem de parcelas, ajustes na lógica de atualização dos dados e otimizações no carregamento de informações.

- **Atualizações no modelo de dados do Prisma**: O modelo de dados do Prisma foi atualizado para incluir novos campos no modelo `contrato_aditivo`, como a justificativa de exclusão. Isso é parte dos esforços para manter o modelo de dados alinhado com as necessidades do sistema e garantir a consistência dos dados.

## Por que foi feito

As mudanças feitas no Sistema-Contratos-Frontend visam melhorar a experiência do usuário, aumentar a eficiência no gerenciamento de contratos e fornecer uma plataforma mais robusta e escalável. A refatoração do componente de financeiro, por exemplo, foi necessária para garantir que as informações financeiras sejam exibidas de forma clara e fácil de entender, reduzindo o tempo necessário para que os usuários obtenham insights importantes.

A adição da aba de anotações foi motivada pela necessidade de fornecer um espaço para que os usuários possam documentar informações adicionais sobre os contratos. Isso ajuda a manter todas as informações relevantes em um só lugar, melhorando a organização e a colaboração entre os membros da equipe.

As melhorias na dashboard foram feitas para proporcionar uma visão geral mais completa dos contratos, permitindo que os usuários monitorem facilmente o andamento dos contratos e tomem decisões informadas com base nos dados disponíveis.

## Impacto

Os usuários do Sistema-Contratos-Frontend devem notar uma melhoria significativa na usabilidade e na capacidade de gerenciar contratos de forma eficiente. A refatoração do componente de financeiro e a adição de novas funcionalidades devem reduzir o tempo necessário para executar tarefas comuns e melhorar a precisão dos dados financeiros.

A inclusão da aba de anotações fornece um recurso importante para a documentação e a colaboração, tornando mais fácil para as equipes manterem um registro detalhado de todas as informações relacionadas a um contrato.

As melhorias na dashboard proporcionam uma visão geral mais clara e intuitiva dos contratos, facilitando o monitoramento e a gestão. Isso, combinado com as correções de bugs e melhorias de desempenho, resulta em uma experiência de usuário mais fluida e produtiva.

Em resumo, as mudanças feitas no Sistema-Contratos-Frontend visam aumentar a eficiência, a produtividade e a satisfação do usuário, proporcionando uma plataforma mais robusta e escalável para o gerenciamento de contratos.

---
*Post gerado automaticamente a partir dos commits [`0c704d9`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/0c704d9dea8bf2a4f0babfdf2f18f6e38af2b19a), [`c836244`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/c8362449e4d4a19d16e7d1a16a3f85826d007e5f), [`54f41a3`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/54f41a375ee0c1339eb1632da810f12b84ab90bc), [`f14b038`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/f14b038f116beb4db5adeb69ba18148b6529c75e), [`a2ee406`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/a2ee40608d424dcea3296031ac534c9894501a6e), [`e54de86`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/e54de86d9f04c68e8467899ff7967c921d932385), [`8c75c51`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/8c75c51ecae0f623971204749a4353726a5b2f01), [`a871615`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/a871615a3fb9041fb052d980d07e6fdf96c9514e), [`ac164f1`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/ac164f1a9bf18520da850a62b54df78ebdc9c2b8), [`e42d91f`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/e42d91f1bec252c921a5957f6c2b188b0fac8aed) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*