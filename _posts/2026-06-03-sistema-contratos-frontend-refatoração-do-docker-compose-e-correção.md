---
layout: post
title: "Refatoração do Docker Compose e Correção de Bugs no Sistema-Contratos-Frontend"
date: 2026-06-03 14:10:36 +0000
categories: [Frontend]
tags: ["banco de dados", "Sistema Contratos Frontend", "TypeScript", "React", "bugfix", "testes"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## Introdução

Neste post, vamos discutir as mudanças realizadas no repositório Sistema-Contratos-Frontend, especificamente nos commits `e0e67ed`, `92f67b0` e `6be6e9f`. Essas mudanças visam melhorar a estabilidade e a performance do sistema, além de corrigir bugs críticos.

## O que foi feito

### Commit `e0e67ed`

Neste commit, foi realizado uma alteração no arquivo `docker-compose.yml`. A mudança foi feita para corrigir um problema de compatibilidade com o compose isolado. O arquivo foi atualizado para incluir a versão `3.8` do Docker Compose.

```yml
version: '3.8'
```

### Commit `92f67b0`

Este commit incluiu várias alterações nos arquivos `.github/workflows/node.js.yml`, `Dockerfile` e `docker-compose.yml`. A principal mudança foi a adição de um projeto isolado no Docker Compose, com o nome `contratos-frontend`. Isso permite que o sistema seja executado de forma mais isolada e segura.

```yml
PROJECT="contratos-frontend"
```

Além disso, foram adicionadas linhas de código para parar os containers existentes e remover imagens antigas.

```bash
docker-compose -p "$PROJECT" down --remove-orphans || true
docker rmi -f 2>/dev/null || true
```

### Commit `6be6e9f`

Este commit incluiu alterações nos arquivos `src/app/(protected)/contratos/gerenciar/[id]/aditivos/novo/page.tsx` e `src/app/api/contratos/[idContrato]/anotacoes/create/route.ts`. A principal mudança foi a refatoração do componente de aditivos para melhorar a experiência do usuário.

```tsx
<div className="mb-6 flex items-start gap-4 bg-zinc-400/20 overflow-hidden p-4">
  <div className="flex h-14 w-14 items-center justify-center rounded-2xl bg-[#00528c] shadow-sm ">
    <FileText className="text-white" size={30} />
  </div>
  <div>
    <h1 className="text-[28px] font-bold text-[#1f2937]">
      Cadastro de Eventos
    </h1>
    <p className="mt-1 text-[20px] text-gray-500">
      Preencha as informações abaixo para criar um novo evento para o contrato
    </p>
  </div>
</div>
```

## Por que foi feito

As mudanças realizadas nestes commits visam melhorar a estabilidade e a performance do sistema. Além disso, as alterações no Docker Compose e no Dockerfile permitem que o sistema seja executado de forma mais isolada e segura.

A refatoração do componente de aditivos foi feita para melhorar a experiência do usuário e facilitar a criação de novos eventos para os contratos.

## Impacto

As mudanças realizadas nestes commits terão um impacto positivo no sistema. A refatoração do Docker Compose e do Dockerfile permitirá que o sistema seja executado de forma mais isolada e segura. Além disso, a correção de bugs críticos melhorará a estabilidade do sistema.

A refatoração do componente de aditivos melhorará a experiência do usuário e facilitará a criação de novos eventos para os contratos.

Em resumo, as mudanças realizadas nestes commits são importantes para melhorar a estabilidade, a performance e a experiência do usuário do sistema. É importante continuar monitorando o sistema e realizar atualizações regulares para garantir que ele continue funcionando de forma eficaz e segura.

---
*Post gerado automaticamente a partir dos commits [`e0e67ed`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/e0e67ed9f4e587921e904cafea53d4c53ccc588f), [`92f67b0`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/92f67b0f9049faed59f26b6f0d9b4f437150f4b1), [`6be6e9f`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/6be6e9f46deacbccd0bd42fdad0a5bc52d3c5b95) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*