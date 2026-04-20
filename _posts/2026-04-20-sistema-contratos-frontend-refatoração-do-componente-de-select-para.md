---
layout: post
title: "Refatoração do componente de select para melhor estilização e funcionalidade"
date: 2026-04-20 12:46:02 +0000
categories: [Frontend]
tags: ["React", "UI", "TypeScript", "Sistema Contratos Frontend"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

No commit `2d1c011`, realizado em 2026-04-20T12:46:02Z, o componente `Select.tsx` foi substancialmente refatorado para melhorar a estilização e funcionalidade das opções nos selects. Esse commit adicionou 178 linhas de código e removeu 34, indicando uma mudança significativa na estrutura e comportamento do componente.

- **Importações**: Foram adicionadas importações importantes, como `useState`, `useRef`, `useEffect` e `useLayoutEffect` do React, bem como `createPortal` do `react-dom` e componentes do `framer-motion` para suportar animações e efeitos visuais.
- **Tipagem**: A interface `SelectOption` foi mantida, mas a interface `SelectProps` foi estendida para incluir novas propriedades como `value`, `disabled` e `required`, refletindo a necessidade de suportar funcionalidades mais avançadas.
- **Estado e Refs**: Foram introduzidos estados como `isOpen`, `mounted` e `coords` para gerenciar a visibilidade, o estado de montagem do componente e as coordenadas para posicionamento correto do menu de opções. Um ref `containerRef` foi adicionado para acessar o elemento do container do select.
- **Manipulação de Estado**: A lógica para manipular o estado do componente, especialmente a abertura e fechamento do menu de opções, foi implementada utilizando estados e efeitos.

```jsx
const [isOpen, setIsOpen] = useState(false);
const [mounted, setMounted] = useState(false);
const [coords, setCoords] = useState({ top: 0, left: 0, width: 0 });
```

- **Funções**: Funções como `updateCoords` foram criadas para atualizar as coordenadas do menu de opções com base na posição do botão ou container, garantindo uma posição correta do menu em diferentes situações de layout.

```jsx
const updateCoords = () => {
  if (containerRef.current) {
    const rect = containerRef.current.getBoundingClientRect();
    const buttonElement = containerRef.current.querySelector("button");
    if (buttonElement) {
      const buttonRect = buttonElement.getBoundingClientRect();
      setCoords({
        top: buttonRect.bottom + window.scrollY,
        left: buttonRect.left + window.scrollX,
        width: buttonRect.width,
      });
    } else {
      setCoords({
        top: rect.bottom + window.scrollY,
        left: rect.left + window.scrollX,
        width: rect.width,
      });
    }
  }
};
```

## Por que foi feito

Essas mudanças foram realizadas para melhorar significativamente a experiência do usuário com o componente de select. A necessidade de estilização mais avançada e uma funcionalidade mais rica, como a capacidade de controlar a visibilidade do menu de opções e suportar diversas propriedades para customização, está por trás dessas alterações. Além disso, a integração de bibliotecas como `framer-motion` permite a criação de efeitos visuais mais atraentes e responsivos, melhorando a interação do usuário com o componente.

A refatoração do componente `Select` para incluir estado, refs e efeitos foi uma resposta às demandas por uma funcionalidade mais dinâmica e personalizável, especialmente em aplicações que exigem uma experiência de usuário mais imersiva e interativa.

## Impacto

O impacto dessas mudanças é multifacetado:
- **Melhoria na UX**: Os usuários finais podem agora contar com uma experiência de select mais intuitiva e esteticamente agradável, com opções que podem ser facilmente visualizadas e selecionadas.
- **Flexibilidade**: Desenvolvedores podem personalizar o componente `Select` de maneira mais flexível, usando as novas propriedades e estados para se adequar a diferentes necessidades de design e funcionalidade.
- **Manutenção**: A estrutura do código foi reorganizada para ser mais modular e fácil de entender, o que facilita a manutenção e atualização do componente no futuro.

No entanto, é importante considerar o risco de compatibilidade com versões anteriores ou integrações com outros componentes que possam ter sido afetadas pelas mudanças. Testes rigorosos são necessários para garantir que as alterações não introduzam bugs ou funcionamentos inesperados.

---
*Post gerado automaticamente a partir dos commits [`2d1c011`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/2d1c011f4f4e9305d499221d4ca18be94855f9d7) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*