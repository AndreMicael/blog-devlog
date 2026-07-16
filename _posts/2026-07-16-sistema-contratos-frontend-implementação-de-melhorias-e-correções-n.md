---
layout: post
title: "Implementação de Melhorias e Correções no Sistema-Contratos-Frontend"
date: 2026-07-16 12:02:16 +0000
categories: [Frontend]
tags: ["bugfix", "React", "TypeScript", "Sistema Contratos Frontend", "testes", "feature"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

Recentemente, nosso time de desenvolvimento trabalhou arduamente para implementar melhorias significativas e correções importantes no Sistema-Contratos-Frontend. Essas mudanças visam melhorar a experiência do usuário, corrigir bugs críticos e preparar o sistema para novas funcionalidades.

## O que foi feito

Foram feitas várias alterações importantes no código, incluindo:

- **Ajuste para passar token de acesso para backend**: No arquivo `lib/backend.ts`, foi adicionada a funcionalidade para incluir o token de acesso do usuário nas requisições para o backend. Isso foi feito para garantir que as requisições sejam autenticadas corretamente.
  ```typescript
  const { cookies } = await import("next/headers");
  const cookieStore = await cookies();
  const token = cookieStore.get("auth_session")?.value;
  if (token) {
    headers["Authorization"] = `Bearer ${token}`;
  }
  ```
- **Retirada de dependências da tabela contrato_aditivos**: Vários arquivos foram alterados para remover dependências da tabela `contrato_aditivos`, simplificando o código e reduzindo a complexidade.
- **Adicionando validações nas ações de reajuste e reequilibrio**: No arquivo `src/app/(protected)/contratos/gerenciar/[id]/eventos/novo/page.tsx`, foram adicionadas validações para garantir que os campos necessários sejam preenchidos antes de salvar as ações de reajuste e reequilibrio.
  ```javascript
  if (
    acao.acao === "Reajuste Contratual" ||
    acao.acao === "Reajuste/Reequilibrio"
  ) {
    if (!impacto.id_contrato_periodo) {
      showToast("Selecione um período para o reajuste.", "error");
      return;
    }

    // ...
  }
  ```
- **Alterações na página de criar eventos**: Foram feitas melhorias na página de criar eventos, incluindo ajustes no layout e na funcionalidade de salvar eventos.
- **Ajuste no modal de criar anotação**: O modal de criar anotação foi ajustado para resolver bugs e melhorar a usabilidade.
- **Atualização automática da página**: A página agora é atualizada automaticamente após alguma modificação, garantindo que o usuário veja as informações mais recentes.

## Por que foi feito

Essas mudanças foram feitas para resolver problemas específicos ou melhorar a experiência do usuário. Por exemplo, a adição do token de acesso para o backend foi necessária para garantir a segurança das requisições, enquanto a retirada de dependências da tabela `contrato_aditivos` visou simplificar o código e reduzir a complexidade.

As validações adicionadas nas ações de reajuste e reequilibrio foram implementadas para garantir que os usuários forneçam as informações necessárias antes de salvar essas ações, evitando erros e problemas downstream.

As melhorias na página de criar eventos e no modal de criar anotação foram feitas para melhorar a usabilidade e reduzir a frustração do usuário, tornando o sistema mais agradável de usar.

## Impacto

Essas mudanças têm vários impactos positivos no sistema e nos usuários:

- **Segurança**: A adição do token de acesso para o backend melhora a segurança do sistema, garantindo que apenas usuários autenticados possam acessar recursos sensíveis.
- **Usabilidade**: As melhorias na página de criar eventos e no modal de criar anotação tornam o sistema mais fácil de usar, reduzindo a frustração do usuário e melhorando a eficiência.
- **Confiabilidade**: A retirada de dependências da tabela `contrato_aditivos` e a adição de validações nas ações de reajuste e reequilibrio tornam o sistema mais confiável, reduzindo a probabilidade de erros e problemas.
- **Manutenção**: As mudanças feitas tornam o sistema mais fácil de manter, pois reduzem a complexidade e melhoram a organização do código.

Em resumo, as mudanças implementadas no Sistema-Contratos-Frontend visam melhorar a segurança, usabilidade, confiabilidade e manutenção do sistema, tornando-o mais eficaz e agradável de usar.

---
*Post gerado automaticamente a partir dos commits [`7af14aa`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/7af14aa8e03da63a8f58e9f6b7d582324d98fde8), [`162a5df`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/162a5dfe2f12f559210e035fcdfc6d43990cd7d3), [`fedc2b5`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/fedc2b534b3091436c6898e6c95e085b546647cf), [`2a0a6d9`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/2a0a6d9fe56e87ee35621667f310880e82c02ccd), [`bcbebd8`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/bcbebd8e77d2d8fc81b58e682789aef4f9da32bb), [`d932de7`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/d932de7e115e9531c6ff0774247be77e3ccba328), [`e278f3f`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/e278f3f5aa55376f55c14f7a847fe66594b785b1), [`e37c970`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/e37c970283bfeb0180592da3228ee46b1ecf20bd), [`a6ff7ce`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/a6ff7ce1f987b4fb201ef077442118d12959ec16), [`7cdb590`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/7cdb590803ffec118fd07029d2c91f23fc84a26c) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*