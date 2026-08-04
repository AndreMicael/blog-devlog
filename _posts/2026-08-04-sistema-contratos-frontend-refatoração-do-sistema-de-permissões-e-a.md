---
layout: post
title: "Refatoração do Sistema de Permissões e Ajustes de Interface no Frontend do Sistema de Contratos"
date: 2026-08-04 13:39:06 +0000
categories: [Frontend]
tags: ["React", "TypeScript", "Sistema Contratos Frontend", "feature", "UI"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Nesta versão, fizemos several mudanças importantes no repositório "Sistema-Contratos-Frontend" para melhorar a usabilidade e segurança do sistema.

*   **Melhorias na interface do usuário**: Foram feitas mudanças nos componentes de modais e botões na aba de eventos, tornando a interface mais intuitiva e amigável. Além disso, foram adicionados botões de ações na tabela de anexos, facilitando a edição e exclusão de anexos.
*   **Sistema de permissões**: Foi implementado um sistema de permissões mais robusto, permitindo que os administradores controlem melhor as permissões dos usuários. Foram adicionadas funções para verificar se o usuário tem permissão para acessar determinadas páginas ou realizar determinadas ações.
*   **Verificação de permissões**: Foram adicionadas verificações de permissões em várias partes do sistema, garantindo que os usuários só possam realizar ações para as quais têm permissão. Isso inclui a criação de funções para verificar se o usuário tem permissão para acessar contratos, entidades ou configurações.
*   **Filtro de permissão na Sidebar**: Foi adicionado um filtro de permissão na Sidebar, garantindo que os usuários só vejam as opções de menu para as quais têm permissão.

Aqui estão alguns trechos de código que ilustram essas mudanças:

```javascript
// Verificação de permissões na página de departamentos
const podeCadastrar = hasPermission(sessionUser?.permissoes, [
  "ENTIDADES_todos",
  "ENTIDADES_cadastro",
]);

const podeEditar = hasPermission(sessionUser?.permissoes, [
  "ENTIDADES_todos",
  "ENTIDADES_alterar",
]);

const podeExcluir = hasPermission(sessionUser?.permissoes, [
  "ENTIDADES_todos",
  "ENTIDADES_excluir",
]);
```

```javascript
// Filtro de permissão na Sidebar
const menuItems = React.useMemo(() => {
  const filtered = filterMenuByPermissions(NAV_ITEMS, user?.permissoes ?? []);

  return toMenuItems(filtered);
}, [user?.permissoes]);
```

## Por que foi feito

Essas mudanças foram feitas para melhorar a segurança e usabilidade do sistema. O sistema de permissões mais robusto garante que os usuários só possam realizar ações para as quais têm permissão, reduzindo o risco de acessos indevidos ou alterações não autorizadas. As melhorias na interface do usuário tornam o sistema mais fácil de usar e entender, reduzindo a curva de aprendizado para os novos usuários.

Além disso, essas mudanças foram feitas para preparar o sistema para futuras expansões e melhorias. Com um sistema de permissões mais robusto e uma interface do usuário mais flexível, será mais fácil adicionar novas funcionalidades e melhorias ao sistema sem comprometer a segurança ou a usabilidade.

## Impacto

As mudanças feitas neste lançamento terão um impacto positivo na segurança e usabilidade do sistema. Os usuários terão uma experiência mais intuitiva e amigável, e os administradores terão mais controle sobre as permissões dos usuários.

No entanto, é importante notar que essas mudanças podem exigir alguns ajustes por parte dos usuários e administradores. Por exemplo, os administradores precisarão configurar as permissões dos usuários de acordo com as novas regras de permissão. Além disso, os usuários precisarão se familiarizar com as novas opções de menu e interfaces de usuário.

Para minimizar o impacto dessas mudanças, recomendamos que os administradores e usuários leiam a documentação atualizada e assistam aos tutoriais disponíveis para entender como usar as novas funcionalidades e interfaces. Além disso, é importante testar o sistema completamente após a atualização para garantir que todas as funcionalidades estejam funcionando corretamente.

---
*Post gerado automaticamente a partir dos commits [`9f68978`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/9f689780e5e3c4e55fa43e01e42dcbfb6fa1c66e), [`db77aef`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/db77aef52d7c90ae5855a1d8ee6eaff7fcb770b3), [`8d36aee`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/8d36aeecb577120ee43dcba9a3d9089fc3af262a), [`23d0c4d`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/23d0c4d4e0c23695e4eaf2d7cb68c20ebac3edcc), [`35f5cd9`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/35f5cd95d0cc12dd735f129547ea9c4c7de31fa3), [`51de3e9`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/51de3e96027587410f47844ddcd0bcdf5a429ab5), [`ba5910d`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/ba5910d56347ace71732f5f8a2248c5dae7e12e5), [`cdf9279`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/cdf9279c539b122129320e56cb33e075c99834ca), [`7e6a112`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/7e6a112927aba8b38ee0777b7101d750fb824e89), [`fe1beac`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/fe1beac3a7656f7887fda169e80251211fb802a7) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*