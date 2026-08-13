---
layout: post
title: "Adicionando Funcionalidades de Permissões e Ajustes de Interface no Sistema-Contratos-Frontend"
date: 2026-08-12 20:43:01 +0000
categories: [Frontend]
tags: ["feature", "TypeScript", "UI", "Sistema Contratos Frontend", "React", "bugfix"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Nesta atualização, foram realizadas várias mudanças importantes no repositório Sistema-Contratos-Frontend. Os commits realizados visam melhorar a funcionalidade de permissões, ajustar bugs e aprimorar a interface do usuário.

- **Commit 1 (acb12da)**: Adicionada uma função para garantir que, quando um usuário tiver permissão de fiscalizar, também terá acesso à aba financeiro. Isso foi feito alterando o arquivo `src/app/(protected)/configuracoes/_components/NovoGrupoForm.tsx`. A função `handlePermissoesChange` foi criada para verificar se alguma permissão de "fiscalizar" foi marcada e, se sim, adiciona automaticamente a permissão de "financeiro.visualizar" ao conjunto de permissões.

  ```typescript
  const handlePermissoesChange = (novasPermissoes: Set<string>) => {
    const proximoSet = new Set(novasPermissoes);
    
    // Verifica se alguma permissão de 'fiscalizar' foi marcada
    const temAlgumaFiscalizacao = Array.from(proximoSet).some((perm) =>
      perm.toLowerCase().includes("fiscalizar"),
    );
    
    if (temAlgumaFiscalizacao) {
      proximoSet.add(chaveFinanceiroVisualizar);
    }
    
    setPermissoes(proximoSet);
  };
  ```

- **Commit 2 (9437495)**: Criada a função de visualizar as permissões do grupo. Foram alterados os arquivos `src/app/(protected)/configuracoes/_components/GrupoDeUsuariosTab.tsx`, `src/app/(protected)/configuracoes/_components/NovoGrupoForm.tsx`, `src/app/(protected)/configuracoes/_components/PermissoesTable.tsx` e `src/app/(protected)/configuracoes/grupo-usuarios/cadastro/page.tsx`. Essa mudança introduz a capacidade de visualizar as permissões de um grupo específico.

- **Commit 3 (0802920)**: Ajustado um bug no formulário de editar grupo de permissão. O arquivo alterado foi `src/app/(protected)/configuracoes/_components/NovoGrupoForm.tsx`. Essa alteração resolve um problema existente na edição de grupos de permissões.

- **Commit 4 (e4ba630)**: Ajustado para remover `console.log` em produção. O arquivo alterado foi `next.config.ts`. Essa mudança melhora a segurança e o desempenho do sistema em ambiente de produção.

  ```typescript
  compiler: {
    removeConsole: {
      exclude: ["error", "warn"],
    },
  },
  ```

- **Commit 5 (903f4c6)**: Ajustado o link de instituições. Foram alterados os arquivos `components/TableActionButton.tsx` e `src/app/(protected)/instituicoes/InstituicoesComponents.tsx`. Essa alteração corrige problemas de navegação para a edição de instituições.

## Por que foi feito

As mudanças foram realizadas com o objetivo de melhorar a funcionalidade e a segurança do sistema. A adição de permissões condicionais para acesso à aba financeiro, por exemplo, ajuda a garantir que os usuários tenham acesso apenas às funcionalidades para as quais são autorizados. A resolução de bugs e a melhoria da interface do usuário contribuem para uma experiência mais fluída e segura para os usuários do sistema.

## Impacto

O impacto dessas mudanças será percebido de várias maneiras:

- **Melhoria na Segurança**: Com a implementação de permissões mais granulares, o sistema se torna mais seguro, pois restringe o acesso a funcionalidades sensíveis com base nas permissões do usuário.
- **Experiência do Usuário**: As melhorias na interface e a resolução de bugs contribuem para uma experiência do usuário mais agradável e menos propensa a erros.
- **Desempenho**: A remoção de `console.log` em produção ajuda a melhorar o desempenho do sistema, tornando-o mais eficiente.

Em resumo, essas atualizações são importantes para melhorar a usabilidade, segurança e desempenho do Sistema-Contratos-Frontend, tornando-o uma ferramenta mais

---
*Post gerado automaticamente a partir dos commits [`acb12da`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/acb12da628509609dae90d93e184309d637415c2), [`9437495`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/94374952a2f427746ec4288c570efe442867ec4c), [`0802920`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/0802920b537d7c5fc7471c0143e08092ecaf1a33), [`e4ba630`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/e4ba630e91e61ac1dc3563ec94ec871ce0c6ed96), [`903f4c6`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/903f4c620fa4ab1da168d71f5ce82a80eee43aa1) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*