---
layout: post
title: "Refatoração do componente DatePickerCally para melhor UX e integração com cadastro de períodos"
date: 2026-05-25 12:44:05 +0000
categories: [Frontend]
tags: ["React", "API", "TypeScript", "Sistema Contratos Frontend", "feature", "UI"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Recentemente, fizemos uma série de mudanças importantes no repositório Sistema-Contratos-Frontend, visando melhorar a experiência do usuário e a integração com o cadastro de períodos. Essas mudanças foram implementadas através do commit `1679ed1`, que adicionou 1162 linhas de código e removeu 228 linhas.

Os arquivos alterados incluem:

- `components/ui/DatePickerCally.tsx`
- `src/app/(protected)/contratos/_abas/Financeiro.tsx`
- `src/app/(protected)/contratos/_components/DashboardMetricasFinanceiras.tsx`
- `src/app/(protected)/contratos/_components/ui.tsx`
- `src/app/api/contratos/[idContrato]/periodos/[idPeriodo]/route.ts`
- `src/app/api/contratos/[idContrato]/periodos/route.ts`
- `src/hooks/useContratoPeriodos.ts`
- `utils/functions.ts`

No arquivo `components/ui/DatePickerCally.tsx`, fizemos alterações significativas para melhorar a posicionamento do calendário de datas. Anteriormente, o calendário era posicionado apenas abaixo do campo de input, o que podia causar problemas de exibição em telas menores ou quando o campo de input estava próximo do final da janela. Agora, o calendário pode ser exibido acima ou abaixo do campo de input, dependendo do espaço disponível na janela.

```tsx
const spaceBelow = window.innerHeight - wrapRect.bottom;
const spaceAbove = wrapRect.top;
const openUpwards = spaceBelow < 360 && spaceAbove > spaceBelow;

if (openUpwards) {
  const bottom = Math.round(window.innerHeight - wrapRect.top + 6);
  setPortalPos({
    top: "auto",
    bottom,
    left,
    width: rect.width,
    openUpwards: true,
  });
} else {
  const top = Math.round(wrapRect.bottom + 6);
  setPortalPos({
    top,
    bottom: "auto",
    left,
    width: rect.width,
    openUpwards: false,
  });
}
```

Além disso, também fizemos alterações nos estilos do campo de input para melhorar a aparência e a consistência com o resto da aplicação.

## Por que foi feito

Essas mudanças foram feitas para melhorar a experiência do usuário e a integração com o cadastro de períodos. O componente DatePickerCally é usado em várias partes da aplicação, e a capacidade de exibir o calendário acima ou abaixo do campo de input melhora significativamente a usabilidade.

Além disso, a integração com o cadastro de períodos é fundamental para a funcionalidade da aplicação, e as mudanças feitas nos arquivos de rota e hooks ajudam a garantir que a aplicação funcione corretamente e de forma eficiente.

## Impacto

O impacto dessas mudanças é significativo, pois melhora a experiência do usuário e a integração com o cadastro de períodos. Os usuários agora podem usar o componente DatePickerCally de forma mais eficaz e intuitiva, e a aplicação como um todo funciona de forma mais eficiente.

No entanto, é importante notar que as mudanças feitas podem afetar a compatibilidade com versões anteriores da aplicação, e é recomendável testar a aplicação completamente após implementar essas mudanças.

Em resumo, as mudanças feitas no repositório Sistema-Contratos-Frontend melhoram significativamente a experiência do usuário e a integração com o cadastro de períodos, e são um passo importante para garantir que a aplicação funcione de forma eficaz e eficiente.

---
*Post gerado automaticamente a partir dos commits [`1679ed1`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/1679ed1f41f5ba2bb0709df16e506ea3e5521a0e) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*