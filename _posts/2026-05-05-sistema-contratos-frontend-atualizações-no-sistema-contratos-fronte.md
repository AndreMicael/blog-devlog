---
layout: post
title: "Atualizações no Sistema-Contratos-Frontend: melhorias na experiência do usuário e manutenção de código"
date: 2026-05-05 12:44:56 +0000
categories: [Frontend]
tags: ["API", "testes", "UI", "TypeScript", "React", "feature"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Nos últimos dias, o repositório do Sistema-Contratos-Frontend recebeu várias atualizações importantes, visando melhorar a experiência do usuário e garantir a manutenção do código. Abaixo, listamos as principais mudanças efetuadas:

- ** Commit eec618b**: Alteração do badge do fiscal, atualizando as cores de fundo e texto para uma paleta mais consistente com o restante da aplicação. Por exemplo, no arquivo `Gestao.tsx`, foi ajustado o estilo do componente `FuncaoBadge` para refletir essas mudanças:
  ```jsx
  function FuncaoBadge({ funcao }: { funcao: EnvolvidoFuncao }) {
    // ...
    : isFiscal
      ? {
          background: "rgba(209, 250, 229, 1}",
          color: "#059669",
        }
      : {
          // ...
        }
  }
  ```

- **Commit e852f02**: Melhoria na visualização das datas em Gestão, trocando o ícone e melhorando a legibilidade das informações de data. Isso foi alcançado alterando o estilo e ícone used no componente `Partes` dentro do arquivo `Gestao.tsx`:
  ```jsx
  const Partes = ({ contrato }: { contrato?: ContratoDetalhe }) => {
    // ...
    <div className="flex items-center gap-2 font-medium">
      <CalendarRange className="h-3.5 w-3.5 text-sky-800" />
      {toPtBrDate(row.data_inicio)}
    </div>
    // ...
  }
  ```

- **Commit 9b99ed9**: Remoção do botão de interno, simplificando a interface do usuário e eliminando funcionalidades desnecessárias. Isso envolveu mudanças em vários arquivos, incluindo `Gestao.tsx`, `ui.tsx`, e `GerenciarComponents.tsx`, bem como atualizações nos ícones SVG.

- **Commit 16c058c**: Retirada da obrigatoriedade da inscrição estadual no formulário de cadastro de instituições, tornando mais flexível o processo de registro. O arquivo `NovaInstituicaoForm.tsx` foi atualizado para remover as verificações de obrigatoriedade relacionadas à inscrição estadual.

- **Commit ec586b0 e 3deed15**: Adição de novos ícones para melhorar a visualização e a experiência do usuário na sidebar. Isso inclui a adição de novos SVGs e a atualização do componente `Sidebar.tsx` para utilizar esses ícones.

- **Commit 37024e7**: Ajustes na data de início do gestor, garantindo que a informação seja exibida corretamente e melhorando a lógica por trás da gestão de contratos. Isso envolveu mudanças nos arquivos `Gestao.tsx` e `NovoContratoComponents.tsx`.

- **Commit 6ac3912**: Implementação da rota de inativação, permitindo que os usuários inativem registros de maneira mais controlada. Isso incluiu atualizações nos arquivos `EditarRepresentantesTab.tsx` e `route.ts`.

- **Commit 898de35**: Ajustes no layout da sidebar, melhorando a disposição dos elementos e a experiência geral do usuário. Isso envolveu atualizações nos arquivos `LayoutShell.tsx`, `Navbar.tsx`, e `Sidebar.tsx`.

## Por que foi feito

As mudanças foram feitas para atender a várias necessidades, incluindo:

- **Melhoria da Usabilidade**: Ajustes visuais e de funcionalidade foram feitos para tornar a aplicação mais intuitiva e fácil de usar, como as mudanças nos badges e datas.
- **Manutenção e Correção de Bugs**: Commits como o `eec618b` e `e852f02` mostram o esforço contínuo para garantir que a aplicação esteja funcionando corretamente e sem erros visuais ou de comportamento.
- **Flexibilização e Ajustes de Requisitos**: A remoção da obrigatoriedade da inscrição estadual reflete a adaptação às necessidades dos usuários e à evolução dos requisitos do sistema.
- **Melhoria da Experiência do Usuário**: A adição de

---
*Post gerado automaticamente a partir dos commits [`eec618b`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/eec618b4750c32977d4c687d2dbd696491acc215), [`e852f02`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/e852f022f1c0bf518daee306b917c6d0dd7a553c), [`9b99ed9`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/9b99ed977ab6c26a759a40f42ac373d76705d2be), [`16c058c`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/16c058c3541439ab10ea0059e581eca123efe1a9), [`ec586b0`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/ec586b06218bed28dbdf9989d5390f48fd80436e), [`3deed15`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/3deed1532f0c3930065cb6d05cc1bcf70aa5e1cd), [`37024e7`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/37024e7d554bf283c0ebf9a96766b1abcc8df3a8), [`6ac3912`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/6ac3912b0dfef90eba70e68f60202c1f96e7c542), [`898de35`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/898de355989d937bcb653db9b85b7b57870e2b2c) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*