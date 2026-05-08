---
layout: post
title: "Melhorias e Correções no Sistema de Contratos Frontend"
date: 2026-05-08 12:48:36 +0000
categories: [Frontend]
tags: ["testes", "feature", "Sistema Contratos Frontend", "JavaScript", "React", "UI"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

=====================================================

## O que foi feito
---------------

Nesta última atualização do Sistema de Contratos Frontend, várias melhorias e correções foram implementadas para aprimorar a experiência do usuário e resolver problemas técnicos. Aqui estão os principais pontos alterados:

- **Commit `5f94d95`**: Foram realizadas ajustes importantes no arquivo `src/app/(protected)/contratos/_abas/Cadastro.tsx`, visando melhorar a funcionalidade de cadastro de contratos. Isso incluiu a adição de lógica para lidar com a seleção de "Sem Garantia" como tipo de garantia, limpando campos relacionados a garantias quando essa opção é escolhida.
  
  ```typescript
const semGarantiaId = opcoes?.tipo_garantia?.find(
  (g: any) => g?.nome === "Sem Garantia",
)?.id;
const isSemGarantia =
  semGarantiaId != null && String(form.id_tipo_garantia) === String(semGarantiaId);
```

- **Commit `e4bf81a`**: No arquivo `src/app/(protected)/instituicoes/editar/[id]/EditarRepresentantesTab.tsx`, foram feitas correções para ajustar erros de representantes, melhorando a validação de campos e a exibição de mensagens de erro.

- **Commit `f270603`**: Foram feitas atualizações no `package-lock.json`, removendo dependências desnecessárias e otimizando a configuração do projeto.

- **Commit `a05bd90`**: Semelhante ao commit `5f94d95`, este commit também ajustou a funcionalidade de cadastro de contratos, incluindo a lógica para "Sem Garantia" e melhorias na forma como os dados são processados e validados.

- **Commit `b2efdf7`**: Foram realizadas melhorias na validação de CPF na tela de representantes, garantindo que os CPFs sejam validados corretamente antes de prosseguir com o cadastro.

  ```typescript
if (!ValidarCPF(cpfDigits)) nextErrors.cpf = "CPF inválido. Verifique os dígitos.";
```

- **Commit `1fd359f`**: Foram feitas atualizações na funcionalidade de paginação da tabela de fiscalizações, melhorando a navegação e a visualização de dados.

- **Commit `9e0dc4c`**: Foram realizadas melhorias na gestão de contratos, incluindo a atualização de componentes e a forma como os dados são exibidos e processados.

- **Commit `d02322f`**: Foram feitas correções no componente de gerenciamento de contratos, melhorando a lógica de uso de `useMemo` e outras otimizações.

- **Commit `b289134`**: Foram adicionados novos componentes e funcionalidades, incluindo um componente de calendário, para melhorar a experiência do usuário.

- **Commit `62c507c`**: Foram realizadas melhorias na funcionalidade de inclusão de fiscalizações, adicionando uma mensagem de alerta quando o usuário tenta incluir uma nova fiscalização, indicando que a funcionalidade ainda não foi implementada.

## Por que foi feito
-----------------

Essas mudanças foram feitas para resolver problemas existentes no sistema, como bugs de validação, melhorar a experiência do usuário com a adição de novos componentes e funcionalidades, e otimizar o código e as dependências do projeto. Além disso, elas preparam o terreno para futuras melhorias e expansões do sistema.

## Impacto
---------

O impacto dessas mudanças é significativo, pois elas melhoram a estabilidade e a usabilidade do sistema. Os usuários agora têm uma experiência mais suave e menos propensa a erros, com mensagens de erro mais claras e uma forma mais intuitiva de interagir com o sistema. Além disso, as otimizações realizadas contribuem para um melhor desempenho geral do aplicativo.

No entanto, é importante notar que, como parte do desenvolvimento contínuo, é crucial continuar monitorando o sistema e coletando feedback dos usuários para identificar áreas que ainda precisam de melhoria. Com essas atualizações, o Sistema de Contratos Frontend está mais robusto e pronto para atender às necessidades de seus usuários de forma mais eficaz.

---
*Post gerado automaticamente a partir dos commits [`5f94d95`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/5f94d951544a5c83b72988be2b25c48abfe4c19f), [`e4bf81a`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/e4bf81a74fb6c48340ff2dc8d6934fd4baf941d5), [`f270603`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/f27060381d73e72df3e41da9da53c6d510793858), [`a05bd90`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/a05bd90de594826797300d4affd8e4a1e3a14b58), [`b2efdf7`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/b2efdf764e1c0fcac2b1ab9c4a2b564a1d749305), [`1fd359f`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/1fd359fd31adf3a2c11910c8499d16f7977ffc54), [`9e0dc4c`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/9e0dc4c3eb4be42f9f5e2eb654bfe13b1aa6dca8), [`d02322f`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/d02322ffa2404e27903a66ae55267896ca236c2b), [`b289134`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/b2891343a3ccb4de1dd51572778e7062c269cdd3), [`62c507c`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/62c507c972bb2bfd4d7d39c12d75973eeb861055) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*