---
layout: post
title: "Adicionando Inputs de Quantidade de Dias Específicos e Datas, Correção de Erro de Build e Implantação de Filtros Avançados em Contratos"
date: 2026-04-17 21:53:12 +0000
categories: [Frontend]
tags: ["UI", "TypeScript", "bugfix", "testes", "feature", "Sistema Contratos Frontend"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Este conjunto de mudanças visa melhorar a funcionalidade e a usabilidade do Sistema-Contratos-Frontend, com foco na adição de novos inputs para captura de informações específicas, resolução de erros de build e implementação de filtros avançados para gestão de contratos.

- **Commit febf278**: Foram adicionados inputs para capturar a quantidade de dias específicos e datas. Isso foi realizado no arquivo `page.tsx` dentro do diretório `src/app/(protected)/contratos/gerenciar/fiscalizar/novo/[id]`. Especificamente, as linhas adicionadas incluem a criação de estados para `qtdDiasEspecificos` e a lógica para manipular esses valores com base na seleção da periodicidade.

```typescript
const [qtdDiasEspecificos, setQtdDiasEspecificos] = useState<number>(0);

// ...

{form.periodicidade === "2" && (
  <>
    <label className={labelCls}>Quantos dias?</label>
    <input
      type="number"
      className="border border-solid border-gray-300 rounded-sm p-2 "
      value={String(qtdDiasEspecificos)}
      // ...
    />
  </>
)}
```

- **Commit f170873**: Foi ajustado um erro de build no componente `Select` e no arquivo `EditarRepresentantesTab.tsx`, melhorando a consistência dos tipos e resolvendo um problema de compatibilidade.

```typescript
interface SelectProps extends Omit<
  React.SelectHTMLAttributes<HTMLSelectElement>,
  "onChange"
> {
  // ...
  onChange?: (value: string) => void;
}
```

- **Commit fe5c72d**: Adicionado um checkbox para procedimento licitatório no arquivo `Gestao.tsx`, dentro do diretório `src/app/(protected)/contratos/novo/Etapas`.

```typescript
const [isLicitatorio, setIsLicitatorio] = useState<boolean>(false);

// ...

<CheckOption
  id="licitatorio"
  label="Procedimento Licitatório"
  checked={isLicitatorio}
  onChange={() => setIsLicitatorio(!isLicitatorio)}
/>
```

- **Commit 09dc602**: Criado um componente reutilizável de input e ajustado o select, visando padronizar os componentes de formulário.

```typescript
export function Input({
  label,
  icon,
  error,
  mask,
  type = "text",
  onChange,
  className,
  containerClassName,
  id,
  hideErrorText,
  ...props
}: InputProps) {
  // Implementação do componente Input
}
```

- **Commit ddf6438**: Implementados filtros avançados para a página de contratos, permitindo que os usuários filtrem contratos por unidade, departamento, ano, início e fim de vigência.

```typescript
const [filtros, setFiltros] = useState({
  unidadeId: "",
  departamentoId: "",
  ano: "",
  inicioVigencia: "",
  fimVigencia: "",
});

// ...

<FilterPanel>
  <Select
    label="Unidade"
    value={filtros.unidadeId}
    onChange={(v) => setFiltros({ ...filtros, unidadeId: v })}
    options={unidades.map((u) => ({ value: u.id, label: u.nome }))}
  />
  {/* Outros filtros... */}
</FilterPanel>
```

## Por que foi feito

Essas mudanças foram necessárias para:

- **Melhorar a captura de informações**: Os novos inputs permitem que os usuários forneçam detalhes específicos sobre contratos, melhorando a precisão dos dados.
- **Resolver problemas técnicos**: A correção do erro de build garante a estabilidade do sistema e permite a continuidade do desenvolvimento sem interrupções.
- **Enhanciar a usabilidade**: A implantação de filtros avançados facilita a gestão de contratos para os usuários, permitindo que eles encontrem e gerenciem contratos específicos de forma eficiente.

## Impacto

O impacto prático dessas mudanças é:

- **Melhoria na experiência do usuário**: Com a adição de novos inputs e a implementação de filtros avançados, os usuários podem gerenciar contratos de forma mais eficaz e personalizada.
- **Redução de

---
*Post gerado automaticamente a partir dos commits [`febf278`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/febf27898585d621f280e2d4f9e500798e2eb649), [`f170873`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/f170873f45f13c9491cfe7baf50bdc755a7791e6), [`be0ad5c`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/be0ad5c6ef2e0083b53f4779467474e1825b7a30), [`fe5c72d`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/fe5c72d6757f12ea46527d65da1104a4bf10e20a), [`09dc602`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/09dc602ced13719d5eb5ea337e67748a19525976), [`a043cc9`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/a043cc965c79e46f876accf3ef30f3ac2e13cfe0), [`76d3ad5`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/76d3ad5f72648469dcfa27843ba8168d4f8da55c), [`ddf6438`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/ddf6438a59b80882bb99daa83528546d3e538335), [`11cd8d4`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/11cd8d48c8a3027c2f7fbc9fd6635e0b40a60ced), [`7afcb51`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/7afcb5163dd519abd3c30570a52dee5ccadef6eb) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*