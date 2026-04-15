---
layout: post
title: "Refatoração da Página de Edição de Instituições e Usuários no Sistema-Contratos-Frontend"
date: 2026-04-15 13:07:44 +0000
categories: [Frontend]
tags: ["TypeScript", "Sistema Contratos Frontend", "UI", "feature", "testes", "React"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Foram realizadas várias mudanças no repositório Sistema-Contratos-Frontend, visando melhorar a experiência do usuário e a manutenção do código. Abaixo, são detalhadas as principais alterações:

- **Commit 1 (5ff4670)**: Foi feito um ajuste de estilização na página de cadastro de instituições, alterando o arquivo `EditarCadastroTab.tsx`. As mudanças incluíram alterações nos métodos de formatação de campos como CPF, CNPJ, telefone e data de nascimento.
  
  ```diff
  @@ -306,21 +306,23 @@ const EditarCadastroTab = ({ instituicaoId }: { instituicaoId: string }) => {
        ? (data?.fornecedor_pessoa_fisica?.cpf ?? "")
        : (data?.fornecedor_pessoa_juridica?.cnpj ?? "");
    setDocumento(
  -    tipo === "PF"
  -      ? (masks.maskCpfCnpj(cpfCnpj) ?? "")
  -      : cpfCnpj.toString(),
  +    tipo === "PF" ? (masks.maskCpfCnpj(cpfCnpj) ?? "") : cpfCnpj.toString(),
    );
  ```

- **Commit 2 (50f3993)**: Foi criado um componente de tabs da página e padronizado para usuários e instituições, afetando os arquivos `PageTabs.tsx`, `page.tsx` (em duas pastas diferentes). Isso permite uma melhor organização e reutilização de código.
  
  ```typescript
  export default function PageTabs<T extends string>({
    abas,
    abaAtiva,
    setAbaAtiva,
  }: PageTabsProps<T>) {
    return (
      <div className="w-full border-b border-zinc-300 my-6">
        <ul className="flex flex-row">
          {abas.map((aba) => (
            <li key={aba.id}>
              <button
                // ...
              >
                <div className="flex items-center gap-2 px-8">
                  <span className="[&>svg]:w-4 [&>svg]:h-4">{aba.icon}</span>
                  <span>{aba.label}</span>
                </div>
              </button>
            </li>
          ))}
        </ul>
      </div>
    );
  }
  ```

- **Commit 3 (e845b92)**: Foi alterada a estilização das tabs da instituição e substituída a página de permissões por representantes. Isso resultou na remoção do arquivo `EditarPermissoesTab.tsx`.
  
  ```diff
  diff --git a/src/app/(protected)/instituicoes/editar/[id]/EditarPermissoesTab.tsx b/src/app/(protected)/instituicoes/editar/[id]/EditarPermissoesTab.tsx
  deleted file mode 100644
  index d769c9d..0000000
  --- a/src/app/(protected)/instituicoes/editar/[id]/EditarPermissoesTab.tsx
  +++ /dev/null
  ```

- **Commit 4 (38eeab9)**: Foram adicionados highlights na página de adicionar instituições, alterando o arquivo `NovaInstituicaoForm.tsx`. Isso incluiu melhorias na aparência dos campos e na experiência do usuário.
  
  ```diff
  const fieldWrapCls = 
    "flex min-w-0 items-center gap-2 rounded-lg border border-zinc-300 bg-white px-3 py-2.5 transition focus-within:border-blue-primary focus-within:ring-1 focus-within:ring-blue-primary/30";
  +const fieldInvalidWrapCls = `${fieldWrapCls} field-invalid`;
  ```

- **Commit 5 (16ca289)**: Foram adicionados normalizadores e highlights em vários componentes, afetando múltiplos arquivos. Isso incluiu melhorias na formatação e validação de dados.
  
  ```typescript
  function normalizeUpperText(value: string) {
    return value
      .normalize("NFD")
      .replace(/[\u0300-\u036f]/g, "")
      .replace(/\s+/g, " ")
      .trim()
      .toUpperCase();
  }
  ```

## Por que foi feito

As mudanças foram feitas para melhorar a experiência do usuário, padronizar componentes, remover código desnecessário e

---
*Post gerado automaticamente a partir dos commits [`5ff4670`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/5ff46708ca285f7b89ba4599428082dba6a099de), [`50f3993`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/50f39936b0f3dbfc3e0258bbea45a7eb47cd4006), [`e845b92`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/e845b924c07bffe24ab6156a23dc88fcecc6c825), [`38eeab9`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/38eeab90c256f9fef90401edeaa9ad4a6b824d5b), [`16ca289`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/16ca2890f1b4583961f346f78ad9a262ed24123d) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*