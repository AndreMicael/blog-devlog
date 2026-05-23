---
layout: post
title: "Refatoração do componente de inputs do Novo Contrato para melhor UX"
date: 2026-05-22 19:40:33 +0000
categories: [Frontend]
tags: ["React", "API", "feature", "UI", "TypeScript", "Sistema Contratos Frontend"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Recentemente, fizemos várias mudanças no repositório "Sistema-Contratos-Frontend" para melhorar a experiência do usuário. Aqui estão as principais alterações feitas:

- **Commit 1 (dc3c294)**: Merge branch 'dev' of https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend into dev. Foram adicionadas 243 linhas e removidas 280 linhas em 3 arquivos: `src/app/(protected)/contratos/_abas/Eventos.tsx`, `src/app/(protected)/contratos/_components/MenuAditivo.tsx` e `src/app/(protected)/contratos/_components/ModalAditivo.tsx`.
- **Commit 2 (7a20428)**: Alterando tabelas do banco. Foram adicionadas 52 linhas e removidas 6 linhas em 2 arquivos: `src/app/(protected)/contratos/_abas/Fiscalizacoes.tsx` e `src/hooks/useContratoFiscalizacoes.ts`.
- **Commit 3 (975dbdd)**: Criando componente ModalAditivo para as ações de edição de termo aditivo. Foram adicionadas 243 linhas e removidas 280 linhas em 3 arquivos: `src/app/(protected)/contratos/_abas/Eventos.tsx`, `src/app/(protected)/contratos/_components/MenuAditivo.tsx` e `src/app/(protected)/contratos/_components/ModalAditivo.tsx`.
- **Commit 4 (2dadd43)**: Merge branch 'dev' of https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend into dev. Foram adicionadas 1260 linhas e removidas 524 linhas em 14 arquivos.
- **Commit 5 (7ed11ee)**: Diferenciando o design da tela de editar. Foram adicionadas 123 linhas e removidas 37 linhas em 3 arquivos: `src/app/(protected)/contratos/gerenciar/fiscalizar/editar/[idContrato]/[idFiscalizacao]/page.tsx`, `src/app/(protected)/contratos/gerenciar/fiscalizar/fiscalizar-tabs.ts` e `src/app/(protected)/contratos/gerenciar/fiscalizar/novo/[id]/page.tsx`.
- **Commit 6 (4014f56)**: Merge branch 'dev' of https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend into dev. Foram adicionadas 583 linhas e removidas 412 linhas em 13 arquivos.
- **Commit 7 (285e72f)**: Criando componente de menu de alterações de aditivos. Foram adicionadas 95 linhas e removidas 0 linhas em 1 arquivo: `src/app/(protected)/contratos/_components/MenuAditivo.tsx`.
- **Commit 8 (b0f054f)**: Ajusta redirecionamento das abas de Nfs. Foram adicionadas 63 linhas e removidas 14 linhas em 6 arquivos.
- **Commit 9 (9a781ea)**: Ajusta rotas e mensagens de erro. Foram adicionadas 326 linhas e removidas 249 linhas em 10 arquivos.
- **Commit 10 (d5f0663)**: Adiciona histórico de NFs. Foram adicionadas 222 linhas e removidas 177 linhas em 3 arquivos.

## Por que foi feito

Essas mudanças foram feitas para melhorar a experiência do usuário e corrigir alguns bugs no sistema. Além disso, foram adicionadas novas funcionalidades, como o componente de menu de alterações de aditivos e a diferença no design da tela de editar.

## Impacto

Com essas mudanças, o usuário poderá ter uma experiência mais agradável e intuitiva ao utilizar o sistema. Além disso, as novas funcionalidades adicionadas irão ajudar a melhorar a produtividade e a eficiência do usuário.

### Exemplo de código

Aqui está um exemplo de como o código foi alterado:
```typescript
// Antes
const acoesEdicao: AcaoEdicao[] = [
  {
    id: 1,
    tipo: "Adicionar data publicação",
    dataVigencia: "",
    valor: "",
  },
  {
    id: 2,

---
*Post gerado automaticamente a partir dos commits [`dc3c294`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/dc3c294e0321f03d900f5151bd90d4c04d2bc24c), [`7a20428`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/7a20428a016d7ccf3354a4e5c7883c654a8523d6), [`975dbdd`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/975dbdd2db6ae064e18530af4518efc49285a315), [`2dadd43`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/2dadd43d276ec8aa501fd78c3cc0bfff2dfb0877), [`7ed11ee`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/7ed11ee4fb512cbecf9dccf3ff51833001edf869), [`4014f56`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/4014f56884abd7695261f9558632c266f7124e22), [`285e72f`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/285e72f7aac807b6dea07ab3df487595c9c66a68), [`b0f054f`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/b0f054f600b53416a5671fb3e649840fe68b4563), [`9a781ea`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/9a781ea73fc94380424a60a0aa16c8b6a469de85), [`d5f0663`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/d5f0663c26d99f12a828eb69106a0df08d0e03ae) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*