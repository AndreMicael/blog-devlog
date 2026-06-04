---
layout: post
title: "Adicionando Filtros de Arquivos e Rota API para Anotações com Anexos no Frontend do Sistema de Contratos"
date: 2026-06-03 20:05:20 +0000
categories: [Frontend]
tags: ["React", "TypeScript", "feature", "API", "Sistema Contratos Frontend"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Duas principais alterações foram realizadas no repositório "Sistema-Contratos-Frontend" para melhorar a funcionalidade de anotações e gerenciamento de arquivos. A primeira alteração, realizada no commit `2565b77`, focou em adicionar filtros de arquivos, melhorando a experiência do usuário ao gerenciar anexos relacionados a contratos. Foram alterados os arquivos `Anexos.tsx` e `Anotacoes.tsx`, localizados em `src/app/(protected)/contratos/_abas/`, para incorporar essa funcionalidade.

A segunda alteração, no commit `2930845`, visou criar uma rota API para a criação de anotações com anexos, permitindo que os usuários não apenas visualizem mas também criem anotações com anexos associados diretamente no frontend do sistema. Os arquivos `Anotacoes.tsx` e `route.ts`, em `src/app/api/contratos/[idContrato]/anotacoes/create/`, foram modificados para acomodar essa nova funcionalidade.

Exemplos de código alterado incluem a adição de uma função `handleNewUpload` em `Anexos.tsx` para lidar com uploads de novos arquivos:
```typescript
const handleNewUpload = async (file: File | null, nomeAnexo: string) => {
  if (!contrato?.id_contrato || !user?.id || !file) return;

  // Lógica para realizar o upload do arquivo
}
```
Além disso, foi adicionado um estado `somenteComArquivos` em `Anotacoes.tsx` para filtrar anotações com anexos:
```typescript
const [somenteComArquivos, setSomenteComArquivos] = useState(false);
```
E, para a criação da rota API para anotações com anexos, foi adicionado o uso de `useRouter` e `useParams` de `next/navigation` para obter parâmetros de rota e realizar requisições:
```typescript
import { useRouter, useParams } from "next/navigation";

const router = useRouter();
const params = useParams();
```
## Por que foi feito

Essas mudanças foram motivadas pela necessidade de melhorar a funcionalidade de gerenciamento de anexos e anotações no sistema de contratos. A capacidade de filtrar arquivos relacionados a contratos específicos e criar anotações com anexos diretamente no frontend simplifica o processo de gestão de contratos para os usuários, tornando-o mais eficiente e intuitivo.

Além disso, a criação de uma rota API específica para a criação de anotações com anexos permite uma integração mais robusta com outros sistemas e aplicações, melhorando a interoperabilidade e a capacidade de compartilhar informações de forma segura.

## Impacto

O resultado prático dessas mudanças é a melhoria significativa na experiência do usuário ao gerenciar contratos e anexos. Os usuários agora podem facilmente encontrar e gerenciar anexos relacionados a contratos específicos e criar anotações com anexos, melhorando a produtividade e reduzindo o tempo necessário para realizar tarefas relacionadas à gestão de contratos.

Além disso, as alterações realizadas permitem uma melhor organização e estruturação das anotações e arquivos, facilitando a localização e o acesso a informações importantes. Isso, por sua vez, pode levar a uma redução nos erros e na perda de dados, melhorando a confiabilidade e a segurança do sistema como um todo.

No entanto, é importante considerar que a implementação de novas funcionalidades e rotas API também pode introduzir novos riscos e pontos de atenção. Por exemplo, a necessidade de garantir a autenticação e autorização adequadas para a criação de anotações com anexos e a proteção contra uploads mal-intencionados de arquivos. Portanto, é crucial monitorar e testar essas novas funcionalidades para garantir que elas atendam aos padrões de segurança e desempenho esperados.

---
*Post gerado automaticamente a partir dos commits [`2565b77`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/2565b7793d8d9ab173a699dc346268f238eaa58a), [`2930845`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/2930845f6e02fc532e701c5e354bc2f27b199097) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*