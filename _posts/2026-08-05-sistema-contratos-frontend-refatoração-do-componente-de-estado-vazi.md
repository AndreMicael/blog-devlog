---
layout: post
title: "Refatoração do componente de estado vazio e ajustes de layout no Sistema-Contratos-Frontend"
date: 2026-08-05 12:45:44 +0000
categories: [Frontend]
tags: ["TypeScript", "React", "UI", "Sistema Contratos Frontend", "feature"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Nesta versão do Sistema-Contratos-Frontend, várias mudanças significativas foram implementadas para melhorar a experiência do usuário e a manutenção do código. As principais mudanças incluem:

- **Refatoração do componente de estado vazio**: Foi criado um componente de estado vazio (EmptyState) para ser usado em todas as abas do sistema. Isso foi feito para padronizar a exibição de mensagens quando não há dados para serem exibidos, melhorando a consistência da interface do usuário. Por exemplo, no arquivo `src/app/(protected)/contratos/_abas/Cadastro.tsx`, o seguinte trecho de código foi alterado para usar o novo componente:
  ```typescript
  if (!contrato) {
    return (
      <EmptyState
        icon={FileX}
        title="Nenhum contrato selecionado"
        description="Selecione um contrato para visualizar as informações de cadastro."
      />
    );
  }
  ```
- **Ajustes de layout e cores**: Foram feitos ajustes nos layouts e nas cores de várias abas do sistema, incluindo Anexos, Anotações, Cadastro e Financeiro, para melhorar a legibilidade e a estética geral da aplicação. Isso inclui a alteração de fontes, tamanhos de texto, espaçamentos e cores de fundo e de texto. Por exemplo, no arquivo `src/app/(protected)/contratos/_abas/Anotacoes.tsx`, as classes de CSS foram ajustadas para melhorar a apresentação da seção de anotações.
- **Padronização de cores dos modais**: Todas as modais do sistema agora seguem um padrão de cores para melhorar a consistência visual. Isso ajuda a criar uma identidade visual forte e facilita a navegação para os usuários. Por exemplo, no arquivo `components/FileUploadModal.tsx`, a cor do ícone de upload foi mudada para `text-white`.
- **Ajustes na animação ao alternar as abas**: Foi adicionada uma pequena animação para quando o usuário alterna entre as abas do sistema, melhorando a experiência do usuário e tornando a transição entre as abas mais suave. Isso foi feito no arquivo `src/app/(protected)/contratos/gerenciar/GerenciarComponents.tsx`.

## Por que foi feito

Essas mudanças foram feitas com o objetivo de melhorar a experiência do usuário, tornando a aplicação mais agradável e fácil de usar. Além disso, a padronização dos componentes e layouts ajuda na manutenção do código, tornando mais fácil para os desenvolvedores entender e modificar a aplicação no futuro.

A criação de um componente de estado vazio centralizado resolveu o problema de inconsistência na exibição de mensagens de vazio, melhorando a coesão visual do sistema. Os ajustes de layout e cores resolveram problemas de legibilidade e estética, melhorando a experiência do usuário. A padronização das cores dos modais e a adição de animações melhoram a percepção da aplicação como um todo, tornando-a mais profissional e atraente.

## Impacto

O impacto dessas mudanças é diretamente percebido pelos usuários, que agora têm uma experiência mais consistente e agradável ao usar o sistema. A aplicação se tornou mais fácil de usar, com uma interface mais intuitiva e atraente. Além disso, os desenvolvedores beneficiam-se da padronização dos componentes e layouts, que facilita a adição de novas funcionalidades e a manutenção do código existente.

Não há riscos significativos associados a essas mudanças, uma vez que elas foram feitas com base em princípios de design e desenvolvimento de software bem estabelecidos. No entanto, é sempre importante realizar testes adequados após realizar mudanças significativas em uma aplicação para garantir que não haja regressões ou problemas inesperados.

---
*Post gerado automaticamente a partir dos commits [`02f9638`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/02f96386fc8525d686fa45ca9da1b5596b4565f1), [`85446dd`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/85446dd8205eb4555ba26fb43032ad3750261aa3), [`4c71cfe`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/4c71cfe988d70625b27ebdecf7f761bb0ed378e1), [`0b73baa`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/0b73baa2078ef1d840e758d619d8e97f7f7dbf67), [`cb8dccc`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/cb8dcccb090c309853eeb566b66c60f797d001e6), [`193a37b`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/193a37b2bb819a792bff3c3e1c8b284e404a0c74) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*