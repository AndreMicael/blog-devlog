---
layout: post
title: "Refatoração da Tabela de Permissões e Configurações no Sistema-Contratos-Frontend"
date: 2026-07-30 18:52:13 +0000
categories: [Frontend]
tags: ["banco de dados", "Sistema Contratos Frontend", "TypeScript", "React", "UI", "testes"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Foram realizadas mudanças significativas nos arquivos relacionados à tabela de permissões e configurações no repositório Sistema-Contratos-Frontend. Os arquivos `PermissoesTable.tsx`, `permissoesConfig.ts` e `prisma/schema.prisma` foram alterados para melhorar a estrutura e o funcionamento das permissões no sistema.

No arquivo `PermissoesTable.tsx`, foram feitas alterações na estrutura da tabela de permissões. O campo "incluir" foi renomeado para "cadastro" para melhor refletir a ação realizada. Além disso, foram removidas algumas linhas de código desnecessárias para tornar o código mais conciso.

```tsx
const acoesBasicas: AcaoPermissao[] = [
  "visualizar",
  "cadastro",
  "alterar",
  "excluir",
];
```

No arquivo `permissoesConfig.ts`, foram realizadas alterações na configuração das permissões. O array `ACOES_PERMISSAO` foi atualizado para refletir as mudanças feitas no arquivo `PermissoesTable.tsx`. Além disso, foram removidas algumas permissões desnecessárias para simplificar a configuração.

```ts
export const ACOES_PERMISSAO: AcaoPermissao[] = [
  "todos",
  "cadastro",
  "visualizar",
  "alterar",
  "excluir",
];
```

No arquivo `prisma/schema.prisma`, foram feitas alterações na modelagem dos dados para refletir as mudanças feitas nos arquivos anteriores. A relação entre as tabelas foi ajustada para garantir a consistência dos dados.

```prisma
model Usuario {
  // ...
  grupo_Usuario_id_grupoTogrupo                                 grupo?                              @relation("Usuario_id_grupoTogrupo", fields: [id_grupo], references: [id_grupo], onDelete: NoAction, map: "fk_usuario_grupo")
  // ...
}
```

## Por que foi feito

As mudanças foram realizadas para melhorar a estrutura e o funcionamento das permissões no sistema. O objetivo era simplificar a configuração das permissões e tornar o código mais conciso e fácil de entender. Além disso, as alterações ajudaram a garantir a consistência dos dados e a prevenir erros de permissão.

## Impacto

As mudanças realizadas terão um impacto positivo no sistema. A simplificação da configuração das permissões ajudará a reduzir os erros de permissão e a tornar o sistema mais fácil de usar. Além disso, as alterações feitas nos arquivos ajudaram a melhorar a estrutura do código e a torná-lo mais fácil de entender e manter.

No entanto, é importante notar que as mudanças podem afetar a compatibilidade com versões anteriores do sistema. Por isso, é recomendável testar o sistema após as mudanças para garantir que tudo esteja funcionando corretamente.

Em resumo, as mudanças realizadas no repositório Sistema-Contratos-Frontend foram feitas para melhorar a estrutura e o funcionamento das permissões no sistema. As alterações ajudaram a simplificar a configuração das permissões, garantir a consistência dos dados e prevenir erros de permissão. O impacto das mudanças será positivo e ajudará a tornar o sistema mais fácil de usar e manter.

---
*Post gerado automaticamente a partir dos commits [`a51b895`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/a51b89568fd2b39daf4bae5c9b4aae1bf92dbef8), [`1e7edb5`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/1e7edb5a3a23194a018b770ab54af7d58f72448e) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*