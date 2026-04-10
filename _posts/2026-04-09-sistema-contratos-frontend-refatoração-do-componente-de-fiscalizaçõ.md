---
layout: post
title: "Refatoração do componente de fiscalizações e adição de recursos de usuário no Sistema-Contratos-Frontend"
date: 2026-04-09 19:03:45 +0000
categories: [Frontend]
tags: ["TypeScript", "bugfix", "UI", "autenticação", "React", "feature"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

As mudanças feitas no repositório `Sistema-Contratos-Frontend` incluem várias atualizações importantes para melhorar a funcionalidade e a usabilidade do sistema. Aqui estão os principais pontos:

- **Refatoração do componente de fiscalizações**: O componente de fiscalizações foi atualizado para melhorar a experiência do usuário. Isso inclui a implementação de uma nova rota para a criação de fiscalizações novas, permitindo que os usuários criem facilmente novas fiscalizações a partir de um contrato existente.
  
  ```tsx
  // Exemplo de como a rota de fiscalização foi atualizada
  import { useEffect } from "react";
  import { useParams } from "next/navigation";
  import { useContrato } from "@/hooks/useContrato";
  import { useUsuarios } from "@/src/hooks/useUsuarios";
  
  const FiscalizarNovoPage = () => {
    const params = useParams();
    const id = typeof params.id === "string" ? params.id : "";
    const { data: contrato } = useContrato(id);
    const { data: usuarios } = useUsuarios();
    
    // ...
  };
  ```

- **Adição de recursos de usuário**: Um novo hook foi criado para buscar usuários da API, permitindo que a aplicação obtenha e utilize informações de usuários de forma mais eficiente.
  
  ```tsx
  // Exemplo de como o hook de usuários foi implementado
  import { useQuery } from "@tanstack/react-query";
  import { getApiUrl } from "@/lib/api";
  import type { UsuarioFromApi } from "@/types/UsuarioFromApi";
  
  export function useUsuarios(refreshKey: number = 0) {
    return useQuery({
      queryKey: ["usuarios", refreshKey],
      queryFn: fetchUsuarios,
      staleTime: 1000 * 60 * 5,
    });
  }
  
  async function fetchUsuarios(): Promise<UsuarioFromApi[]> {
    // Implementação para buscar usuários da API
  }
  ```

- **Melhorias na sidebar e no componente de login**: A sidebar foi atualizada para limpar as abas abertas quando o usuário faz logout, melhorando a experiência do usuário e a segurança da aplicação.
  
  ```tsx
  // Exemplo de como a limpeza de abas(abertas) foi implementada no logout
  const handleLogout = () => {
    // ...
    clearTabs();
  };
  ```

- **Implementação de FAQ na documentação**: Um FAQ (Perguntas Frequentes) foi adicionado à documentação do projeto, fornecendo orientações detalhadas sobre como adicionar novas páginas ao projeto, entre outras funcionalidades.
  
  ```markdown
  ## FAQ
  ### Como adicionar uma nova página ao projeto?
  #### 1. Criar a pasta e o arquivo da página
  Dentro de `src/app/(protected)/`, crie uma pasta com o nome da rota (kebab-case) e adicione o arquivo `page.tsx`:
  ```
  
- **Adição de validadores nos contratos**: Validadores foram adicionados nos campos do contrato para garantir que os dados sejam inseridos corretamente e para melhorar a experiência do usuário.
  
  ```tsx
  // Exemplo de validador em um campo de contrato
  const Req = () => <span className="ml-0.5 text-rose-400">*</span>;
  // ...
  <input
    // ...
    required
    aria-required
  />
  ```

## Por que foi feito

As mudanças foram feitas para resolver alguns problemas específicos e melhorar a funcionalidade geral do sistema:
- **Melhorar a usabilidade**: Com a refatoração do componente de fiscalizações e a adição de recursos de usuário, a aplicação se torna mais intuitiva e fácil de usar.
- **Resolver problemas de funcionalidade**: A implementação de validadores nos contratos ajuda a garantir que os dados sejam inseridos corretamente, evitando erros downstream.
- **Preparar para novas funcionalidades**: A adição de hooks para busca de usuários e a melhoria na sidebar são passos importantes para expandir as capacidades da aplicação no futuro.

## Impacto

O impacto dessas mudanças é significativo:
- **Melhoria na experiência do usuário**: Com as atualizações, os usuários têm uma experiência mais suave e intuitiva ao interagir com a aplicação

---
*Post gerado automaticamente a partir dos commits [`0a96ba9`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/0a96ba92fbbef5dfa334ef772d47c78fd541859a), [`2166bde`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/2166bde9a858da84aba48c862fb111bf25a07728), [`6b6639f`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/6b6639fb12de6450f98cebf7418716eb44ae1e30), [`0e027c4`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/0e027c4c2efb0d41d7cc9d4031e7d4db2268bcc6), [`084a583`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/084a5834b04e3ab28b0bbf17cf8c6571f89ec3bb), [`540dd41`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/540dd415ab0d870bf6a5de90f336e9241961d67d), [`c73fcaf`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/c73fcafac303c2998b7f5e27b32964e873aa6c1b) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*