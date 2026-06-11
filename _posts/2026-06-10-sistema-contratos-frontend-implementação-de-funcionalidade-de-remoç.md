---
layout: post
title: "Implementação de Funcionalidade de Remoção de Anotação e Correções no Frontend do Sistema de Contratos"
date: 2026-06-10 18:47:40 +0000
categories: [Frontend]
tags: ["TypeScript", "API", "React", "feature", "Sistema Contratos Frontend"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Nas últimas atualizações do repositório "Sistema-Contratos-Frontend", foram realizadas mudanças significativas para melhorar a experiência do usuário e corrigir bugs existentes. Os principais Commits (`4142780` e `8a619b9`) trouxeram alterações importantes nos arquivos `src/app/(protected)/contratos/_abas/Anotacoes.tsx`, `src/app/(protected)/contratos/_abas/Anexos.tsx`, e `src/app/api/contratos/[idContrato]/anotacoes/[idAnotacao]/patch/route.ts`.

No Commit `4142780`, a mensagem de commit "adicionando funcao de remover anotação no frontend" resume a adição de uma nova funcionalidade que permite aos usuários remover anotações no frontend do sistema. Essa mudança foi implementada adicionando mais de 289 linhas de código e removendo cerca de 79 linhas, principalmente no arquivo `Anotacoes.tsx`.

No arquivo `Anotacoes.tsx`, foram adicionadas funcionalidades como:
- A inclusão de um estado `inserindoLink` para controlar quando o usuário está inserindo um link.
- A adição de campos `titulo_link` e `link` no tipo `formProps` para permitir a criação de links nas anotações.
- A utilização do hook `useToast` para exibir mensagens de sucesso ou erro ao usuário.

Além disso, o Commit `8a619b9` trouxe mudanças que prepararam o terreno para futuras implementações, como a melhoria da gestão de anexos e a otimização do código.

Abaixo, alguns trechos de código que ilustram essas mudanças:
```typescript
// Adição de estados para controlar a inserção de links
const [inserindoLink, setInserindoLink] = useState(false);

// Tipagem do formProps com campos para título e link
type formProps = {
  titulo: string;
  descricao: string;
  titulo_link?: string;
  link?: string;
};

// Uso do useToast para exibir mensagens ao usuário
const { showToast } = useToast();
```

## Por que foi feito

As mudanças implementadas visam melhorar a usabilidade e a funcionalidade do sistema de contratos, proporcionando aos usuários uma experiência mais intuitiva e eficiente. A capacidade de remover anotações é uma necessidade comum em sistemas de gerenciamento de contratos, permitindo que os usuários mantenha suas anotações organizadas e atualizadas.

Além disso, a preparação do código para futuras implementações é crucial para manter o sistema escalável e fácil de manter, permitindo a rápida incorporação de novas funcionalidades sem comprometer a estabilidade do sistema existente.

## Impacto

O impacto dessas mudanças é significativo para os usuários do sistema de contratos. Com a capacidade de remover anotações, os usuários podem manter suas anotações mais organizadas e relevantes, melhorando sua produtividade e eficiência. Além disso, as melhorias na gestão de anexos e na otimização do código contribuem para uma experiência de usuário mais suave e responsiva.

No entanto, é importante notar que, como em qualquer mudança significativa no código, existe um risco de introduzir novos bugs ou problemas de compatibilidade. Portanto, é fundamental realizar testes exhaustivos para garantir que as mudanças sejam estáveis e funcionem como esperado.

Em resumo, as mudanças implementadas no repositório "Sistema-Contratos-Frontend" melhoram a funcionalidade e a usabilidade do sistema, proporcionando uma experiência mais eficiente e intuitiva para os usuários. Além disso, a preparação do código para futuras implementações garante que o sistema continue a ser escalável e fácil de manter, permitindo a rápida incorporação de novas funcionalidades.

---
*Post gerado automaticamente a partir dos commits [`4142780`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/414278093eb567c233fad1f7b38cbc2a58bdc1a6), [`8a619b9`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/8a619b956338f74b9ecdaf878b6a5cfac0f7ac58) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*