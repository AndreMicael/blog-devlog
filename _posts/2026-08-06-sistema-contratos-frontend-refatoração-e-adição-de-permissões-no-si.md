---
layout: post
title: "Refatoração e Adição de Permissões no Sistema de Contratos"
date: 2026-08-06 21:13:54 +0000
categories: [Frontend]
tags: ["React", "UI", "Sistema Contratos Frontend", "banco de dados", "TypeScript", "bugfix"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

===========================================================

## O que foi feito

Foram realizadas várias alterações no repositório "Sistema-Contratos-Frontend" com o objetivo de melhorar a gestão de permissões e refatorar o código para maior clareza e manutenção.

- **Commit 1**: Atualização do esquema do Prisma para incluir novas permissões relacionadas a finanças, como `CONTRATO_FINANCEIRO_NOTAS` e `CONTRATO_FINANCEIRO_PARCELA`.
- **Commit 2**: Adição de subitens "Notas Fiscais" e "Parcelas" nas permissões de financeiro no componente `permissoesConfig.ts`.
- **Commit 3**: Ajustes na tabela de fiscalizações para resolver bugs de edição e exclusão.
- **Commit 4**: Adição de validação de cadastro, edição e exclusão de anexos no componente `Anexos.tsx`.
- **Commit 5**: Adição de validação de permissão do usuário para acessar a página de edição de fiscalizações.
- **Commit 6**: Adição de validação de permissão para edição, cadastro e exclusão de fiscalizações.
- **Commit 7**: Adição de validação de permissão para cadastro de eventos.
- **Commit 8**: Adição de validação de permissão para cadastro de contratos.
- **Commit 9**: Adição de validações de permissão nas opções do menu dos eventos.
- **Commit 10**: Adição de validações de permissão para cadastro, edição e exclusão de eventos.

Arquivos alterados incluem:
- `prisma/schema.prisma`
- `src/app/generated/prisma/enums.ts`
- `src/app/(protected)/configuracoes/_components/permissoesConfig.ts`
- `src/app/(protected)/contratos/_abas/Fiscalizacoes.tsx`
- `src/app/(protected)/contratos/_abas/Anexos.tsx`
- `src/app/(protected)/contratos/gerenciar/fiscalizar/editar/[idContrato]/[idFiscalizacao]/page.tsx`
- `src/app/(protected)/contratos/_abas/Fiscalizacoes.tsx`
- `src/app/(protected)/contratos/gerenciar/[id]/eventos/novo/page.tsx`
- `src/app/(protected)/contratos/ContratosPageComponents.tsx`
- `src/app/(protected)/contratos/_components/MenuAditivo.tsx`
- `src/app/(protected)/contratos/_abas/Eventos.tsx`

Exemplos de código alterado incluem a adição de permissões no `prisma/schema.prisma`:
```prisma
enum permissoes {
  // ...
  CONTRATO_FINANCEIRO_NOTAS_todos
  CONTRATO_FINANCEIRO_NOTAS_visualizar
  CONTRATO_FINANCEIRO_NOTAS_cadastro
  CONTRATO_FINANCEIRO_NOTAS_alterar
  CONTRATO_FINANCEIRO_NOTAS_excluir
  CONTRATO_FINANCEIRO_PARCELA_todos
  CONTRATO_FINANCEIRO_PARCELA_visualizar
  CONTRATO_FINANCEIRO_PARCELA_cadastro
  CONTRATO_FINANCEIRO_PARCELA_alterar
  CONTRATO_FINANCEIRO_PARCELA_excluir
}
```
E a validação de permissão no componente `Anexos.tsx`:
```typescript
const podeCadastrar = hasPermission(user?.permissoes, [
  "CONTRATO_ANEXOS_cadastro",
  "CONTRATO_ANEXOS_todos",
]);

if (!podeCadastrar) {
  // Ação caso o usuário não tenha permissão para cadastrar anexos
}
```

## Por que foi feito

As mudanças foram feitas para melhorar a segurança e a gestão de permissões no sistema de contratos. Com a adição de novas permissões e a validação de permissões em vários componentes, o sistema agora pode controlar com mais precisão quais ações os usuários podem realizar. Isso ajuda a prevenir acessos não autorizados e garante que apenas usuários com as devidas permissões possam realizar ações sensíveis, como cadastro, edição e exclusão de contratos, anexos e eventos.

Além disso, as refatorações realizadas ajudam a manter o código organizado e mais fácil de entender, facilitando a manutenção e a adição de novas funcionalidades no futuro.

---
*Post gerado automaticamente a partir dos commits [`2fe9a11`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/2fe9a117f03a38539e481681f453889eae17a7ad), [`4cefd56`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/4cefd56e4c312e9b6133c37c0385c26479b84c72), [`3e040ed`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/3e040ed339975cbcc29e6e600525ce11c20700d8), [`fd4b4b6`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/fd4b4b6b864b5ad56c779a8568fd946d3e766268), [`ddc307f`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/ddc307f0be349b8051c6ac7a63e8cd5a3ef614c6), [`5316d05`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/5316d05760dd1618257bff6e56fd2dfd373020b6), [`c66eaf0`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/c66eaf08bfc92f42c53d20c9adb678cec79127b7), [`0fdd04a`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/0fdd04a313abade09bc3121bc7a02eba2c764c83), [`ff958a1`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/ff958a1511e9de42cd29076d675f03291b359461), [`46acdf3`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/46acdf37316a43c3a70bff84d9c8cad967b66923) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*