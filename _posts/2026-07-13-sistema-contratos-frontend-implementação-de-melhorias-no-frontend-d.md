---
layout: post
title: "Implementação de Melhorias no Frontend do Sistema de Contratos"
date: 2026-07-13 21:54:27 +0000
categories: [Frontend]
tags: ["feature", "API", "React", "UI", "TypeScript", "Sistema Contratos Frontend"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Foram realizadas várias mudanças no repositório "Sistema-Contratos-Frontend" com o objetivo de melhorar a experiência do usuário e corrigir bugs. Abaixo, destacamos as principais alterações:

- **Adicionado botão de visualizar anexo no menu**: No arquivo `src/app/(protected)/contratos/_components/MenuAditivo.tsx`, foi adicionado um botão para visualizar anexos, permitindo que os usuários acessem facilmente os arquivos anexados.
- **Ajustes na conexão com a API de criar evento**: No arquivo `src/app/(protected)/contratos/gerenciar/[id]/eventos/novo/page.tsx`, foram feitos ajustes na lógica de conexão com a API para criar eventos, garantindo uma comunicação mais eficaz entre o frontend e o backend.
- **Correções e melhorias na página de eventos**: Vários commits foram dedicados a ajustar e melhorar a página de eventos (`src/app/(protected)/contratos/gerenciar/[id]/eventos/novo/page.tsx`), incluindo a organização dos cards de resumo, cálculos de valor atualizado e percentual alterado, e melhorias na exibição de informações financeiras.
- **Ajustes nos cálculos financeiros**: Foram realizados ajustes nos cálculos de valor atualizado e percentual alterado, garantindo que as informações financeiras sejam precisas e consistentes.

## Por que foi feito

Essas mudanças foram implementadas para atender a necessidades específicas do sistema de contratos, melhorando a usabilidade e a experiência do usuário. Alguns dos principais motivos incluem:

- **Melhorar a UI/UX**: O objetivo era tornar a interface do usuário mais intuitiva e fácil de usar, especialmente na página de eventos e na visualização de anexos.
- **Corrigir bugs e inconsistências**: Vários bugs e inconsistências foram identificados e corrigidos, especialmente nos cálculos financeiros, para garantir que o sistema forneça informações precisas.
- **Preparar para novas funcionalidades**: Algumas das mudanças foram feitas para preparar o terreno para futuras funcionalidades, como melhorias nos relatórios financeiros e na gestão de eventos.

## Impacto

O impacto dessas mudanças é significativo, tanto para os usuários finais quanto para a equipe de desarrollo. Os principais impactos incluem:

- **Melhoria na experiência do usuário**: Com uma interface mais intuitiva e funcionalidades melhoradas, os usuários podem navegar e usar o sistema de forma mais eficiente.
- **Redução de erros**: A correção de bugs e a melhoria nos cálculos financeiros reduzem a probabilidade de erros, tornando o sistema mais confiável.
- **Base sólida para futuras melhorias**: As mudanças feitas criam uma base sólida para futuras melhorias e expansões do sistema, permitindo que a equipe de desenvolvimento trabalhe de forma mais eficaz em novas funcionalidades.

No geral, essas mudanças demonstram um compromisso contínuo com a melhoria e a expansão do sistema de contratos, visando atender às necessidades dos usuários e proporcionar uma solução de gestão de contratos robusta e eficaz.

---
*Post gerado automaticamente a partir dos commits [`a8d39da`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/a8d39da9303aac4ccea91879ef4704e532c2dea0), [`643e6e8`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/643e6e89b39cfdf828197005514658ca12d23a11), [`31ab115`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/31ab115c5d9843f2b74f18c62441c50a4a750425), [`08840cb`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/08840cbe91e5ceee51558260253f5b5294350a80), [`84f4138`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/84f4138eb848e79b1e8d77c4b97d5c287e69fb0b), [`97a5431`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/97a5431b00521ce31004130eabafa20552a40d3d), [`2cf55e1`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/2cf55e10cce0c4dd56a23da3df82cc8d4d31adbf), [`691cb9f`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/691cb9f53d0faa89e1d4fb952bf1064c0a835317), [`4492625`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/449262556d515ef0f5d8bc9cfe964dd1a5985e97) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*