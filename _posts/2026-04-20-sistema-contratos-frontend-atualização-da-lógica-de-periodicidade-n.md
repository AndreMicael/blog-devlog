---
layout: post
title: "Atualização da lógica de periodicidade no Sistema-Contratos-Frontend"
date: 2026-04-20 21:58:27 +0000
categories: [Frontend]
tags: ["TypeScript", "Sistema Contratos Frontend", "React"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

A lógica de periodicidade no Sistema-Contratos-Frontend foi atualizada no commit `50582ca`, realizado em 20 de abril de 2026. Esse commit alterou o arquivo `page.tsx` localizado em `src/app/(protected)/contratos/gerenciar/fiscalizar/novo/[id]/`. As principais mudanças incluem a adição de novos campos no formulário de criação de fiscalizações e a atualização da lógica de seleção de periodicidade.

Os arquivos alterados incluem:
- `src/app/(protected)/contratos/gerenciar/fiscalizar/novo/[id]/page.tsx`

As alterações incluem a adição de novos campos no estado `form`, como `competencia_mes`, `competencia_ano`, `situacao`, `Datacriacao`, `ativo`, `diaMensal` e `quantidadeDatas`. Além disso, a lógica de seleção de periodicidade foi atualizada para incluir os novos valores "MENSAL" e "DIAS_ESPECIFICOS".

```typescript
const [form, setForm] = useState({
  nomeFiscalizacao: "",
  competencia_mes: "",
  competencia_ano: "",
  situacao: "",
  parte: "",
  fiscal: "",
  local: "",
  dataInicio: "",
  dataFinal: "",
  isSubstituto: isSubstituto,
  descricao: "",
  Datacriacao: "",
  ativo: true,
  periodicidade: "MENSAL",
  datasPeriodicidade: "",
  diaMensal: 0,
  quantidadeDatas: 0,
});
```

A lógica de seleção de periodicidade foi atualizada para incluir os novos valores:

```typescript
const periodicidade: periodicidadeProps[] = [
  { id: 1, tipo: "MENSAL" },
  { id: 2, tipo: "DIAS_ESPECIFICOS" },
];
```

## Por que foi feito

A motivação por trás dessas mudanças é melhorar a lógica de periodicidade no Sistema-Contratos-Frontend. Anteriormente, a seleção de periodicidade era limitada e não permitia a criação de fiscalizações com periodicidades mais complexas. Com as mudanças realizadas, agora é possível criar fiscalizações com periodicidades mensais e diárias específicas.

Além disso, as mudanças incluem a adição de novos campos no formulário de criação de fiscalizações, o que permite armazenar mais informações sobre as fiscalizações e melhorar a experiência do usuário.

## Impacto

O impacto dessas mudanças é significativo, pois permite que os usuários criem fiscalizações com periodicidades mais complexas e armazenem mais informações sobre as fiscalizações. Isso pode melhorar a eficiência e a eficácia das fiscalizações, além de proporcionar uma experiência mais personalizada para os usuários.

No entanto, é importante notar que as mudanças incluem a adição de novos campos no estado `form` e a atualização da lógica de seleção de periodicidade. Isso pode afetar a compatibilidade com versões anteriores do sistema e requer testes adicionais para garantir que as mudanças sejam estáveis e funcionem como esperado.

Em resumo, as mudanças realizadas no commit `50582ca` melhoram a lógica de periodicidade no Sistema-Contratos-Frontend, permitindo que os usuários criem fiscalizações com periodicidades mais complexas e armazenem mais informações sobre as fiscalizações. No entanto, é importante realizar testes adicionais para garantir que as mudanças sejam estáveis e funcionem como esperado.

---
*Post gerado automaticamente a partir dos commits [`50582ca`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/50582ca0fbd3cac125858baa98afbd66e4932551) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*