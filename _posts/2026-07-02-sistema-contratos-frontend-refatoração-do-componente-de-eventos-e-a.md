---
layout: post
title: "Refatoração do componente de Eventos e ajustes de containers"
date: 2026-07-02 12:40:07 +0000
categories: [Frontend]
tags: ["UI", "CI/CD", "TypeScript", "React", "Sistema Contratos Frontend", "JavaScript"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Duas principais mudanças foram realizadas no repositório `Sistema-Contratos-Frontend`. A primeira mudança, realizada por AndreMicael, foi feita no arquivo `.github/workflows/node.js.yml`, com o commit `239e73d`. Essa alteração teve como objetivo corrigir o problema de remoção de containers e imagens orfãs no workflow do GitHub Actions. Foram adicionadas linhas para remover containers antigos com base em seu nome e label, além de melhorar a limpeza de artefatos após o build.

```yml
echo "🧹 Parando serviços via docker-compose (projeto $PROJECT)"
docker-compose -p "$PROJECT" down --remove-orphans --volumes 2>/dev/null || true
```

A segunda mudança, realizada por Taynah-M-Alves, foi feita em vários arquivos dentro do diretório `src/app/(protected)/contratos/`, com o commit `3fc603d`. Essas alterações visaram ajustar os modais e componentes de eventos dentro da aplicação. Foram atualizados arquivos como `Eventos.tsx`, `DashboardMetricasFinanceiras.tsx`, `ModalAditivo.tsx`, entre outros, para melhorar a exibição de informações financeiras e a lógica por trás da apresentação desses dados.

Por exemplo, no arquivo `Eventos.tsx`, houve uma mudança significativa na forma como o valor total de impacto financeiro é calculado e apresentado:

```jsx
const resultado = evento.acoes?.reduce(
  (acc, acao) => {
    acao.impacto?.forEach((impacto) => {
      acc.valorTotal += Number(impacto.valor_impacto || 0);
      
      // Guarda a operação (ou substitui pela última encontrada)
      acc.operacao = impacto.operacao;
    });
    
    return acc;
  },
  {
    valorTotal: 0,
    operacao: null as string | null,
  },
);
```

## Por que foi feito

A motivação por trás dessas mudanças foi resolver problemas específicos que estavam afetando a estabilidade e a usabilidade do sistema. O commit de AndreMicael visou solucionar o problema de containers e imagens orfãs que ficavam sem ser removidos após o workflow do GitHub Actions, o que podia causar problemas de espaço em disco e inconsistências nos builds. Já as mudanças de Taynah-M-Alves foram direcionadas a melhorar a UX e a lógica de negócios por trás da exibição de eventos e métricas financeiras, tornando a aplicação mais intuitiva e precisa para os usuários.

## Impacto

O resultado prático dessas mudanças é uma aplicação mais estável e confiável, com menos problemas de containers e imagens não removidas, o que pode reduzir erros e aumentar a eficiência dos builds. Além disso, a interface do usuário para eventos e métricas financeiras foi melhorada, tornando-a mais clara e útil para os usuários finais. Essas mudanças também prepararam o caminho para novas funcionalidades e melhorias, dado que a base de código foi limpa e otimizada.

No entanto, é importante notar que, como em qualquer mudança de código, existe um risco de introduzir novos bugs ou comportamentos inesperados. Portanto, é crucial realizar testes minuciosos e garantir que todas as funcionalidades estejam trabalhando como esperado após essas alterações.

---
*Post gerado automaticamente a partir dos commits [`239e73d`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/239e73dc7e83d770ee52245a0b4883043bdac099), [`3fc603d`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/3fc603ddd12844eeddf3d57e456661d8e18c92ac) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*