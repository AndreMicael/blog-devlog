---
layout: post
title: "Implementação do hook useApiError em vários componentes do Frontend do Sistema de Contratos"
date: 2026-05-14 13:46:31 +0000
categories: [Frontend]
tags: ["feature", "testes", "React", "Sistema Contratos Frontend", "UI", "TypeScript"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Foram realizadas mudanças significativas no repositório "Sistema-Contratos-Frontend" para implementar o hook `useApiError` em vários componentes, visando melhorar a gestão de erros e exceções em diferentes partes do sistema. Esse hook permite tratar erros de API de forma uniforme, exibindo mensagens de erro relevantes para os usuários e reduzindo a complexidade do código em cada componente.

Os arquivos alterados incluem `DepartamentosComponents.tsx`, `UnidadesComponents.tsx`, `NovaInstituicaoForm.tsx`, `AtoContratoComponents.tsx`, entre outros, onde o hook `useApiError` foi importado e utilizado para lidar com possíveis erros durante as requisições à API. Além disso, foram feitas melhorias nas páginas de edição e inclusão de aditivos de contratos, com a adição de máscaras para valores financeiros e melhorias na interface do usuário.

Por exemplo, no arquivo `DepartamentosComponents.tsx`, o hook `useApiError` foi utilizado da seguinte forma:
```typescript
import { useApiError } from "@/hooks/useApiError";

const DepartamentosComponents: React.FC = () => {
  const handleApiError = useApiError();
  // ...
  if (!res.ok) {
    handleApiError(data, {
      skipToast: true,
      onValidationError: (fields) => {
        if (fields) {
          const next: Record<string, string> = {};
          for (const [key, value] of Object.entries(fields)) {
            if (typeof value === "string")
              next[key.toLowerCase()] = value;
          }
          setFieldErrors(next);
        }
      },
    });
    setError(
      data.message || data.error || "Erro ao atualizar departamento.",
    );
    return;
  }
  // ...
}
```
Isso permite que erros sejam tratados de forma centralizada e consistente, melhorando a experiência do usuário e reduzindo o esforço necessário para implementar lógica de erro em cada componente.

## Por que foi feito

A motivação por trás dessas mudanças foi melhorar a robustez e a usabilidade do sistema, tornando-o mais resiliente a erros e exceções. Ao implementar o hook `useApiError` de forma ampla, os desenvolvedores visam:

- Reduzir a duplicação de código: Com o hook, não é necessário escrever lógica de tratamento de erros repetida em vários componentes.
- Melhorar a consistência: O tratamento de erros é padronizado, garantindo que mensagens de erro sejam exibidas de forma uniforme em todo o sistema.
- Facilitar a manutenção: Com a lógica de tratamento de erros centralizada, atualizações e melhorias podem ser feitas em um único local, simplificando a manutenção do código.

Além disso, as melhorias nas páginas de edição e inclusão de aditivos de contratos visam melhorar a experiência do usuário, tornando mais fácil e intuitivo o processo de gerenciamento de aditivos.

## Impacto

O impacto prático dessas mudanças é significativo para os usuários do sistema, pois agora eles podem esperar por mensagens de erro mais claras e consistentes quando ocorrerem problemas. Isso ajuda a reduzir a frustração e o tempo gasto tentando entender e resolver problemas, melhorando assim a produtividade.

Para os desenvolvedores, as mudanças também têm um impacto positivo, pois reduzem a complexidade do código e facilitam a adição de novos recursos e a manutenção do sistema, graças à abordagem mais centralizada e padronizada para o tratamento de erros.

No entanto, é importante continuar monitorando o sistema para identificar e resolver qualquer problema que possa surgir com a implementação do hook `useApiError`, garantindo que o sistema continue a atender às necessidades dos usuários de forma eficaz e confiável.

---
*Post gerado automaticamente a partir dos commits [`7343dca`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/7343dca855ab6ccc996d1f9218850ab73a988354), [`90b909e`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/90b909e1bc2ea14ac8a1462262e3de4388eb7db2), [`c03fc83`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/c03fc83e7e7d0adf81dfbcfaeda3966dbb0667cc), [`64eb4bc`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/64eb4bc42c30b773a632b64b5625fb12f55b0a58), [`5b7290b`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/5b7290b8546f3f9aec40638ba5804e6eb27e4bcf), [`5293746`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/5293746620eaf6359d472127db101b617326795a), [`a08e6b4`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/a08e6b425afef63747a41cc0651dc9be15910ad6), [`2dd68da`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/2dd68dabb0037bccea0f02124d081828d3251003), [`5767680`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/57676803687fa82355c1ce4d4f0da1074e39c988), [`b413e28`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/b413e2810e4a18e48bd46866a609ab41edaa7eaf) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*