---
layout: post
title: "Implementação de Validações de Permissão no Sistema-Contratos-Frontend"
date: 2026-08-05 22:02:36 +0000
categories: [Frontend]
tags: ["React", "TypeScript", "Sistema Contratos Frontend", "UI", "feature"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

Neste artigo, vamos explorar as mudanças recentes implementadas no repositório `Sistema-Contratos-Frontend`. Essas mudanças visam melhorar a segurança e a experiência do usuário, adicionando validações de permissão em várias partes do sistema.

## O que foi feito

As mudanças abrangem vários commits e arquivos, com o objetivo de restringir o acesso a certas páginas e funcionalidades com base nas permissões do usuário. Aqui estão os principais pontos:

- **Commit 79ddd57**: Adicionada validação para que, em contratos, só apareça a aba que o usuário tenha permissão. O arquivo `GerenciarComponents.tsx` foi alterado para incluir essa lógica, usando a função `hasPrefix` para verificar as permissões do usuário.
  
  ```tsx
  import { hasPrefix } from "@/lib/permissions";
  import { useUser } from "@/components/UserProvider";

  // ...

  const sessionUser = useUser();

  const ABAS: readonly {
    id: string;
    label: string;
    icon: typeof LayoutDashboard;
    component: AbaComponent;
  }[] = [
    // ...
  ];

  const podeAcessarAba = (aba: any) => {
    return hasPrefix(sessionUser?.permissoes, aba.id);
  };
  ```

- **Commit d8ba39c**: Adicionada validação para que o usuário não entre em uma página se não tiver permissão. O arquivo `page.tsx` foi modificado para redirecionar o usuário para uma página de "não encontrado" caso ele não tenha permissão para acessar a página de contratos.
  
  ```tsx
  import { useUser } from "@/components/UserProvider";
  import { useRouter } from "next/navigation";
  import { hasPrefix } from "@/lib/permissions";

  const sessionUser = useUser();
  const router = useRouter();

  const allowedUser: boolean = sessionUser?.permissoes
    ? hasPrefix(sessionUser?.permissoes, "CONTRATO")
    : false;

  if (!allowedUser) {
    router.replace("/not-found");
  }
  ```

- **Commit dea8d93**: Semelhante ao commit anterior, mas aplicado à página do dashboard. A lógica é a mesma: verificar se o usuário tem permissão para acessar o dashboard antes de renderizar a página.
  
- **Commit a17b5bf**: Alterações no componente de usuários para only mostrar as colunas e ações que o usuário tem permissão para ver ou executar. Isso inclui a edição e exclusão de usuários, que agora são controladas pelas permissões do usuário logado.
  
  ```tsx
  import { useUser } from "@/components/UserProvider";
  import { hasPermission } from "@/lib/permissions";

  const sessionUser = useUser();

  const podeCadastrar = hasPermission(sessionUser?.permissoes, [
    "USUARIOS_cadastro",
    "USUARIOS_todos",
  ]);

  const podeEditar = hasPermission(sessionUser?.permissoes, [
    "USUARIOS_alterar",
    "USUARIOS_todos",
  ]);

  const podeExcluir = hasPermission(sessionUser?.permissoes, [
    "USUARIOS_excluir",
    "USUARIOS_todos",
  ]);
  ```

## Por que foi feito

As mudanças foram feitas para reforçar a segurança do sistema, garantindo que os usuários só possam acessar e manipular dados para os quais têm permissão. Isso é especialmente importante em sistemas que lidam com informações confidenciais ou que exigem controles de acesso rigorosos.

Além disso, essas validações melhoram a experiência do usuário, pois evitam que ele tente acessar recursos para os quais não tem permissão, o que poderia resultar em erros ou comportamentos inesperados.

## Impacto

O impacto dessas mudanças é significativo, pois afetam a forma como os usuários interagem com o sistema. Agora, os usuários só verão as abas, botões e funcionalidades para as quais têm permissão, o que melhora a usabilidade e reduz a probabilidade de erros.

No entanto, é importante notar que essas mudanças também podem exigir ajustes por parte dos administradores do sistema, que precisarão configurar as

---
*Post gerado automaticamente a partir dos commits [`79ddd57`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/79ddd57a131d2058e6a69ef25882119732d922e9), [`d8ba39c`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/d8ba39c322e2c3805ce23c8c57e502ed1dd15dce), [`dea8d93`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/dea8d93c32c2a193e239b72e46498e0be1ac90bc), [`a17b5bf`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/a17b5bf944d25aab7cb544ee247c27e39a4e7594), [`1e4bdcc`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/1e4bdcc9635e9f6764a09253a1f43573d5a7e266), [`20f28c2`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/20f28c22f631623e6103571f820b4b4a9d85224e), [`c902179`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/c9021796c8cbe1847eb49c4c0ccedb9070506af5), [`edfeae1`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/edfeae1254c7d442b80bda56a7e01796dc14ff88), [`08f4102`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/08f41022f1180b35b1f8d26feb2a87a2a5699cb0), [`49f2781`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/49f278121e725bd6c15bbad12b854687900f8b96) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*