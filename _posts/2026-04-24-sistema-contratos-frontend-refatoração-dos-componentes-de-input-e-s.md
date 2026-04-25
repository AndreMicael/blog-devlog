---
layout: post
title: "Refatoração dos componentes de input e select para melhorar a experiência do usuário no Sistema-Contratos-Frontend"
date: 2026-04-24 20:20:26 +0000
categories: [Frontend]
tags: ["TypeScript", "React", "UI", "Sistema Contratos Frontend", "testes", "feature"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Durante os últimos dias, foram feitas várias mudanças no repositório `Sistema-Contratos-Frontend` com o objetivo de melhorar a experiência do usuário. Os principais focos foram a refatoração dos componentes de input e select, que são fundamentais para a interação do usuário com a aplicação.

- **Commit `f2eb76e`**: Adicionou um input nas telas de instituição, permitindo que os usuários forneçam informações adicionais. Isso foi alcançado modificando os arquivos `components/Input.tsx` e `src/app/(protected)/cadastro/instituicao/NovaInstituicaoForm.tsx`.

- **Commit `a450dec`**: Adicionou um input na tela de unidade, melhorando a capacidade de coleta de dados. Os arquivos `components/Select.tsx` e `src/app/(protected)/unidades/UnidadesComponents.tsx` foram alterados.

- **Commit `63fa0e9`**: Realizou ajustes no componente de input para que ele possa ser usado na tela de departamento, aumentando a consistência da interface do usuário. Isso envolveu mudanças nos arquivos `components/Input.tsx` e `src/app/(protected)/departamentos/DepartamentosComponents.tsx`.

- **Commit `af9715c`**: Adicionou um label de status, proporcionando mais contexto para os usuários. Isso foi feito nos arquivos `src/app/(protected)/cadastro/usuario/NovoUsuarioForm.tsx` e `src/app/(protected)/usuarios/editar/[id]/EditarCadastroTab.tsx`.

- **Commit `fdff2b5`**: Melhorou a funcionalidade do componente de input nas telas de usuários, possibilitando uma experiência mais intuitiva. Mudanças foram feitas nos arquivos `src/app/(protected)/cadastro/usuario/NovoUsuarioForm.tsx`, `src/app/(protected)/usuarios/UsuariosComponents.tsx`, `src/app/(protected)/usuarios/editar/[id]/EditarCadastroTab.tsx`, e `src/app/(protected)/usuarios/editar/[id]/page.tsx`.

- **Commit `521f669`**: Ajustou a propriedade de erros nos componentes select e input, garantindo que os erros sejam exibidos corretamente. Isso afetou os arquivos `components/Input.tsx`, `components/Select.tsx`, `src/app/(protected)/cadastro/instituicao/NovaInstituicaoForm.tsx`, `src/app/(protected)/cadastro/usuario/NovoUsuarioForm.tsx`, e `src/app/(protected)/instituicoes/editar/[id]/EditarRepresentantesTab.tsx`.

- **Commit `81b9dbe`**: Realizou melhorias de estilização nos componentes select e input, melhorando a aparência e a consistência da aplicação. Os arquivos `components/Select.tsx` e `src/app/(protected)/departamentos/DepartamentosComponents.tsx` foram atualizados.

- **Commit `e06b393`**: Alterou a paginação para usar o componente de select, tornando a navegação mais amigável. Isso envolveu mudanças nos arquivos `src/app/(protected)/contratos/ContratosPageComponents.tsx`, `src/app/(protected)/contratos/_abas/Fiscalizacoes.tsx`, `src/app/(protected)/departamentos/DepartamentosComponents.tsx`, `src/app/(protected)/unidades/UnidadesComponents.tsx`, e `src/app/(protected)/usuarios/UsuariosComponents.tsx`.

- **Commit `28ea1b0`**: Adicionou o componente de select nas páginas de instituições, melhorando a funcionalidade de seleção. Isso foi feito nos arquivos `components/Select.tsx`, `src/app/(protected)/cadastro/instituicao/NovaInstituicaoForm.tsx`, `src/app/(protected)/instituicoes/InstituicoesComponents.tsx`, `src/app/(protected)/instituicoes/editar/[id]/EditarCadastroTab.tsx`, e `src/app/(protected)/instituicoes/editar/[id]/EditarRepresentantesTab.tsx`.

- **Commit `2989a20`**: Adicionou o componente de select nas páginas de usuário, unidade e departamentos, uniformizando a interface. Mudanças foram feitas nos arquivos `components/Select.tsx`, `src/app/(protected)/cadastro/usuario/

---
*Post gerado automaticamente a partir dos commits [`f2eb76e`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/f2eb76eb5e850463190a4617bcced5af926a18b7), [`a450dec`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/a450dec042662bcb753579c7da114fe6018186fd), [`63fa0e9`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/63fa0e9510df0f6645f5f4e9c8cb62bcf10128bb), [`af9715c`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/af9715cd123c6c6ed06dfc2aedcbfdc6210f04dc), [`fdff2b5`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/fdff2b50bb54a077059ab0489947f4fecb79e2cb), [`521f669`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/521f6692e297116ddd7ea2e61f07fa74000f7c17), [`81b9dbe`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/81b9dbe993d4a3d54509ba32d51866cbb1ccd8a4), [`e06b393`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/e06b39348fedbab43ae5b3e48214428ab1e25cec), [`28ea1b0`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/28ea1b0734c6a400d009b3e334e858ed52116e3c), [`2989a20`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/2989a20a3e438cc139d8f6d72f62b51b037dec85) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*