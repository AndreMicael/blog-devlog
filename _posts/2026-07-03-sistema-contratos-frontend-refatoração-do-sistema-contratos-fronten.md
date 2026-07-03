---
layout: post
title: "Refatoração do Sistema-Contratos-Frontend com Melhorias de UX e Integração com Infisical"
date: 2026-07-03 12:40:12 +0000
categories: [Frontend]
tags: ["React", "Sistema Contratos Frontend", "UI", "API", "JavaScript", "testes"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Nesta atualização do repositório Sistema-Contratos-Frontend, várias melhorias foram implementadas para aumentar a usabilidade e integrar o sistema com o Infisical. Os principais arquivos alterados foram:

- `.infisical.json`: Foi criado para armazenar as configurações de conexão com o Infisical.
- `package-lock.json` e `package.json`: Foram atualizados para refletir as mudanças nas dependências do projeto, incluindo a integração com o Infisical.
- `.github/workflows/node.js.yml`: O arquivo de workflow do GitHub foi ajustado para incluir ações relacionadas à integração com o Infisical, como a recuperação de segredos e a validação do arquivo `.env`.
- `src/app/(protected)/contratos/_components/MenuAditivo.tsx` e `src/app/(protected)/contratos/_components/ModalAditivo.tsx`: Esses componentes receberam atualizações para melhorar a experiência do usuário, com mudanças nos textos e funcionalidades dos menus e modais.
- `scripts/pull-infisical-env.mjs`: Foi criado para facilitar a conexão e a recuperação de variáveis de ambiente do Infisical.

 Algumas das mudanças significativas incluem a adição de `toasts` nos retornos das APIs para notificar o usuário sobre a conclusão de ações, e a criação de uma conexão com o Infisical para utilizar seus recursos de gerenciamento de segredos e variáveis de ambiente.

Exemplo de mudança no `MenuAditivo.tsx`:
```tsx
export function MenuAditivo({
  // ...
}) {
  // ...
  return (
    <div>
      {/* Antiga implementação */}
      {/* <div id={1} tipo="Adicionar data publicação" subtitulo="Adicione abaixo a data que o Termo Aditivo foi publicado" icon={<CalendarCheck />} ativo={true} /> */}
      {/* Nova implementação */}
      <div id={1} tipo="Adicionar data publicação" subtitulo="Adicione abaixo a data que o evento foi publicado." icon={<CalendarCheck />} ativo={true} />
      {/* ... */}
    </div>
  );
}
```

## Por que foi feito

As mudanças foram feitas para melhorar a experiência do usuário final, simplificar o gerenciamento de segredos e variáveis de ambiente do sistema, e preparar o sistema para futuras expansões e melhorias. A integração com o Infisical oferece uma forma mais segura e escalável de gerenciar informações sensíveis do sistema, reduzindo o risco de exposição de segredos.

A atualização do `MenuAditivo` e `ModalAditivo` visa tornar as interações do usuário mais claras e intuitivas, melhorando a usabilidade geral do sistema. Além disso, as melhorias no workflow do GitHub garantem que o sistema possa ser facilmente atualizado e mantido, garantindo a entrega de novas funcionalidades e correções de maneira eficiente.

## Impacto

O impacto dessas mudanças é multifacetado:

- **Melhoria da UX**: Os usuários do sistema irão experimentar uma navegação mais intuitiva e uma melhor comunicação sobre o status de suas ações, graças às mudanças nos componentes e à adição de `toasts`.
- **Segurança**: A integração com o Infisical aumenta a segurança do sistema, garantindo que segredos e variáveis de ambiente sejam gerenciados de forma centralizada e segura.
- **Manutenção e Escalabilidade**: As atualizações no workflow do GitHub e nos scripts de conexão com o Infisical facilitam a manutenção e a escalabilidade do sistema, permitindo que novas funcionalidades sejam adicionadas de forma mais rápida e segura.

No entanto, é importante considerar os riscos potenciais associados a mudanças em sistemas complexos, como a possibilidade de introduzir novos bugs ou afetar a compatibilidade com componentes existentes. Portanto, é crucial realizar testes exhaustivos após qualquer atualização para garantir que o sistema continue a funcionar como esperado.

---
*Post gerado automaticamente a partir dos commits [`0ec68b7`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/0ec68b79a35612a76a1efcbe026fbd381f8a27c9), [`f623fce`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/f623fcea34b555fd51e7f560f97219d11929fc16), [`5f8a282`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/5f8a28289c0771734c6376e70d6a562cb5c7623e), [`26168f2`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/26168f2e7ac9045d87aebc5719acd21663bac39f), [`aa1d609`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/aa1d6094a3b48466751c22be5603ad9f2eed70c1) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*