---
layout: post
title: "Atualização do schema Prisma com categoria FISCALIZACAO em notificações"
date: 2026-07-27 13:32:03 +0000
categories: [Frontend]
tags: ["TypeScript", "Sistema Contratos Frontend", "banco de dados"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

O repositório Sistema-Contratos-Frontend sofreu uma atualização significativa com o commit `a584ba4`, realizado em 2026-07-27T13:32:03Z. Este commit teve como objetivo atualizar o schema Prisma com a categoria FISCALIZACAO nas notificações, refletindo mudanças importantes na estrutura de dados da aplicação.

## O que foi feito

As mudanças foram realizadas em quatro arquivos principais: `prisma/schema.prisma`, `src/app/generated/prisma/enums.ts`, `src/app/generated/prisma/internal/class.ts` e `src/app/generated/prisma/models/contrato_anexo.ts`. A atualização mais notável foi feita no arquivo `prisma/schema.prisma`, onde a relação entre o modelo `Usuario` e o modelo `grupo` foi alterada de `onDelete: Restrict` para `onDelete: NoAction` no campo `grupo_Usuario_id_grupoTogrupo`. Além disso, uma nova relação foi estabelecida entre o modelo `contrato_anexo` e o modelo `contrato_anotacao`, com a adição do campo `contrato_anotacao` no modelo `contrato_anexo`.

```prisma
model Usuario {
  // ...
  grupo_Usuario_id_grupoTogrupo                                 grupo?                              @relation("Usuario_id_grupoTogrupo", fields: [id_grupo], references: [id_grupo], onDelete: NoAction, map: "fk_usuario_grupo")
  // ...
}

model contrato_anexo {
  // ...
  contrato_anotacao     contrato_anotacao? @relation(fields: [id_anotacao], references: [id_contrato_anotacao], onDelete: Cascade, map: "fk_contrato_anotacao_anexo")
  // ...
}
```

Essas mudanças foram acompanhadas pela adição e remoção de linhas nos arquivos mencionados, totalizando +41 linhas adicionadas e -39 linhas removidas.

## Por que foi feito

A motivação por trás dessas mudanças parece estar relacionada à necessidade de adequar o modelo de dados para melhor suportar a funcionalidade de notificações com a categoria FISCALIZACAO. A alteração na relação entre `Usuario` e `grupo` pode estar relacionada a uma melhoria na gestão de permissões ou na forma como os usuários são agrupados dentro da aplicação. Já a nova relação entre `contrato_anexo` e `contrato_anotacao` sugere uma integração mais profunda entre os contratos e as anotações feitas sobre eles, possivelmente visando uma melhor organização ou busca de informações.

## Impacto

O resultado prático dessas mudanças deve ser uma melhor estruturação dos dados dentro da aplicação, permitindo funcionalidades mais avançadas e uma integração mais eficaz entre diferentes componentes do sistema. Para o usuário final, isso pode se traduzir em melhorias na usabilidade, como uma interface mais intuitiva para gerenciar notificações e contratos, ou até mesmo em recursos adicionais que exploram as novas relações estabelecidas entre os dados.

No entanto, como em qualquer atualização significativa, existe o risco de introduzir bugs ou incompatibilidades com outras partes do sistema. Portanto, é crucial realizar testes exhaustivos para garantir que as mudanças sejam estáveis e não causem efeitos colaterais indesejados. Além disso, a documentação e a comunicação com a equipe de desenvolvimento e com os usuários são fundamentais para garantir uma transição suave para a nova versão do sistema.

---
*Post gerado automaticamente a partir dos commits [`a584ba4`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/a584ba468f00ccb6a2d11a16a89e795ae2136755) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*