---
layout: post
title: "Implementação de Correções e Melhorias no Sistema de Contratos Frontend"
date: 2026-07-23 17:14:34 +0000
categories: [Frontend]
tags: ["TypeScript", "UI", "React", "API", "bugfix", "Sistema Contratos Frontend"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

O sistema de contratos frontend recentemente passou por mudanças significativas com o objetivo de melhorar a experiência do usuário e corrigir problemas existentes. Este post detalhará as alterações feitas, os motivos por trás delas e o impacto que essas mudanças terão no sistema.

## O que foi feito

Duas principais atualizações foram realizadas no repositório do Sistema-Contratos-Frontend, cada uma abordando aspectos diferentes do sistema.

### Commit 1: Corrigindo a falta de informações do fiscal na página de ato fiscalizar

No arquivo `AtoFiscalizarPageComponents.tsx`, várias mudanças foram feitas para exibir corretamente as informações do fiscal responsável pelo contrato. Foram adicionadas 66 linhas de código e removidas 19, indicando uma refatoração significativa.

Entre as principais alterações, destacam-se a criação de duas funções: `getInitials` e `resolveAvatarSrc`. A função `getInitials` é responsável por extrair as iniciais do nome do fiscal, enquanto `resolveAvatarSrc` processa a URL do avatar para garantir que seja exibida corretamente.

```tsx
function getInitials(nome?: string | null): string {
  const parts = String(nome ?? "")
    .trim()
    .split(/\s+/)
    .filter(Boolean);
  if (parts.length === 0) return "F";
  const first = parts[0]?.[0] ?? "";
  const last = (parts.length > 1 ? parts[parts.length - 1] : "")?.[0] ?? "";
  return (first + last).toUpperCase() || "F";
}

function resolveAvatarSrc(avatar: string | null | undefined): string | null {
  if (!avatar?.trim()) return null;
  const value = avatar.trim();
  if (value.startsWith("data:")) return value;
  if (value.startsWith("http://") || value.startsWith("https://")) return value;
  return value.startsWith("/") ? value : `/${value}`;
}
```

Além disso, foi implementado o componente `FiscalAvatarCell`, que combina as funções acima para exibir o avatar do fiscal e, caso não seja possível, usar as iniciais do nome como uma representação.

```tsx
function FiscalAvatarCell({
  nome,
  avatar,
}: {
  nome: string;
  avatar?: string | null;
}) {
  // ...
}
```

### Commit 2: Corrigindo as notificações

No segundo commit, várias alterações foram feitas em diferentes arquivos para corrigir e melhorar o sistema de notificações. Foram adicionadas 106 linhas de código e removidas 114, mostrando uma revisão substantiva do código existente.

Entre as mudanças notáveis, está a simplificação e reestruturação da lógica para lidar com as notificações no componente `NavbarNotificationsDropdown`. Foram removidas funções e tipos específicos que lidavam com os ícones das notificações, substituídos por uma abordagem mais unificada e dinâmica.

## Por que foi feito

Essas mudanças foram feitas para resolver problemas específicos e melhorar a experiência do usuário no sistema de contratos frontend.

- **Melhorar a Visualização de Informações do Fiscal**: A falta de informações do fiscal na página de ato fiscalizar era um problema que precisava ser corrigido. Isso não apenas melhorou a usabilidade, mas também proporcionou uma experiência mais completa para os usuários que precisam dessas informações.
  
- **Corrigir o Sistema de Notificações**: O sistema de notificações precisava ser revisado para garantir que as notificações fossem exibidas corretamente e de forma consistente. Isso incluiu simplificar e unificar a lógica para lidar com as notificações, tornando o código mais manutenível e escalável.

## Impacto

As mudanças implementadas terão um impacto positivo no sistema de contratos frontend, tanto para os usuários finais quanto para o desenvolvimento futuro do sistema.

- **Experiência do Usuário**: Os usuários agora têm acesso a informações mais completas sobre os fiscais responsáveis pelos contratos, o que pode ajudar na gestão e acompanhamento dos contratos. Além disso, o sistema de notificações funciona de forma mais estável e é mais fácil de usar.

- **Desenvolvimento Futuro**: As mudanças feitas tornaram o código mais organiz

---
*Post gerado automaticamente a partir dos commits [`5e236c9`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/5e236c95127197cac19e9b053f7bec8be5f807fa), [`da6f127`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/da6f12749d7a080861bec8d23ef45ef9a947158c) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*