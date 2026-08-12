---
layout: post
title: "Refatoração do Sistema de Redirecionamento de Permissões no Frontend do Sistema de Contratos"
date: 2026-08-11 22:06:06 +0000
categories: [Frontend]
tags: ["bugfix", "React", "testes", "autenticação", "feature", "Sistema Contratos Frontend"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

===========================================================

Neste artigo, vamos explorar as mudanças realizadas no repositório "Sistema-Contratos-Frontend" para melhorar a experiência do usuário e a segurança do sistema. As alterações abordam principalmente o redirecionamento de permissões, a criação de uma página de erro para acessos não autorizados e várias melhorias em diferentes componentes do sistema.

## O que foi feito
----------------

### Redirecionamento de Permissões

Foram alterados vários arquivos para modificar o comportamento de redirecionamento quando um usuário não tem permissão para acessar uma determinada página. Em vez de redirecionar para uma página "not-found", agora o sistema redireciona para uma página "unauthorized". Isso foi alcançado com mudanças nos arquivos `src/app/(protected)/configuracoes/grupo-usuarios/cadastro/page.tsx`, `src/app/(protected)/configuracoes/page.tsx`, entre outros.

```jsx
useEffect(() => {
  if (!allowedUser) {
    router.replace("/unauthorized");
  }
}, [allowedUser, router]);
```

### Criação da Página de Erro para Acessos Não Autorizados

Foi criada uma nova página para tratar erros de acesso não autorizado. Este recurso melhora a usabilidade do sistema, informando claramente ao usuário quando ele não tem permissão para acessar uma área específica. A criação da página pode ser vista no commit `6fd44b6`, com a adição do arquivo `src/app/unauthorized/page.tsx`.

### Outras Melhorias

Vários commits trouxeram melhorias para o sistema, incluindo:
- Ajustes para evitar a abertura de notificações sem permissão adequada (`3c9994b`).
- Adição de animação para a página de acesso negado (`6191206`).
- Correções de bugs em diferentes componentes, como a página de eventos novos (`69c923c`, `987a41c`, `e15e8fe`).
- Padronização de botões de edição e exclusão nas tabelas (`c1a9cf2`).
- Padronização dos botões de salvar alterações (`292c492`).

## Por que foi feito
------------------

Essas mudanças foram realizadas para melhorar a segurança, a usabilidade e a consistência do sistema. O redirecionamento correto para uma página de erro de acesso não autorizado ajuda a prevenir a exposição de informações sensíveis a usuários não autorizados. As melhorias nos componentes e na lógica de permissões visam tornar o sistema mais robusto e fácil de usar.

## Impacto
----------

O impacto dessas mudanças é multifacetado:
- **Melhoria na Segurança**: Com o redirecionamento correto para uma página de erro de acesso não autorizado, o sistema se torna mais seguro, pois evita que usuários não autorizados acessem informações confidenciais por engano.
- **Experiência do Usuário**: As mudanças melhoram a experiência do usuário, fornecendo feedback claro quando um acesso é negado e padronizando a interface em diferentes áreas do sistema.
- **Manutenção e Escalabilidade**: As melhorias nos componentes e na lógica de permissões facilitam a manutenção e expansão do sistema, contribuindo para sua escalabilidade.

Em resumo, as mudanças realizadas no repositório "Sistema-Contratos-Frontend" são um passo significativo na melhoria contínua da segurança, usabilidade e manutenção do sistema, proporcionando uma base sólida para futuras expansões e desenvolvimentos.

---
*Post gerado automaticamente a partir dos commits [`7474587`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/74745872e4d419f675e416c6d2d847e74674e86f), [`6fd44b6`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/6fd44b6ada6ab4248b91fcdd286b575c5c4b2c46), [`3c9994b`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/3c9994b2317a0dc67b390ee50574d7593296c310), [`6191206`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/6191206640b3dca745cec6ab992394ad2f6649c5), [`69c923c`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/69c923cd7c1b3598736648f22836cffa0db551ce), [`987a41c`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/987a41cbd1720792aee2e63a590ced4a5dbbf004), [`e15e8fe`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/e15e8fe2771e68318dbc06b49fbc015092aae78e), [`c1a9cf2`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/c1a9cf24907265c8cea39abc211512de77256c0b), [`292c492`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/292c4927e2d5ca4bc8efb4e96feceba248064931) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*