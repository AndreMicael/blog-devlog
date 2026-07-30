---
layout: post
title: "Implementação de Recursos de Gerenciamento de Grupos e Permissões no Sistema-Contratos-Frontend"
date: 2026-07-29 18:43:39 +0000
categories: [Frontend]
tags: ["API", "feature", "TypeScript", "banco de dados", "React", "UI"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Neste artigo, vamos detalhar as mudanças implementadas nos commits `6f1ac04`, `65e7410`, `1619174`, `2abb735` e `2c920f5` do repositório Sistema-Contratos-Frontend. Essas mudanças visam melhorar a experiência do usuário e otimizar o gerenciamento de grupos e permissões dentro do sistema.

- **Commit 6f1ac04**: Adicionou um checkbox de acesso ao contrato no componente `NovoGrupoForm.tsx`. Isso permite que os administradores definam se um grupo tem acesso a um contrato específico. Além disso, foram realizadas alterações nos estados e nas validações do formulário para garantir que as permissões sejam corretamente atribuídas.
  
  ```tsx
  const [acessoForm, setAcessoForm] = useState<AcessContractFormProps>({
    acessAll: false,
    onlyGestor: false,
    onlyFiscal: false,
    onlyDepartamento: false,
    onlyUnidade: false,
  });
  ```

- **Commit 65e7410**: Ajustou o design da tabela de permissões no componente `PermissoesTable.tsx`. Isso inclui a adição de ícones para melhorar a visualização e a compreensão das permissões atribuídas. Além disso, foram feitas melhorias na lógica de seleção e deseleção de permissões para garantir uma experiência mais fluida para o usuário.

  ```tsx
  import { Lock, UsersRound } from "lucide-react";
  ```

- **Commit 1619174**: Implementou a funcionalidade de adicionar um campo para selecionar o grupo na criação de um usuário na tela `NovoUsuarioForm.tsx`. Isso facilita o gerenciamento de acesso e permissões para novos usuários, permitindo que eles sejam adicionados a grupos específicos durante o processo de criação.

  ```tsx
  const [selectedGrupoId, setSelectedGrupoId] = useState<string | number>("");
  ```

- **Commit 2abb735**: Criou uma rota API para a criação de grupos de usuários em `route.ts`. Essa rota permite que as solicitações de criação de grupos sejam processadas de forma centralizada e segura, melhorando a integridade dos dados e a segurança do sistema.

  ```typescript
  export async function POST(req: NextRequest) {
    // Implementação da lógica para criar um grupo de usuários
  }
  ```

- **Commit 2c920f5**: Realizou ajustes em vários componentes e arquivos, incluindo a atualização do layout do shell do componente e alterações na modelagem de dados com Prisma. Essas mudanças visam melhorar a consistência e a manutenção do código, além de preparar o sistema para novas funcionalidades.

## Por que foi feito

As mudanças implementadas nos commits mencionados foram realizadas para atender a várias necessidades e melhorias identificadas no sistema:

1. **Melhoria da Experiência do Usuário**: A adição de recursos como o checkbox de acesso ao contrato e o campo de seleção de grupo na criação de usuários visa simplificar e tornar mais intuitivo o processo de gerenciamento de permissões e acesso.

2. **Otimização do Gerenciamento de Grupos e Permissões**: A criação de uma rota API para a criação de grupos e as melhorias nos componentes de permissões e grupos têm como objetivo centralizar e otimizar o gerenciamento de acesso e permissões, tornando o sistema mais eficiente e escalável.

3. **Preparação para Novas Funcionalidades**: As alterações em componentes e modelos de dados prepararam o sistema para a implementação de novas funcionalidades e recursos, garantindo que o códigobase permaneça organizado, manutenível e escalável.

## Impacto

As mudanças implementadas têm um impacto significativo no sistema, proporcionando melhorias na experiência do usuário, na segurança e na eficiência do gerenciamento de grupos e permissões. Os principais impactos incluem:

- **Experiência do Usuário**: Melhorias na interface e na usabilidade, tornando mais fácil para os administradores gerenciar permissões e grupos.
- **Segurança**: A centralização e ot

---
*Post gerado automaticamente a partir dos commits [`6f1ac04`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/6f1ac04aad54ad2574fcb9c82595f0630cd61d77), [`65e7410`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/65e741080443b9f19e53b57bb9cf2ae0a70ed3a6), [`1619174`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/1619174d8c7af63ea3f92167b66d9e249c4d0ff2), [`2abb735`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/2abb73573ec2bb2ea2b710e571e82be91b82f4f6), [`2c920f5`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/2c920f57c13d9df0df28f195bdbaf384bf2267ae) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*