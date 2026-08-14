---
layout: post
title: "Atualização de Segurança e Ajustes no Sistema de Contratos"
date: 2026-08-13 19:58:53 +0000
categories: [Frontend]
tags: ["API", "autenticação", "Sistema Contratos Frontend", "banco de dados", "TypeScript", "UI"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Recentemente, foram realizadas várias atualizações importantes no repositório "Sistema-Contratos-Frontend" com o objetivo de melhorar a segurança, a experiência do usuário e a manutenção do sistema. Essas mudanças impactam diretamente a forma como os usuários interagem com o sistema, especialmente em relação às configurações de segurança e acesso a contratos.

Os principais arquivos alteradosincluem `prisma/schema.prisma`, `src/app/(protected)/configuracoes/_components/NovoGrupoForm.tsx`, `src/app/(protected)/usuarios/editar/[id]/EditarCadastroTab.tsx`, `src/app/alterar-senha-obrigatorio/AlterarSenhaObrigatorioForm.tsx`, `lib/auth.ts`, e vários outros arquivos relacionados à autenticação e autorização.

Uma das principais mudanças foi a atualização do schema do Prisma, que incluiu a remoção de modelos de dados obsoletos e a simplificação das relações entre as entidades. Por exemplo, o modelo `Permissao` e relacionados foram removidos ou atualizados para melhorar a consistência e a performance do sistema.

```diff
- model Permissao {
-  PermissaoId   Int             @id @default(autoincrement())
-  Chave         String          @unique @db.VarChar(120)
-  Descricao     String?         @db.VarChar(255)
-  RolePermissao RolePermissao[]
- }
```

Além disso, foram feitas alterações nos componentes de frontend para melhorar a usabilidade e a segurança. Por exemplo, no arquivo `NovoGrupoForm.tsx`, foram adicionados campos para especificar o tipo de acesso a contratos e atualizados os hooks para lidar com as novas regras de negócio.

```typescript
const [tipoAcesso, setTipoAcesso] = useState<TipoAcesso | undefined>();
// ...
const handlePermissoesChange = (novasPermissoes: Set<string>) => {
  // Lógica para atualizar as permissões com base nas novas seleções
}
```

Outra mudança importante foi a atualização das políticas de senha. Agora, as senhas devem ter pelo menos 12 caracteres, o que é uma melhoria significativa em termos de segurança. Isso foi implementado em vários pontos do sistema, incluindo a alteração de senha e a recuperação de senha.

```typescript
const temTamanho = novaSenha.length >= 12;
if (!temTamanho) {
  return {
    ok: false,
    error: "A nova senha deve ter pelo menos 12 caracteres, uma letra minúscula, uma maiúscula, um número e um caractere especial.",
  };
}
```

## Por que foi feito

As mudanças foram feitas por várias razões, mas principalmente para melhorar a segurança do sistema e a experiência do usuário. A atualização do schema do Prisma e a remoção de códigos obsoletos ajudam a manter o sistema mais limpo e fácil de manter. As alterações nos componentes de frontend melhoram a usabilidade e a acessibilidade do sistema.

Além disso, a atualização das políticas de senha é uma medida importante para proteger as contas dos usuários. Senhas mais fortes reduzem o risco de ataques de força bruta e outros tipos de ataques cibernéticos.

## Impacto

O impacto dessas mudanças é significativo. Os usuários podem esperar uma experiência mais segura e intuitiva ao usar o sistema. As melhorias na usabilidade e acessibilidade tornam o sistema mais inclusivo e fácil de usar para todos os usuários.

No entanto, é importante notar que as mudanças podem requerer ajustes por parte dos usuários, especialmente aqueles que estavam acostumados com as políticas de senha anteriores. Além disso, a equipe de desenvolvimento deve continuar a monitorar o sistema e fazer ajustes adicionais conforme necessário para garantir que o sistema continue a atender às necessidades dos usuários de forma segura e eficaz.

Em resumo, as atualizações no repositório "Sistema-Contratos-Frontend" representam um importante passo para melhorar a segurança, a usabilidade e a manutenção do sistema. Com essas mudanças, o sistema está mais preparado para atender às necessidades dos usuários de forma segura e eficaz.

---
*Post gerado automaticamente a partir dos commits [`ab4014e`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/ab4014e864d31413f4666ad77c742de067365a63), [`af96bde`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/af96bdeacc30ed8f3d927290fdfa01f7c6975af3), [`3880614`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/3880614ef15f50e58094832d4e8fdd21e545def4), [`b75b65b`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/b75b65b87c4e2acf80438898d7c66d9c6f4c6bfb), [`5d63e34`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/5d63e34e2cc9eab36d2fe60d38dab15323265ef8), [`d2f7085`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/d2f708544cf43ebd6d35432aa560fc4bf2e9930e), [`97f9e29`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/97f9e29513f88324ebc3e97c7f19cc7fdc7ecf3e), [`ab3aa1d`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/ab3aa1d1fa2fd6371081c0d32bb650225fa051df) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*