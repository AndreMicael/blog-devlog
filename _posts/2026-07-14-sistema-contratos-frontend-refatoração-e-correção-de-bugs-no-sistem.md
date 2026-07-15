---
layout: post
title: "Refatoração e Correção de Bugs no Sistema de Contratos Frontend"
date: 2026-07-14 18:42:01 +0000
categories: [Frontend]
tags: ["TypeScript", "React", "Sistema Contratos Frontend", "UI", "bugfix", "API"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Recentemente, fizemos uma série de mudanças importantes no repositório "Sistema-Contratos-Frontend" para melhorar a estabilidade e a usabilidade do sistema. Essas mudanças incluem atualizações na página de criar evento, ajustes no valor atualizado e correção de bugs.

### Atualizações na Página de Criar Evento

No commit `543f4ca`, fizemos várias atualizações na página de criar evento. Isso incluiu a adição de novos ícones, como o `Ban`, e a melhoria da lógica de salvamento de ações. Além disso, adicionamos verificações para garantir que os campos obrigatórios sejam preenchidos antes de salvar um evento.

```jsx
if (acao.acao === "Repactuação") {
  if (
    periodoAtual?.valor_periodo === null ||
    periodoAtual?.valor_periodo === undefined
  ) {
    showToast("O período é obrigatório para a repactuação", "error");
    return;
  }

  // ... outras verificações
}
```

### Ajustes no Valor Atualizado

No commit `ed5cc1b`, fizemos ajustes no valor atualizado. Isso incluiu a atualização do modelo de contrato financeiro para remover o campo `valor_atualizado` e a melhoria da lógica de calculo do valor atualizado.

```prisma
model contrato_financeiro {
  // ...
  valor_contrato                Decimal                  @default(0) @db.Decimal(18, 2)
  // valor_atualizado              Decimal                  @default(0) @db.Decimal(18, 2)
  // ...
}
```

### Correção de Bugs

No commit `3699024`, corrigimos um bug que afetava a criação de eventos. Isso incluiu a atualização da lógica de envio de formulários e a melhoria da verificação de erros.

```jsx
if (documento) {
  formData.append("file", documento);
}
```

## Por que foi feito

Essas mudanças foram feitas para melhorar a estabilidade e a usabilidade do sistema. A atualização na página de criar evento foi feita para garantir que os usuários possam criar eventos de forma mais eficiente e segura. A correção de bugs foi feita para garantir que o sistema funcione corretamente e sem erros.

Além disso, essas mudanças também foram feitas para preparar o sistema para futuras funcionalidades e melhorias. A atualização do modelo de contrato financeiro, por exemplo, foi feita para permitir a adição de novos campos e funcionalidades no futuro.

## Impacto

Essas mudanças têm um impacto positivo no sistema e nos usuários. A atualização na página de criar evento melhora a experiência do usuário e reduz o tempo necessário para criar eventos. A correção de bugs garante que o sistema funcione corretamente e sem erros.

Além disso, essas mudanças também têm um impacto positivo na manutenção e atualização do sistema. A atualização do modelo de contrato financeiro, por exemplo, permite que os desenvolvedores adicionem novos campos e funcionalidades de forma mais fácil e eficiente.

No entanto, é importante notar que essas mudanças também podem ter um impacto negativo se não forem testadas e validadas corretamente. É importante testar o sistema após fazer mudanças para garantir que elas não causem problemas ou erros.

Em resumo, as mudanças feitas no repositório "Sistema-Contratos-Frontend" são importantes para melhorar a estabilidade e a usabilidade do sistema. Elas têm um impacto positivo nos usuários e na manutenção do sistema, mas é importante testá-las e validá-las corretamente para evitar problemas ou erros.

---
*Post gerado automaticamente a partir dos commits [`543f4ca`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/543f4ca6244e897fd0cc3c422320b0fae9e206ed), [`ed5cc1b`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/ed5cc1b7004422eb8ec5eeaf08991eeae7b6ede0), [`3699024`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/36990248b2e2cc73ace3673f2be91d7c1dbb5fab) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*