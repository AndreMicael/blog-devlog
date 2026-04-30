---
layout: post
title: "Adição de Recursos e Correções no Sistema-Contratos-Frontend"
date: 2026-04-30 12:36:37 +0000
categories: [Frontend]
tags: ["bugfix", "testes", "TypeScript", "Sistema Contratos Frontend", "API", "React"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Foram realizadas várias mudanças no repositório `Sistema-Contratos-Frontend` para melhorar a funcionalidade e a usabilidade do sistema. Abaixo, estão detalhadas as principais alterações:

- **Commit 1e317be**: Foi feito um merge da branch `dev` para incluir várias melhorias e correções, incluindo a atualização de componentes e a correção de bugs.
- **Commit f01c0e9**: Foram adicionadas imagens no cadastro de contratos, melhorando a experiência do usuário.
- **Commit f7055cb**: Ajustes nos nomes de colunas em diversas partes do sistema para melhorar a clareza e a consistência.
- **Commit 87be241**: Adicionada tela de sanções administrativas, permitindo uma gestão mais completa das sanções dentro do sistema.
- **Commit 2f0e3a1**: Correções adicionais na tela de partes, incluindo melhorias na lógica de edição de envolvidos e tratamento de erros.
- **Commit 206ab9b**: Adicionadas regras na página de partes para melhorar a validação de dados e a experiência do usuário.
- **Commit 99da843**: Adicionada página de gestão, proporcionando uma visão geral mais abrangente dos contratos e envolvidos.
- **Commit c229d4a**: Merge da branch `dev` para incluir melhorias gerais e correções.
- **Commit b09ea7c**: Ajustes na funcionalidade de partes do contrato, incluindo melhorias na exibição de funções e tratamento de dados.
- **Commit 3bf2dc4**: Adicionada tela de regime de execução, fornecendo informações detalhadas sobre o regime de execução dos contratos.

Alguns trechos de código relevantes incluem:
```typescript
// Exemplo de adição de coluna em uma tabela
const COLUMNS: ColumnDef[] = [
  { label: "Nome", key: "Nome", sortable: true },
  { label: "Descrição", key: "Descrição", sortable: true },
  { label: "Status", key: "Status", sortable: true },
  { label: "Ações", key: "Ações", sortable: false },
];
```

```typescript
// Exemplo de tratamento de erros em requisições
const json = (await res.json().catch(() => ({}))) as {
  error?: string;
  message?: string | string[];
};
if (!res.ok) {
  const msg =
    (typeof json.error === "string" && json.error.trim()) ||
    (typeof json.message === "string" && json.message.trim()) ||
    (Array.isArray(json.message)
      ? json.message.filter((m) => typeof m === "string").join(" ")
      : "") ||
    "Falha ao incluir envolvido";
  throw new Error(msg);
}
```

## Por que foi feito

Essas mudanças foram feitas para melhorar a experiência do usuário, corrigir bugs e expandir as funcionalidades do sistema. Com a adição de novas telas e a melhoria na exibição de informações, o sistema se torna mais útil e fácil de usar para os administradores e gestores de contratos. Além disso, as correções de bugs e ajustes nos componentes contribuem para uma experiência mais estável e confiável.

## Impacto

O impacto dessas mudanças é significativo, pois elas afetam diretamente a forma como os usuários interagem com o sistema. Com as novas funcionalidades, como a tela de sanções administrativas e a página de gestão, os usuários têm mais ferramentas para gerenciar contratos de forma eficiente. Além disso, as melhorias na usabilidade e a correção de bugs tornam o sistema mais agradável e menos propenso a erros, o que pode aumentar a satisfação dos usuários e reduzir o tempo gasto em resolução de problemas. No entanto, é importante testar thoroughly essas mudanças para garantir que não introduzam novos problemas ou incompatibilidades.

---
*Post gerado automaticamente a partir dos commits [`1e317be`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/1e317be42f9a2dc733c27e85829e282d10e03e1c), [`f01c0e9`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/f01c0e9fc989802c3855564018e81711162ddd25), [`f7055cb`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/f7055cb534aef593080755eee0ec869604a0625d), [`87be241`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/87be241e7b1d3a9231d1785901141f774310e087), [`2f0e3a1`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/2f0e3a1305fad57a0babe11b642d0e1e4584b95a), [`206ab9b`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/206ab9bce1915c5e4c399e8ec3e0a0cbaf7d12b7), [`99da843`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/99da8438689c55a2436d4680cd8d02197b2fc2a8), [`c229d4a`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/c229d4ae14c75ef759f9c79f6ad49070f5958a56), [`b09ea7c`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/b09ea7c786569273a7b83daf8eab833c4600f4ba), [`3bf2dc4`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/3bf2dc4d378465d6b89bb09b77630da5e9839570) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*