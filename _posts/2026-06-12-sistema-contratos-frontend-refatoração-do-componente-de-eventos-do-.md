---
layout: post
title: "Refatoração do componente de eventos do contrato para melhor UX"
date: 2026-06-12 21:53:16 +0000
categories: [Frontend]
tags: ["TypeScript", "feature", "UI", "React", "Sistema Contratos Frontend", "API"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Nessa série de commits, realizamos uma refatoração significativa no componente de eventos do contrato no repositório Sistema-Contratos-Frontend. Os principais objetivos étaient melhorar a experiência do usuário (UX) e tornar o código mais eficiente e escalável.

Os principais arquivos alterados incluem `src/app/(protected)/contratos/gerenciar/[id]/eventos/novo/page.tsx`, onde foram feitas modificações substantivas para ajustar a lógica de eventos e campo por ação, e `src/app/api/evento-acoes/get/route.ts`, que foi atualizado para refletir as mudanças na estrutura de dados.

Entre as mudanças, destacam-se:
- **Finalização da lista de CamposPorAcao**: Foi concluída a lista de campos por ação, proporcionando uma estrutura mais completa e organizada para lidar com diferentes tipos de ações em eventos de contrato.
- **Adição de labels/títulos para as ações no frontend**: Melhorou-se a apresentação, agora exibindo labels ou títulos para as ações, tornando o componente mais intuitivo para os usuários.
- **Ajustes nos componentes para puxar da listaComCampos**: Foram feitos ajustes para que os componentes sejam alimentados pela lista de campos por ação, promovendo uma maior coesão e reutilização de código.
- **Ajustes no frontend para receber as ações dos eventos**: Ajustamos a interface do usuário para receber e processar as ações de eventos de maneira mais eficiente, melhorando a conexão entre o backend e o frontend.

Exemplos de código que ilustram as mudanças incluem:
```typescript
// Exemplo de mudança na estrutura de CamposPorAcao
const CamposPorAcao: Record<string, CampoAcao[]> = {
  prorrogar_execucao: [
    {
      nome: "data_execucao",
      label: "Data de Execução",
      tipo: "date",
      obrigatorio: true,
    },
  ],
  // ...
};

// Exemplo de adição de label_evento
const EventoAcao = {
  id: number;
  id_contrato_evento_acao?: number;
  tipo_evento: string;
  acao: string;
  label_evento: string; // Novo campo adicionado
  campos: CampoAcao[];
};
```

## Por que foi feito

Essas mudanças foram feitas para atender a várias necessidades:
- **Melhoria da UX**: Com a adição de labels e a refatoração do componente de eventos, busca-se melhorar a experiência do usuário, tornando o sistema mais intuitivo e fácil de usar.
- **Preparação para novas funcionalidades**: As alterações na estrutura de dados e na lógica do componente de eventos visam preparar o sistema para a inclusão de novas funcionalidades relacionadas a eventos de contrato, melhorando a escalabilidade do código.
- **Correção de bugs e otimização**: Alguns commits também abordaram a correção de bugs e a otimização do desempenho, garantindo que o sistema permaneça estável e eficiente.

## Impacto

As mudanças têm um impacto significativo na forma como os usuários interagem com o sistema, especialmente no que diz respeito à gestão de eventos de contrato. Os principais impactos incluem:
- **Melhoria na usabilidade**: A adição de labels para as ações e a reorganização do componente de eventos devem tornar o sistema mais fácil de usar, reduzindo a curva de aprendizado para novos usuários.
- **Flexibilidade e escalabilidade**: As alterações na estrutura de dados e na lógica do componente permitem uma maior flexibilidade para incluir novos tipos de eventos e ações, melhorando a capacidade do sistema de se adaptar a novas necessidades.
- **Manutenibilidade**: A refatoração do código visa melhorar a legibilidade e a manutenibilidade, tornando mais fácil para os desenvolvedores entender e modificar o código no futuro.

No entanto, é importante considerar que mudanças significativas como essas também podem introduzir novos riscos, como a possibilidade de bugs ou incompatibilidades não detectadas. Portanto, é crucial realizar testes rigorosos para garantir a estabilidade e a funcionalidade do sistema após essas alterações.

---
*Post gerado automaticamente a partir dos commits [`4c90ec8`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/4c90ec8468f90eac83c7a1184d7e8905e9a77163), [`17bb22c`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/17bb22c310d1c1786a9c1a0a1834f2d441a770f3), [`48089e3`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/48089e33d6f8cb391130d80629758227299477f5), [`208b930`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/208b9302113698f6a937d8d904194033480a59a8), [`10293b4`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/10293b44bcb534d24c6324273739ab60679eacec), [`7402f60`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/7402f60e32065d401ce171835f68c23f567a9514) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*