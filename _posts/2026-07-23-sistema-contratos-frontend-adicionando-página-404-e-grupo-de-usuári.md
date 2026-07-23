---
layout: post
title: "Adicionando Página 404 e Grupo de Usuários ao Sistema-Contratos-Frontend"
date: 2026-07-23 13:34:08 +0000
categories: [Frontend]
tags: ["TypeScript", "Sistema Contratos Frontend", "feature", "React", "JavaScript", "API"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Recentemente, foram realizadas alterações significativas no repositório do Sistema-Contratos-Frontend. Estas mudanças incluem a adição de uma página 404 personalizada e a implementação de uma nova funcionalidade para gerenciar grupos de usuários dentro do sistema. Além disso, houve ajustes menores para melhorar a integração com o backend.

### Adição da Página 404

Agora, quando um usuário tenta acessar uma página inexistente ou não encontrada, o sistema exibe uma página 404 personalizada, melhorando a experiência do usuário. Isso foi feito alterando o arquivo `package-lock.json`, adicionando novos arquivos de ilustrações para a página 404 (`public/illustrations/404-error.svg`), e atualizando os modelos de dados no Prisma (`prisma/schema.prisma`).

```diff
diff --git a/package-lock.json b/package-lock.json
index 2101c6d..a8b3c53 100644
--- a/package-lock.json
+++ b/package-lock.json
@@ -2981,7 +2981,7 @@
```

### Implementação do Grupo de Usuários

Foi adicionada uma nova aba dentro das configurações do sistema, dedicada ao gerenciamento de grupos de usuários. Isso permite que os administradores criem e gerenciem grupos de usuários de forma mais organizada. As alterações incluíram a criação de um novo componente `GrupoDeUsuarios.tsx` e a atualização do arquivo `ConfiguracoesComponents.tsx` para incluir a nova aba.

```diff
diff --git a/src/app/(protected)/configuracoes/ConfiguracoesComponents.tsx b/src/app/(protected)/configuracoes/ConfiguracoesComponents.tsx
index 5bce2c2..a2d8112 100644
--- a/src/app/(protected)/configuracoes/ConfiguracoesComponents.tsx
+++ b/src/app/(protected)/configuracoes/ConfiguracoesComponents.tsx
@@ -2,13 +2,26 @@
```

### Outras Alterações

Houve também uma alteração no arquivo `lib/backend.ts` para melhorar a maneira como as sessões de usuário são gerenciadas e como os tokens de autorização são incluídos nos headers das requisições ao backend.

```diff
diff --git a/lib/backend.ts b/lib/backend.ts
index ab102c1..9eb65f9 100644
--- a/lib/backend.ts
+++ b/lib/backend.ts
@@ -27,13 +27,20 @@
```

## Por que foi feito

Essas mudanças foram feitas para melhorar a experiência do usuário e a funcionalidade do sistema. A página 404 personalizada ajuda a manter o usuário informado e engajado, mesmo quando não encontra o que procura. A implementação do gerenciamento de grupos de usuários é uma resposta às necessidades dos administradores do sistema, que precisam de uma forma mais eficaz de organizar e gerenciar os acessos e permissões dos usuários.

Além disso, as alterações no backend visam melhorar a segurança e a integração do sistema, garantindo que as requisições sejam autenticadas corretamente e que as sessões dos usuários sejam gerenciadas de forma eficiente.

## Impacto

O resultado prático dessas mudanças é uma melhoria significativa na usabilidade e na funcionalidade do sistema. Os usuários agora têm uma experiência mais suave e informativa quando enfrentam erros de página não encontrada, e os administradores têm uma ferramenta poderosa para gerenciar os grupos de usuários.

No entanto, é importante mencionar que essas alterações podem requerer ajustes adicionais em outros componentes do sistema para garantir uma integração completa e sem problemas. Além disso, a segurança e a privacidade dos dados dos usuários continuam a ser prioridades, e qualquer alteração deve ser cuidadosamente testada e validada para garantir que esses padrões sejam mantidos.

Em resumo, as mudanças feitas no Sistema-Contratos-Frontend são um passo significativo na direção certa, melhorando a experiência do usuário e a funcionalidade do sistema, enquanto também se preocupa com a segurança e a integração.

---
*Post gerado automaticamente a partir dos commits [`4cc7397`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/4cc7397dbb21f9f84d45b2206f3238df54d757b8), [`0ccbbbc`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/0ccbbbc49f15fdb2a0404e7e2b9c135aac8fa925), [`72e0dc3`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/72e0dc3aa24c04b3eb6fd35b0eca553403b5a103) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*