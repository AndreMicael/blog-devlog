---
layout: post
title: "Atualização do Sistema de Contratos: Implementação de Configurações e Notificações"
date: 2026-05-13 14:08:45 +0000
categories: [Frontend]
tags: ["API", "UI", "Sistema Contratos Frontend", "feature", "TypeScript", "React"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Nesta atualização, foram realizadas várias mudanças importantes no sistema de contratos, especialmente na área de configurações e notificações. A partir do commit `2662895`, podemos observar que o arquivo `ConfiguracoesComponents.tsx` foi alterado para ajustar o nome das abas, melhorando a experiência do usuário.

```diff
diff --git a/src/app/(protected)/configuracoes/ConfiguracoesComponents.tsx b/src/app/(protected)/configuracoes/ConfiguracoesComponents.tsx
index 50bd453..ca2446d 100644
--- a/src/app/(protected)/configuracoes/ConfiguracoesComponents.tsx
+++ b/src/app/(protected)/configuracoes/ConfiguracoesComponents.tsx
@@ -22,7 +17,7 @@ const ABAS: PageTabItem<AbaConfig>[] = [
   },
   {
     id: "emails",
-    label: "Configurações de E-mail",
+    label: "E-mail",
     icon: <Mail className="w-4 h-4" />,
   },
 ]
```

Além disso, foram feitas alterações significativas nos commits `e277ef8` e `4a883d9`, que conectam as configurações de notificações e e-mail com o backend, permitindo uma integração mais completa entre os componentes do sistema.

```diff
diff --git a/src/app/(protected)/configuracoes/ConfiguracoesComponents.tsx b/src/app/(protected)/configuracoes/ConfiguracoesComponents.tsx
index e6074be..50bd453 100644
--- a/src/app/(protected)/configuracoes/ConfiguracoesComponents.tsx
+++ b/src/app/(protected)/configuracoes/ConfiguracoesComponents.tsx
@@ -2,19 +2,11 @@
 
 import React, { useState } from "react";
 import PageTabs, { PageTabItem } from "@/components/PageTabs";
-import {
-  ActionButton,
-  PrimaryButton,
-} from "@/app/(protected)/contratos/_components/ui";
```

Outras mudanças notáveis incluem a adição de uma tela de configurações, melhorias na interface do usuário e a implementação de um filtro de ano na aba de financeiro.

```diff
diff --git a/src/app/(protected)/contratos/_abas/Financeiro.tsx b/src/app/(protected)/contratos/_abas/Financeiro.tsx
index 1f7f316..2275c07 100644
--- a/src/app/(protected)/contratos/_abas/Financeiro.tsx
+++ b/src/app/(protected)/contratos/_abas/Financeiro.tsx
@@ -1,6 +1,19 @@
 "use client";
 
-import { Construction } from "lucide-react";
+import {
+  CalendarDays,
+  CheckCircle2,
+  Clock3,
+  AlertCircle,
+  Hourglass,
+  BadgeInfo,
+  MoreVertical,
+  ChevronLeft,
+  ChevronRight,
+  ChevronsRight,
+  Plus,
+  Eye,
+} from "lucide-react";
```

## Por que foi feito

As mudanças feitas no sistema de contratos visam melhorar a experiência do usuário e proporcionar uma integração mais completa entre os componentes do sistema. A conexão das configurações de notificações e e-mail com o backend é essencial para garantir que as preferências do usuário sejam salvas e aplicadas corretamente.

Além disso, a adição de uma tela de configurações e a implementação de um filtro de ano na aba de financeiro buscam melhorar a usabilidade do sistema e facilitar a navegação do usuário.

## Impacto

Com essas mudanças, o sistema de contratos torna-se mais completo e fácil de usar. Os usuários poderão configurar suas preferências de notificação e e-mail de forma mais eficaz, e a integração com o backend garantirá que essas configurações sejam aplicadas corretamente.

Além disso, a adição de uma tela de configurações e a implementação de um filtro de ano na aba de financeiro melhorarão a experiência do usuário e facilitarão a navegação no sistema.

No entanto, é importante notar que essas mudanças podem exigir ajustes por parte dos usuários, especialmente aqueles que estavam habituados com a interface anterior. Portanto, é recomendável fornecer treinamento e suporte para ajudar os usuários a

---
*Post gerado automaticamente a partir dos commits [`2662895`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/266289518454f8612a3175b7b1e216876dbb3122), [`e277ef8`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/e277ef8b9a6c5cf25c279f031b8006d4ce4c5b68), [`4a883d9`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/4a883d97fe88f0da9c08345b045d5a77ec726cd4), [`6bb6f2d`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/6bb6f2ded821770e50239b3b74eb68b539485ff9), [`45adf89`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/45adf89dc3026aaec47641679f3d928d51232cfd), [`3bfd072`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/3bfd0729660aeeebc219022b979f6857bfc3f485), [`69aaa1e`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/69aaa1efa50562257c66bac7dd3ecb2ba2ced041) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*