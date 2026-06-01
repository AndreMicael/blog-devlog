---
layout: post
title: "Ajustes e melhorias no Sistema-Contratos-Frontend para pagamentos e cadastros"
date: 2026-06-01 17:19:45 +0000
categories: [Frontend]
tags: ["TypeScript", "Sistema Contratos Frontend", "UI", "React", "feature", "API"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Foram realizados três commits importantes no repositório do Sistema-Contratos-Frontend, visando melhorar a experiência do usuário e a funcionalidade do sistema. Os commits são:

1. **Ajusta saldo da parcela** (`fb06644`): Neste commit, foram feitas alterações no componente `NovoPagamentoComponents.tsx` para ajustar a exibição do saldo da parcela. Foram mudados os textos de "Saldo Parcela" para "Valor Parcela" e de "Já Pago" para "Valor Pago", além de outras melhorias de layout.

```tsx
// Antes
<span className="text-[10px] leading-none font-bold tracking-wider text-zinc-400 uppercase">
  Saldo Parcela
</span>
<span className="mt-1 text-xl font-extrabold text-[#002f49]">
  {formatCurrency(saldoDisponivelParcela)}
</span>

// Depois
<span className="text-[10px] leading-none font-bold tracking-wider text-zinc-400 uppercase">
  Valor Parcela
</span>
<span className="mt-1 text-xl font-extrabold text-[#002f49]">
  {formatCurrency(totalParcela)}
</span>
```

2. **Adiciona inclusao de pagamento da parcela** (`ab63602`): Este commit adicionou funcionalidades para incluir pagamentos de parcelas, afetando vários arquivos do sistema. Foram adicionadas linhas de código para tratar a inclusão de pagamentos e melhorar a exibição de informações financeiras.

```tsx
// Antes
const valorPago = toNumber(contrato.financeiro?.valor_pago ?? contrato.valor_pago) ?? 0;

// Depois
const valorPago = toNumber(
  contrato.financeiro?.valor_executado ?? contrato.valor_executado,
) ?? 0;
```

3. **Adiciona cadastro de informações bancárias** (`af25faf`): Neste commit, foram feitas alterações para incluir o cadastro de informações bancárias, melhorando a funcionalidade de cadastro de instituições.

```tsx
// Antes
import React, { useEffect, useState, useRef, useCallback } from "react";

// Depois
import React, { useCallback, useEffect, useRef, useState } from "react";
import { Input } from "@/components/Input";
import { Select } from "@/components/Select";
```

## Por que foi feito

As mudanças foram necessárias para melhorar a experiência do usuário e a funcionalidade do sistema. O ajuste do saldo da parcela visa tornar a informação mais clara e precisa. A inclusão de pagamento de parcelas é fundamental para a gestão financeira dos contratos. O cadastro de informações bancárias é essencial para a inclusão de instituições e para a gestão de pagamentos.

## Impacto

As mudanças realizadas terão um impacto positivo no sistema, melhorando a experiência do usuário e a funcionalidade do sistema. Os usuários poderão visualizar informações mais precisas sobre os saldos das parcelas e realizar pagamentos de forma mais eficiente. Além disso, a inclusão de informações bancárias permitirá uma gestão mais completa dos contratos e instituições.

É importante notar que as mudanças podem ter um impacto nos testes e na validação do sistema, portanto, é fundamental realizar testes rigorosos para garantir que as mudanças não tenham introduzido bugs ou problemas de compatibilidade. Além disso, é recomendável realizar uma revisão detalhada do código para garantir que as mudanças sejam consistentes com as boas práticas de desenvolvimento.

---
*Post gerado automaticamente a partir dos commits [`fb06644`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/fb066448b78350cfbab4a32292cdcf5fd5070bbe), [`ab63602`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/ab63602dc1b3f665fca720e01aa65eda6b6a4f2a), [`af25faf`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/af25fafa0f1892e91fe6e2680d2c5a289ff02cd2) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*