---
layout: post
title: "Refatoração e Correção de Bugs no Sistema-Contratos-Frontend"
date: 2026-03-30 15:10:08 +0000
categories: [Frontend]
tags: ["TypeScript", "CI/CD", "API", "React", "bugfix", "UI"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

Neste post, vamos explorar as mudanças recentes realizadas no repositório Sistema-Contratos-Frontend, que visam melhorar a estabilidade e a usabilidade do sistema. Vamos dividir este post em três seções principais: O que foi feito, Por que foi feito e Impacto.

## O que foi feito

As mudanças foram realizadas em quatro commits distintos, cada um com um objetivo específico:

- **Commit 1 (`3df75ce`)**: Corrigindo erros de build. Neste commit, foram adicionadas 14 linhas de código e removida 1 linha no arquivo `src/app/(protected)/contratos/_components/ui.tsx`. As alterações incluíram a adição de uma propriedade `disabled` ao componente `ActionButton` e ajustes nos estilos para melhorar a acessibilidade.

```jsx
export function ActionButton({
  // ...
  disabled,
}: {
  // ...
  disabled?: boolean;
}) {
  // ...
  return (
    <button
      type="button"
      onClick={onClick}
      disabled={disabled}
      className={cls}
      style={{
        ...style,
        opacity: disabled ? 0.55 : 1,
        cursor: disabled ? "not-allowed" : "pointer",
      }}
    >
      {children}
    </button>
  );
}
```

- **Commit 2 (`837d9ed`)**: Melhorando o design das páginas e corrigindo inconsistências nas fontes. Foram alterados seis arquivos, incluindo `src/app/(protected)/contratos/_abas/Cadastro.tsx`, `src/app/(protected)/contratos/_abas/Controle.tsx`, entre outros. As mudanças visam padronizar os estilos de texto e melhorar a legibilidade.

```jsx
<p className="text-sm font-semibold text-blue-primary">
  {p.razao_social ?? p.nome_fantasia ?? NA}
</p>
<p className="mt-0.5 font-mono text-sm text-zinc-600">
  {doc}
</p>
```

- **Commit 3 (`3764fbf`)**: Corrigindo erros vindos da API faltando aditivos. Foram adicionadas 108 linhas de código e removidas 17 linhas no arquivo `src/app/(protected)/contratos/_abas/Financeiro.tsx`. As alterações incluem a implementação de componentes para exibir informações financeiras de contratos, incluindo valores iniciais, pagos e aditivos.

```jsx
const Financeiro = ({ contrato }: { contrato?: ContratoDetalhe }) => {
  const { data } = useContrato(contrato?.id_contrato);

  const fin = data?.financeiro;
  const valorInicial = Number(fin?.valor_contrato ?? 0);
  const valorPagoAtual = Number(fin?.valor_pago ?? 0);
  const saldoAtual = Number(fin?.saldo ?? 0);
  const valorAditivos = (data?.aditivos ?? []).reduce(
    (total, aditivo) => total + Number(aditivo.valor_aditivo ?? 0),
    0,
  );
  // ...
}
```

- **Commit 4 (`0c8e7c1`)**: Retirando mocks. Foram alterados sete arquivos, incluindo `src/app/(protected)/contratos/_abas/Cadastro.tsx` e `.github/workflows/node.js.yml`. As mudanças visam remover dados mockados e utilizar dados reais da API, melhorando a integração do sistema.

## Por que foi feito

As mudanças foram motivadas por várias razões:

- **Melhoria da Usabilidade**: Corrigir bugs e melhorar a interface de usuário são essenciais para garantir que o sistema seja fácil de usar e proporcionar uma boa experiência ao usuário.
- **Estabilização do Sistema**: A correção de erros de build e a remoção de mocks são cruciais para garantir a estabilidade do sistema, permitindo que ele funcione corretamente em diferentes ambientes.
- **Preparação para Novas Funcionalidades**: A implementação de componentes para exibir informações financeiras de contratos prepara o terreno para a adição de novas funcionalidades relacionadas ao gerenciamento de contratos.

## Impacto

O impacto prático dessas mudanças é significativo:

- **Melhoria da Experiência do Usuário**: Com as melhorias na interface e na usabilidade, os usuários terão uma experiência mais agradável e eficiente

---
*Post gerado automaticamente a partir dos commits [`3df75ce`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/3df75ceeb6f486373d7cd91f81bda420b3941618), [`837d9ed`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/837d9ed58970d5599598290a5e01fd9f91806b30), [`3764fbf`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/3764fbf9b1869c0c9b0a3f60c6ccc186eb7139cf), [`0c8e7c1`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/0c8e7c1fae0cf4d43bdcabd7ab0aa05186e6c816) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*