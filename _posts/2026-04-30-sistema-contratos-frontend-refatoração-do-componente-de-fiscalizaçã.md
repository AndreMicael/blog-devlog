---
layout: post
title: "Refatoração do componente de fiscalização de novos contratos e ajustes gerais no Frontend do Sistema de Contratos"
date: 2026-04-30 19:37:09 +0000
categories: [Frontend]
tags: ["API", "React", "TypeScript", "Sistema Contratos Frontend", "feature", "UI"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Foram realizadas várias mudanças no repositório "Sistema-Contratos-Frontend" com o objetivo de melhorar a funcionalidade e a usabilidade do sistema. Abaixo, destacamos as principais alterações:

- **Refatoração do componente de fiscalização de novos contratos**: No commit `35fa1f3`, houve uma refatoração significativa no componente de fiscalização de novos contratos, localizado em `src/app/(protected)/contratos/gerenciar/fiscalizar/novo/[id]/page.tsx`. Essa mudança incluiu a adição de lógica para lidar com a periodicidade e a alteração do layout da página.
  
  ```typescript
  import { useRouter } from "next/navigation";
  import { Select } from "@/components/Select";
  import { Input } from "@/components/Input";
  ```

  Foram adicionados componentes de `Select` e `Input` para melhorar a experiência do usuário na seleção de opções e entrada de dados.

- **Ajustes gerais no Layout**: Vários ajustes foram feitos nos componentes de layout, incluindo `LayoutShell.tsx`, `LayoutSwitcher.tsx`, e `Sidebar.tsx`, para melhorar a navegação e a aparência do sistema. Por exemplo, no commit `9bf8635`, uma nova rota foi adicionada para o "tipo-sancao" no `LayoutSwitcher.tsx`.

  ```typescript
  const ROTAS_COM_SIDEBAR = [
    // ...
    "/tipo-sancao",
  ];
  ```

- **Correção de erros e melhorias**: Vários commits, como `4693dba`, `7fa1cf7`, `bc8012a`, e `a00aa66`, foram dedicados à correção de erros, melhorias de desempenho, e ajustes na lógica de negócios. Por exemplo, a correção de um erro de sintaxe em `LayoutShell.tsx` e a atualização do bg-color do componente `Select`.

  ```css
  /* Correção do bg-color do componente Select */
  :is(:root, :host) {
    --select-bg: #fff;
  }
  ```

- **Implementação de regras de negócio**: No commit `622237e`, regras de negócio foram implementadas em `Partes.tsx` para garantir que apenas um titular por cargo seja permitido.

  ```typescript
  const canPickInternalFuncao = useMemo(() => {
    // Lógica para verificar se é possível escolher uma função interna
  }, [activeInternalVinculos, editing, form.funcao]);
  ```

## Por que foi feito

Essas mudanças foram feitas para melhorar a experiência do usuário, corrigir bugs, e implementar novas funcionalidades no sistema. O objetivo principal foi tornar o sistema mais eficiente, fácil de usar, e alinhado com as necessidades dos usuários. Além disso, essas mudanças permitiram a implementação de novas features, como a lógica de periodicidade na fiscalização de contratos e a melhoria na navegação do sistema.

## Impacto

O impacto dessas mudanças é positivo, melhorando significativamente a usabilidade e a funcionalidade do sistema. Os usuários agora podem navegar pelo sistema de forma mais eficiente, e a implementação de regras de negócio ajuda a manter a consistência dos dados. Além disso, as melhorias no layout e nos componentes visuais tornam a interface mais agradável e fácil de usar.

No entanto, como em qualquer mudança significativa, é importante monitorar o sistema para identificar qualquer problema que possa surgir após a implementação dessas alterações. A equipe de desenvolvimento deve estar preparada para fazer ajustes adicionais conforme necessário para garantir que o sistema continue a atender às necessidades dos usuários de forma eficaz.

---
*Post gerado automaticamente a partir dos commits [`35fa1f3`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/35fa1f3a8e316ab3d122c71201b6ddbac6c6e8af), [`9bf8635`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/9bf863532bf65361d8b4df48782f4fa6a25654a7), [`4693dba`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/4693dbae9c3a59c64e06412ce5e986ce32ccdcf9), [`7fa1cf7`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/7fa1cf7bdc129253d5a97492c21164daf46b819a), [`bc8012a`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/bc8012a0799f57550d637dcc6ed41cedaf432766), [`a00aa66`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/a00aa66ee784c67f98e4bcb4bb57e9f354cee1ac), [`622237e`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/622237ed8c780fcfa640b362325f6d60aea41e53), [`2f9fbff`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/2f9fbffbdc8f677765ef42873b0857e667a25d2a) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*