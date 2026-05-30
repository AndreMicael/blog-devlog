---
layout: post
title: "Ajustes na Listagem de Parcelas no Frontend do Sistema de Contratos"
date: 2026-05-29 15:00:10 +0000
categories: [Frontend]
tags: ["Sistema Contratos Frontend", "React", "TypeScript"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Nesse commit, realizamos ajustes significativos na listagem de parcelas no frontend do Sistema de Contratos, especificamente no arquivo `src/app/(protected)/contratos/_abas/Financeiro.tsx`. A mudança visa melhorar a experiência do usuário ao interagir com as parcelas dos contratos.

Os principais ajustes incluem:
- Ajustes na classe do botão "Editar" para refletir melhor a status da parcela, tornando-o mais claro para o usuário quando uma ação é possível.
- A exclusão do botão "Inativar" que não estava sendo utilizado de forma eficaz na interface.
- A aplicação de `disabled` nos botões "Editar" e "Nota Fiscal da Parcela" com base no status da parcela, garantindo que o usuário só possa realizar ações válidas em relação ao status atual da parcela.

Exemplo do código ajustado para o botão "Editar":
```jsx
<button
  onClick={() => handleActionClick("Editar")}
  disabled={item.status !== "AGUARDANDO_NOTA_FISCAL" && item.status !== "AGUARDANDO_AUTORIZACAO"}
  className="flex w-full items-center gap-2.5 rounded-lg px-3 py-2 text-left text-xs font-medium text-gray-700 transition hover:bg-gray-50 hover:text-blue-primary disabled:opacity-50 cursor-pointer disabled:cursor-not-allowed"
>
  <Pencil className="w-4 h-4 text-blue-500" />
  Editar
</button>
```
Isso melhora significativamente a usabilidade e evita que o usuário tente realizar ações inválidas, melhorando a experiência geral do sistema.

## Por que foi feito

A motivação por trás dessas mudanças foi a necessidade de melhorar a clareza e a usabilidade da listagem de parcelas. Com as alterações, os usuários agora têm uma interface mais limpa e intuitiva, onde as ações possíveis estão claramente indicadas e condicionais ao status da parcela. Isso reduz a confusão e os erros que podem ocorrer quando o usuário tenta realizar ações não permitidas.

Além disso, a remoção do botão "Inativar" simplifica a interface e remove uma funcionalidade que não era necessária ou utilizada de forma eficaz, melhorando assim a experiência do usuário.

## Impacto

Os principais impactos dessas mudanças são:
- Melhoria na usabilidade: Os usuários agora têm uma interface mais clara e intuitiva, reduzindo a chance de erros.
- Redução do número de ações indevidas: Com os botões condicionais ao status da parcela, os usuários são direcionados a realizar apenas ações válidas.
- Interface mais limpa: A remoção do botão desnecessário e os ajustes nos botões existentes tornam a interface mais organizada e fácil de navegar.

Não há riscos significativos associados a essas mudanças, pois elas são incrementais e melhoram a funcionalidade existente sem introduzir novas dependências ou complexidades significativas. No entanto, como em qualquer mudança no código, é importante monitorar o comportamento do sistema após a implementação para garantir que não surjam efeitos colaterais inesperados.

---
*Post gerado automaticamente a partir dos commits [`6657402`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/6657402006469b21132b57e88c7eac8e54edf8bd) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*