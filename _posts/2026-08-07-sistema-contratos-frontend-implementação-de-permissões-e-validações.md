---
layout: post
title: "Implementação de Permissões e Validações no Sistema de Contratos Frontend"
date: 2026-08-07 20:07:04 +0000
categories: [Frontend]
tags: ["React", "UI", "Sistema Contratos Frontend", "feature", "TypeScript"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

Neste artigo, vamos discutir as recentes mudanças implementadas no repositório "Sistema-Contratos-Frontend" com o objetivo de melhorar a segurança e a usabilidade do sistema. As atualizações mais significativas incluem a adição de validações de permissão em vários componentes e a otimização da experiência do usuário.

## O que foi feito

Foram realizadas várias alterações nos componentes do frontend para incluir validações de permissão, garantindo que os usuários apenas acessem e manipulem informações às quais têm permissão. As mudanças específicas incluem:

- **Validação de permissão nos componentes de cadastro e exclusão**: Foi adicionada uma validação de permissão nos componentes de cadastro e exclusão de anotações, notas fiscais e outras entidades, utilizando a função `hasPermission` para verificar se o usuário tem as permissões necessárias (`CONTRATO_ANOTACOES_cadastro`, `CONTRATO_ANOTACOES_excluir`, etc.).
- **Validação de permissão para ações específicas**: Para ações como editar, visualizar ou excluir notas fiscais, parcelas, etc., foram adicionadas validações para verificar se o usuário tem as permissões específicas necessárias (`CONTRATO_FINANCEIRO_NOTAS_alterar`, `CONTRATO_FINANCEIRO_NOTAS_excluir`, etc.).
- **Retirada de informações financeiras das permissões**: Em um commit, foi feita a retirada de informações financeiras das permissões para evitar a exposição indevida de dados sensíveis.
- **Ajustes no enum de financeiro parcela**: Foi realizado um ajuste no enum de financeiro parcela para garantir consistência e precisão nos dados financeiros.

Os arquivos alterados incluem `Anotacoes.tsx`, `NotasFiscaisComponents.tsx`, `permissoesConfig.ts`, `Financeiro.tsx`, entre outros, refletindo a abrangência das mudanças para garantir a segurança e a conformidade com as permissões.

```typescript
const podeCadastrar = hasPermission(sessionUser?.permissoes, [
  "CONTRATO_ANOTACOES_cadastro",
  "CONTRATO_ANOTACOES_todos",
]);
```

## Por que foi feito

As mudanças foram implementadas para resolver problemas de segurança e usabilidade identificados no sistema. A falta de validações de permissão poderia permitir que usuários não autorizados acessassem ou modificassem informações sensíveis, comprometendo a integridade dos dados e a confiança dos usuários. Além disso, a experiência do usuário era afetada pela exposição a funcionalidades para as quais não tinham permissão, o que poderia causar confusão e ineficiência.

A implementação dessas validações de permissão visa:

- **Melhorar a segurança do sistema**: Garantir que apenas usuários autorizados possam realizar ações específicas, protegendo assim a integridade dos dados e a privacidade dos usuários.
- **Otimizar a experiência do usuário**: Ao restringir o acesso a funcionalidades baseado em permissões, o sistema se torna mais intuitivo e fácil de usar, pois os usuários só veem o que é relevante para suas necessidades.

## Impacto

O resultado prático dessas mudanças é um sistema mais seguro e usuário-friend, onde as permissões são respeitadas e os usuários têm uma experiência personalizada de acordo com seu nível de acesso. Isso não apenas melhora a usabilidade, mas também reduz o risco de erros ou acessos não autorizados, tornando o sistema mais robusto e confiável.

No entanto, é importante considerar que, com essas mudanças, pode haver necessidade de ajustes adicionais para garantir que todos os componentes estejam alinhados com as novas permissões e funcionalidades. Além disso, a documentação e o treinamento dos usuários devem ser atualizados para refletir essas mudanças e garantir que todos estejam confortáveis e familiarizados com as novas funcionalidades e restrições.

Em resumo, as mudanças implementadas no "Sistema-Contratos-Frontend" são significativas e positivas, visando melhorar a segurança, a usabilidade e a

---
*Post gerado automaticamente a partir dos commits [`931e933`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/931e933e5161e2612cedf6d6f3e34dfa6ecffe8d), [`03bddb6`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/03bddb6a639670e3e46a73ef7601011c4d9df9d9), [`663ce13`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/663ce13fc1db570194afb94383506404b6768cd7), [`31976c0`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/31976c092610edc790a5d43457569dd99a584b94), [`fd1ec2e`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/fd1ec2e626612af8fd4037046e4160676da2baf7), [`9a184fd`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/9a184fd1426b502d574772d87d82840ca5c48bf8), [`378860b`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/378860b0968caac7b000a63cf812e72970c76073), [`1a978a4`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/1a978a48140ccd8abe291a78c05b015ad7312cee) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*