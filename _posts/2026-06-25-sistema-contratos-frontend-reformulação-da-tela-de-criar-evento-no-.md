---
layout: post
title: "Reformulação da Tela de Criar Evento no Sistema de Contratos"
date: 2026-06-25 21:31:00 +0000
categories: [Frontend]
tags: ["testes", "JavaScript", "React", "TypeScript", "Sistema Contratos Frontend", "banco de dados"]
repo: "https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend"
---

## O que foi feito

Foram realizadas várias mudanças no repositório "Sistema-Contratos-Frontend" com o objetivo de melhorar a experiência do usuário na tela de criar evento. Os principais ajustes foram:

- **Remoção do campo "ano"**: No commit `3397b5c`, foi removido o campo "ano" da tela de criar evento, simplificando o processo de criação de eventos e ajustando os campos de acordo com as necessidades atuais do sistema. Isso refletiu-se na atualização do arquivo `page.tsx`, onde a lógica para o manuseio do campo "ano" foi ajustada.

```typescript
// Antes
type formEventoProps = {
  tipo_evento: string;
  ano: string;
  numero_evento: string;
  numero_processo: string;
  observacao: string | null;
};

// Depois
type formEventoProps = {
  tipo_evento: string;
  numero_processo: string;
  observacao: string | null;
};
```

- **Remoção do campo "numero_evento"**: Posteriormente, no commit `65181f1`, o campo "numero_evento" também foi removido, pois sua lógica será tratada no backend, simplificando o frontend e mantendo a coerência com as mudanças anteriores.

```typescript
// Antes
const [formEvento, setFormEvento] = useState<formEventoProps>({
  tipo_evento: "",
  numero_evento: "",
  numero_processo: "",
  observacao: "",
});

// Depois
const [formEvento, setFormEvento] = useState<formEventoProps>({
  tipo_evento: "",
  numero_processo: "",
  observacao: "",
});
```

- **Ajustes na lógica de renomeação de arquivos**: Com as mudanças nos campos, também foi ajustada a lógica de renomeação de arquivos para refletir as novas informações, garantindo que os nomes dos arquivos criados estejam de acordo com as informações relevantes do evento.

```typescript
// Antes
const numeroAditivo = formEvento.numero_evento?.trim()?.replace(/[^\w\d-]/g, "") || "aditivo";

// Depois
const numeroAditivo = formEvento.numero_processo?.trim()?.replace(/[^\w\d-]/g, "") || formEvento.tipo_evento;
```

- **Mudanças no select de "tipo_evento"**: No commit `9931948`, foi adicionada uma funcionalidade para desabilitar o select de "tipo_evento" quando alguma ação do evento está aberta ou salva, melhorando a usabilidade e evitando seleções indevidas.

```typescript
disabled={acaoEmAndamento}
```

## Por que foi feito

Essas mudanças foram realizadas para melhorar a experiência do usuário, simplificar o processo de criação de eventos e garantir que as informações relevantes sejam coletadas de forma eficiente. A remoção de campos não essenciais e a otimização da lógica de renomeação de arquivos contribuem para uma interface mais limpa e intuitiva.

Além disso, as mudanças refletem a necessidade de alinhar o frontend com as mudanças no backend, especialmente no que diz respeito à tratamento do "numero_evento", que agora é determinado no servidor. Isso ajuda a manter a consistência do sistema e reduzir erros potenciais devido a inconsistências entre frontend e backend.

## Impacto

O impacto prático dessas mudanças é que os usuários agora terão uma experiência mais fluída e simplificada ao criar eventos. A remoção de campos desnecessários reduz a sobrecarga de informação, tornando o processo mais ágil. Além disso, a nova lógica de renomeação de arquivos garante que os arquivos sejam nomeados de forma coerente e útil, facilitando a gestão e identificação de documentos relacionados a eventos.

No entanto, é importante testar essas mudanças em diferentes cenários para garantir que todas as funcionalidades estejam trabalhando como esperado, especialmente aquelas que dependem da interação com o backend. A monitoração do desempenho e da experiência do usuário após essas alterações também é crucial para identificar e ajustar qualquer problema que possa surgir.

---
*Post gerado automaticamente a partir dos commits [`3397b5c`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/3397b5c7f4fb452e5d3fa945ec50160c56bec7d1), [`af9a626`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/af9a626e32e45b93afd6488a9bdfe5b6f547f438), [`65181f1`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/65181f18b9f517686bbc7a26b3421c3824dfd672), [`83b4c8f`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/83b4c8f965d20c56c8231247890a5463a7acb07d), [`9931948`](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend/commit/9931948f6ae69572d207d31014f7fd7cc5960efe) em [Sistema-Contratos-Frontend](https://github.com/Desenvolve-MT/Sistema-Contratos-Frontend)*