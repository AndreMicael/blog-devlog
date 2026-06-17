---
layout: post
title: "Refatoração do componente de eventos para melhor UX e correção de bug crítico"
date: 2026-06-16 18:39:10 +0000
categories: [Frontend]
tags: ["Sistema Contratos Frontend", "React", "bugfix", "TypeScript"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Duas mudanças significativas foram feitas no repositório "Sistema-Contratos-Frontend" para melhorar a experiência do usuário e corrigir um bug crítico. A primeira mudança, realizada no commit `9f148f1`, ajustou o botão da aba de eventos. Os arquivos alterados incluem `src/app/(protected)/contratos/_abas/Eventos.tsx`.

Na refatoração do componente de eventos, vários componentes foram atualizados, incluindo a troca de ícones e a reformulação da estrutura do botão de "Novo Evento". Por exemplo, o código anterior:
```jsx
<button
  className="py-3 bg-primary text-white  max-w-40 rounded-2xl"
  onClick={() =>
    router.push(
      `/contratos/gerenciar/${contrato.id_contrato}/eventos/novo`,
    )
  }
>
  + Novo Evento
</button>
```
Foi substituído por:
```jsx
<PrimaryButton
  onClick={() =>
    router.push(
      `/contratos/gerenciar/${contrato?.id_contrato}/eventos/novo`,
    )
  }
  className="h-10 px-6 rounded-lg max-w-fit bg-sky-600 hover:bg-sky-700 text-white text-sm font-medium flex items-center gap-5"
>
  <Plus className="w-4 h-4" />
  Novo Evento
</PrimaryButton>
```
Essa mudança visou melhorar a aparência e a usabilidade do botão, tornando-o mais intuitivo e atraente para o usuário.

A segunda mudança, realizada no commit `d8cfbd0`, corrigiu um bug crítico no arquivo `src/app/(protected)/contratos/gerenciar/[id]/eventos/novo/page.tsx`. O bug estava relacionado à formatação de datas, e a correção incluiu a adição de uma função `fmtDate` para formatar as datas de forma apropriada:
```javascript
function fmtDate(d: string | null | undefined): string {
  if (!d) return "--";
  return formatDateToBR(d) || "--";
}
```
Essa função garante que as datas sejam exibidas de forma clara e consistente, evitando erros de formatação.

## Por que foi feito

A motivação por trás dessas mudanças foi melhorar a experiência do usuário e corrigir um bug crítico que estava afetando a usabilidade do sistema. A refatoração do componente de eventos visou tornar a interface mais intuitiva e atraente, enquanto a correção do bug garantiu a consistência e a exatidão dos dados exibidos.

Além disso, essas mudanças prepararam o terreno para novas funcionalidades e melhorias no sistema, permitindo que os desenvolvedores se concentrem em adicionar novas características e aprimorar a experiência do usuário.

## Impacto

O resultado prático dessas mudanças é uma melhoria significativa na experiência do usuário e na estabilidade do sistema. Os usuários agora podem interagir com o sistema de forma mais intuitiva e atraente, enquanto os desenvolvedores podem se concentrar em adicionar novas funcionalidades e melhorias.

No entanto, é importante notar que essas mudanças também podem ter um impacto nos testes e na verificação do sistema. É fundamental garantir que os testes sejam atualizados para refletir as mudanças feitas e que o sistema seja completamente testado para garantir que não haja regressões ou problemas não intencionais.

Em resumo, as mudanças feitas no repositório "Sistema-Contratos-Frontend" visaram melhorar a experiência do usuário e corrigir um bug crítico, preparando o terreno para novas funcionalidades e melhorias no sistema. É fundamental continuar monitorando e testando o sistema para garantir que continua a atender às necessidades dos usuários e dos desenvolvedores.

---
*Post gerado automaticamente a partir dos commits [`9f148f1`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/9f148f19bc9dc6b7053c219f3e622234ce841194), [`d8cfbd0`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/d8cfbd07b15727b9bc3a31d5d8d276cf59862fb0) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*