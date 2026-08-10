---
layout: post
title: "Refatoração do sistema de contratos: melhorias na fiscalização e no cadastro de usuários"
date: 2026-08-10 12:47:08 +0000
categories: [Frontend]
tags: ["TypeScript", "React", "feature", "Sistema Contratos Frontend", "bugfix", "API"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Recentemente, foram realizadas duas atualizações importantes no repositório "Sistema-Contratos-Frontend". As mudanças visam melhorar a funcionalidade do sistema de contratos, especialmente na área de fiscalização e no cadastro de usuários.

A primeira atualização, feita no commit `406b10a`, adicionou a funcionalidade de justificativa para fiscalização. Isso foi alcançado alterando os arquivos `src/app/(protected)/contratos/_abas/Fiscalizacoes.tsx` e `src/app/api/contratos/[idContrato]/fiscalizacao/[idFiscalizacao]/route.ts`. No arquivo `Fiscalizacoes.tsx`, foram adicionadas importações para `Modal` e `useUser`, além de uma função para verificar permissões (`hasPermission`). Além disso, foram feitas pequenas ajustes nos estilos para melhorar a apresentação da interface do usuário.

A segunda atualização, feita no commit `1ddee7e`, ajustou bugs relacionados a modais de usuários. Essa mudança afetou os arquivos `src/app/(protected)/cadastro/usuario/NovoUsuarioForm.tsx`, `src/app/(protected)/contratos/gerenciar/[id]/eventos/novo/page.tsx` e `src/app/(protected)/usuarios/editar/[id]/EditarCadastroTab.tsx`. No arquivo `NovoUsuarioForm.tsx`, foram adicionadas funcionalidades para permitir a criação de novas unidades e departamentos, além de atualizações nos estados e handlers para lidar com essas novas funcionalidades.

Um exemplo do código alterado pode ser visto abaixo:
```código
// Antes
const handleSalvarUnidade = () => {
  alert("Cadastro de Unidade (em construção)");
  setModalUnidade(false);
};

// Depois
const handleSalvarUnidade = async () => {
  if (!nomeNovaUnidade.trim()) {
    showToast("Informe o nome da unidade.", "error");
    return;
  }
  setSalvandoNovaUnidade(true);
  try {
    const res = await fetch(getApiUrl("/api/unidades/new"), {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ Nome: nomeNovaUnidade.trim(), isEnabled: true }),
    });
    const data = await res.json().catch(() => ({}));
    if (!res.ok) {
      showToast(
        data.message || data.error || "Erro ao cadastrar unidade.",
        "error",
      );
      return;
    }
    showToast("Unidade criada com sucesso!", "success");
    setModalUnidade(false);
    setNomeNovaUnidade("");
    // ...
```

## Por que foi feito

As mudanças foram realizadas para resolver problemas específicos e melhorar a experiência do usuário do sistema de contratos. A adição de justificativa para fiscalização visa fornecer mais contexto e clareza durante o processo de fiscalização, tornando-o mais eficaz. Já os ajustes nos modais de usuários destinam-se a corrigir bugs e melhorar a funcionalidade de cadastro de novas unidades e departamentos, facilitando a gestão de usuários dentro do sistema.

## Impacto

Com essas mudanças, os usuários do sistema de contratos frontend podem agora fornecer justificativas para as fiscalizações, o que ajuda a entender melhor o processo de fiscalização e pode levar a tomadas de decisão mais informadas. Além disso, a capacidade de criar novas unidades e departamentos de forma mais eficiente e sem erros melhora significativamente a experiência do usuário, especialmente para aqueles que gerenciam grandes conjuntos de dados de usuários.

No entanto, é importante ter cuidado ao implementar essas mudanças, pois elas podem afetar a compatibilidade com versões anteriores do sistema ou com outros módulos que dependam das funcionalidades atualizadas. Portanto, é recomendável realizar testes rigorosos antes de implantar essas alterações em um ambiente de produção.

---
*Post gerado automaticamente a partir dos commits [`406b10a`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/406b10a3f9432d1e0f1ee273b374150f4368d923), [`1ddee7e`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/1ddee7ed2bf3fd3ed8043cc6bfadd4b6753a1f4d) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*