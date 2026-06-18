---
layout: post
title: "Refatoração da Tela de Criar Evento no Sistema-Contratos-Frontend"
date: 2026-06-17 21:31:01 +0000
categories: [Frontend]
tags: ["React", "API", "Sistema Contratos Frontend", "TypeScript"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

A refatoração da tela de criar evento no sistema de contratos frontend foi realizada com o objetivo de melhorar a experiência do usuário e simplificar o processo de criação de eventos. As principais mudanças foram feitas nos arquivos `src/app/(protected)/contratos/gerenciar/[id]/eventos/novo/page.tsx` e `src/app/api/evento-acoes/get/route.ts`.

No arquivo `page.tsx`, foram adicionadas 624 linhas de código e removidas 238 linhas. As principais alterações incluem a criação de um novo componente `SectionHeader` que é utilizado para exibir informações de cabeçalho nas seções da página. Além disso, foram adicionados ícones e estilos para melhorar a aparência da página.

O código abaixo mostra a criação do componente `SectionHeader`:
```jsx
type SectionHeaderProps = {
  icon: LucideIcon;
  title: string;
  description: string;
  side?: ReactNode;
};

const SectionHeader = ({
  icon: Icon,
  title,
  description,
  side,
}: SectionHeaderProps) => {
  return (
    <>
      <div className=" w-full h-fit py-2 flex flex-row justify-between mt-2">
        <div className="mb-5 flex justify-between align-middle items-center w-full gap-4 px-5">
          <div className="flex flex-row h-fit gap-4">
            <div className="bg-[#193a68] p-4 rounded-full">
              <Icon size={22} className="text-[#fff]" />
            </div>

            <div>
              <h2 className="text-[18px] font-semibold text-[#193a68]">
                {title}
              </h2>
              <p className="text-zinc-400">{description}</p>
            </div>
          </div>

          {side}
        </div>
      </div>

      <div className="w-full h-fit flex justify-center my-2">
        <div className="bg-zinc-400/20 w-[98%] h-0.25 flex self-center " />
      </div>
    </>
  );
};
```
Além disso, foram feitas alterações nos estilos e na estrutura da página para melhorar a experiência do usuário.

## Por que foi feito

A refatoração da tela de criar evento foi feita para melhorar a experiência do usuário e simplificar o processo de criação de eventos. A criação de um novo componente `SectionHeader` permitiu que as informações de cabeçalho fossem exibidas de forma mais clara e consistente em toda a página. Além disso, as alterações nos estilos e na estrutura da página ajudaram a melhorar a aparência e a usabilidade da página.

A motivação por trás dessas mudanças foi a de melhorar a experiência do usuário e preparar a página para futuras atualizações e melhorias. Com a criação de um novo componente `SectionHeader`, é mais fácil adicionar ou remover seções da página sem afetar a estrutura geral da página.

## Impacto

O impacto prático dessas mudanças é que a página de criar evento agora é mais fácil de usar e entender. A criação de um novo componente `SectionHeader` ajudou a melhorar a aparência e a consistência da página. Além disso, as alterações nos estilos e na estrutura da página ajudaram a melhorar a experiência do usuário.

Os usuários finais devem perceber que a página é mais fácil de usar e entender, e que as informações de cabeçalho são exibidas de forma mais clara e consistente. Além disso, a página agora está preparada para futuras atualizações e melhorias, o que pode ajudar a melhorar a experiência do usuário ainda mais no futuro.

Não há riscos ou pontos de atenção específicos relacionados a essas mudanças, pois elas foram feitas para melhorar a experiência do usuário e não afetam a funcionalidade da página. No entanto, é sempre importante testar as mudanças antes de liberá-las para produção para garantir que elas não causem problemas inesperados.

---
*Post gerado automaticamente a partir dos commits [`22c4d81`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/22c4d81e529b4a6ba0cbca53382cff52e498c80e) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*