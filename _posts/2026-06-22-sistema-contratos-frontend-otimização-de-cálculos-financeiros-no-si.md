---
layout: post
title: "Otimização de Cálculos Financeiros no Sistema de Contratos"
date: 2026-06-22 21:09:14 +0000
categories: [Frontend]
tags: ["TypeScript", "React", "API", "feature", "Sistema Contratos Frontend", "UI"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

Neste artigo, vamos abordar as mudanças implementadas no repositório "Sistema-Contratos-Frontend" para otimizar os cálculos financeiros dos contratos. Essas mudanças visam melhorar a precisão e a eficiência dos cálculos, além de proporcionar uma melhor experiência para os usuários.

## O que foi feito

Foram realizadas várias alterações nos arquivos `DashboardMetricasFinanceiras.tsx`, `Anotacoes.tsx`, `GerenciarComponents.tsx` e `page.tsx` para ajustar os cálculos financeiros. Aqui estão os principais pontos:

- **Ajuste do cálculo de `totalPeriodos`**: No arquivo `DashboardMetricasFinanceiras.tsx`, o cálculo de `totalPeriodos` foi alterado para considerar a soma dos períodos ao invés dos aditivos. Isso foi feito para garantir que os cálculos sejam precisos e consistentes.
- **Adição de `handleCreateEventos`**: No arquivo `Anotacoes.tsx`, foi adicionada a função `handleCreateEventos` para lidar com a criação de novos eventos.
- **Ajuste do erro no input de valor**: No arquivo `page.tsx`, foi corrigido um erro no input de valor para garantir que os valores sejam inseridos corretamente.

Além disso, foram adicionadas novas funções e tipos para lidar com os cálculos financeiros, como `ContratoEventoImpacto`, `ContratoEventoAcao` e `ContratoPeriodo`. Essas funções e tipos ajudam a organizar e simplificar os cálculos, tornando o código mais legível e manutenível.

```typescript
// Exemplo de código alterado
const totalPeriodos = data?.periodos?.reduce(
  (total, p) => total + Number(p.valor_periodo ?? 0),
  0,
);
```

## Por que foi feito

As mudanças foram feitas para resolver problemas de precisão nos cálculos financeiros e melhorar a experiência do usuário. Com as alterações, os cálculos são mais precisos e consistentes, e os usuários podem inserir valores de forma mais precisa.

Além disso, as mudanças ajudam a preparar o sistema para novas funcionalidades e melhorias, como a adição de novos tipos de eventos e cálculos financeiros.

## Impacto

As mudanças têm um impacto positivo no sistema, melhorando a precisão e a eficiência dos cálculos financeiros. Os usuários podem agora inserir valores de forma mais precisa, e o sistema pode lidar com cálculos mais complexos.

No entanto, é importante notar que as mudanças podem afetar a compatibilidade com versões anteriores do sistema, e é recomendável testar o sistema thoroughly após a implementação das mudanças.

Em resumo, as mudanças implementadas no repositório "Sistema-Contratos-Frontend" visam melhorar a precisão e a eficiência dos cálculos financeiros, proporcionando uma melhor experiência para os usuários. Com as alterações, o sistema está mais preparado para lidar com cálculos complexos e novas funcionalidades.

---
*Post gerado automaticamente a partir dos commits [`721dc5c`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/721dc5cd01995252c4153841d9d9960663b0084b), [`462c49c`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/462c49c1f2e9e7e0ca4e52b3d39f92aeda329f55), [`76f967b`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/76f967b8fd18f4bfa5d19efd75d8dcc0c1cb31ca), [`e49bb8c`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/e49bb8ca0ae90935980dbc21ee7248f84e7fe437) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*