---
layout: post
title: "Implementação de Integração com API de Criação e Edição de Aditivos em sistema de contratos"
date: 2026-05-14 21:36:53 +0000
categories: [Frontend]
tags: ["feature", "Sistema Contratos Frontend", "TypeScript", "API", "React"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Foram realizadas mudanças importantes no repositório "Sistema-Contratos-Frontend" para implementar a integração com a API de criação e edição de aditivos. Isso envolveu várias partes do sistema, incluindo a atualização dos componentes de frontend responsáveis por exibir e manipular os aditivos, bem como ajustes nas rotas de API para lidar com as requisições de criação e edição.

Os principais arquivos alterados foram:
- `src/app/(protected)/contratos/gerenciar/[id]/aditivos/editar/[idAditivo]/page.tsx`
- `src/app/(protected)/contratos/_abas/Eventos.tsx`
- `src/app/(protected)/contratos/gerenciar/[id]/aditivos/novo/page.tsx`
- `lib/backend.ts`
- `src/hooks/useApiError.ts`

Um exemplo do código adicionado para permitir a edição de aditivos é o seguinte:
```jsx
const handleUpdate = async () => {
  try {
    setLoading(true);

    const payload = {
      numero_aditivo: form.numeroAditivo,
      ano: Number(form.ano),
      objeto: form.objeto || null,
      data_assinatura: form.dataAssinatura,
      data_publicacao: form.dataPublicacao,
      inicio_vigencia: form.inicioVigencia,
      fim_vigencia: form.fimVigencia,
      valor_aditivo: form.valorAditivo
        ? Number(form.valorAditivo.replace(/\./g, "").replace(",", "."))
        : null,

      observacao: form.observacoes || null,
    };

    console.log("payload", payload);
    const response = await fetch(getApiUrl(`api/contratos/${id}/aditivos/${idAditivo}`), {
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
      },

      body: JSON.stringify(payload),
    });

    if (!response.ok) {
      throw new Error("Erro ao atualizar aditivo");
    }
  } catch (error) {
    console.error(error);
  } finally {
    setLoading(false);
  }
};
```

## Por que foi feito

Essas mudanças foram feitas para melhorar a funcionalidade do sistema de contratos, permitindo que os usuários criem e editem aditivos de forma mais eficiente e integrada. A integração com a API de criação e edição de aditivos permite que o sistema seja mais flexível e escalável, podendo lidar com diferentes tipos de contratos e aditivos de maneira consistente.

Além disso, os ajustes nas rotas de API e na manipulação de erros ajudam a garantir que o sistema seja mais robusto e confiável, reduzindo a possibilidade de erros e melhorando a experiência do usuário.

## Impacto

Com essas mudanças, o sistema de contratos agora oferece uma funcionalidade mais completa e integrada para a criação e edição de aditivos. Isso deve melhorar a eficiência e a produtividade dos usuários, além de reduzir os erros e inconsistências.

No entanto, é importante ter em mente que a implantação de novas funcionalidades e mudanças no sistema pode exigir ajustes adicionais e testes para garantir que tudo esteja funcionando corretamente. Além disso, a documentação do sistema deve ser atualizada para refletir as novas funcionalidades e mudanças.

---
*Post gerado automaticamente a partir dos commits [`23beac0`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/23beac01a3606ba6016f39e7cf99778bd924b390), [`18b9a74`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/18b9a74a0be35d392afc35e43d093334d38ab667), [`deefda5`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/deefda5e2658051dbe887d6209f71ff2991c94e7), [`ecd62c3`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/ecd62c39d384976346a93a83696b0d162d25bdb7), [`020c1ac`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/020c1ac4ccee90c9a8af287c5b8c4d4f7edb2466), [`f2b7c0c`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/f2b7c0c88e5624fe336a300bd69f7a91864b1a6f), [`8a04c74`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/8a04c74def46f0222ae906a0a7c400f6642591ff), [`f2ffc00`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/f2ffc00b3344eb60ddf23989232c5cd118d5c1a7), [`b09985e`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/b09985e66a6370d608a5e27765ce5cc13aea4cca), [`0f95d0d`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/0f95d0d9b363b7eff01ecac8ddb9a2e0fab3e6ca) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*