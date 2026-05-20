---
layout: post
title: "Refatoração e Correção de Bugs no Sistema-Contratos-Frontend"
date: 2026-05-20 12:54:03 +0000
categories: [Frontend]
tags: ["API", "React", "bugfix", "Sistema Contratos Frontend", "UI", "feature"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

=============================================================

Neste post, vamos discutir as mudanças realizadas no repositório Sistema-Contratos-Frontend, abordando os principais commits e as razões por trás das alterações.

## O que foi feito
---------------

### Commit 1: Ajuste da cor do scroll

No commit `6c541d2`, foi realizado um ajuste na cor do scroll, alterando a classe `.scrollbar-hide` no arquivo `globals.css`. Essa mudança visou melhorar a experiência do usuário, tornando o scroll mais harmonioso com o restante da interface.

```css
.scrollbar-hide::-webkit-scrollbar {
  display: none;
}
```

### Commit 2: Correção de erro de anexo e mensagem com trace id

No commit `6528344`, foram feitas alterações em vários arquivos, incluindo `route.ts` e `useApiError.ts`, para corrigir um erro relacionado a anexos e mensagens com trace id. A mudança incluiu a remoção do cabeçalho `Content-Type` em requisições depatch.

```typescript
delete backendHeaders["Content-Type"];
```

### Commit 3: Ajuste das cores desabilitadas do select

No commit `1c1deb7`, foi feito um ajuste nas cores desabilitadas do componente `Select` no arquivo `Select.tsx`. Isso incluiu mudanças nas classes CSS para melhorar a acessibilidade e a aparência.

```typescript
const fieldWrapCls = `... ${disabled ? "bg-zinc-100 border-zinc-200" : "..."} ...`;
```

### Commit 4: Ajuste para fechar abas no scroll do mouse

No commit `4cf23ef`, foram realizadas alterações nos arquivos `Navbar.tsx` e `InstituicoesComponents.tsx` para permitir o fechamento de abas com o botão do meio do mouse. Isso melhorou a funcionalidade de navegação.

```typescript
onAuxClick={(e) => {
  if (e.button === 1) {
    e.preventDefault();
    e.stopPropagation();
    handleCloseTab(e, tab);
  }
}}
```

### Commit 5: Merge de branch

O commit `220350c` representou um merge de branch, não contendo mudanças diretas no código, mas refletindo atualizações de outros desenvolvedores.

### Commit 6: Remoção de ícones desnecessários

No commit `fa523cd`, foi removido um ícone desnecessário do arquivo `public/icons/ChatGPT Image 19_05_2026, 12_52_52.png`, contribuindo para a organização e otimização do repositório.

### Commit 7: Merge de branch

Semelhante ao commit 5, o commit `61f564f` também foi um merge de branch, trazendo atualizações de outros desenvolvedores para o repositório.

### Commit 8: Adição de valores de saldo no cabeçalho do contrato

No commit `d9f17a0`, foram feitas alterações nos arquivos `Financeiro.tsx` e `Painel.tsx` para adicionar valores de saldo no cabeçalho do contrato, melhorando a visibilidade de informações financeiras importantes.

### Commit 9: Correção de erro do z-index

No commit `7fba4e2`, foram feitas alterações nos arquivos `NavbarNotificationsDropdown.tsx` e `NotificacoesComponents.tsx` para corrigir um erro relacionado ao z-index, garantindo que elementos da interface sejam exibidos corretamente.

### Commit 10: Merge de branch com várias atualizações

O commit `3ee1e6f` foi um merge que trouxe várias atualizações, incluindo correções de bugs e melhorias de funcionalidade em diferentes partes do sistema.

## Por que foi feito
------------------

As mudanças foram motivadas por necessidades específicas de melhoria na usabilidade, correção de bugs e otimização do sistema. Cada alteração teve como objetivo tornar o Sistema-Contratos-Frontend mais eficiente, acessível e agradável para os usuários.

## Impacto
---------

O impacto dessas mudanças é positivo, resultando em uma experiência mais fluida e intuitiva para os usuários. As correções de bugs eliminaram problemas potenciais que poderiam afetar a produtividade, enquanto as melhorias na interface e funcionalidade contribuíram para uma us

---
*Post gerado automaticamente a partir dos commits [`6c541d2`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/6c541d2078e83cd1d1f232839104296dd837c45d), [`6528344`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/6528344a4aee38e216cc02738d88b09060010330), [`1c1deb7`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/1c1deb77be2fc9ef79fe4121610e7f494eff01c8), [`4cf23ef`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/4cf23efa3e545b5031d4af82af3ff868b13f1889), [`220350c`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/220350cd62cc3f0a474e7336022ab16110020b73), [`fa523cd`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/fa523cd191425c7e92e46fbc763dc05421e7b140), [`61f564f`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/61f564f67879e9ccbe2e5372aee56dcd8216ba24), [`d9f17a0`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/d9f17a0d8959693b708bb1c81e5a30c423b6ea7e), [`7fba4e2`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/7fba4e2024c2de2056eecc58ea85b40b08721016), [`3ee1e6f`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/3ee1e6fc05b91afd83b63f0f20670554dd9b9dac) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*