# BicoLocal — Documentação do Projeto e Planejamento

**Disciplina:** Desenvolvimento para Plataformas Móveis — Prof. Sandro Alencar Fernandes
**Curso:** Bacharelado em Sistemas de Informação — UNIDAVI
**Programa de extensão:** II. Desenvolvimento Regional
**Equipe:** Mateus V. de Oliveira (programação e documentação), [Integrante 2] ([papel]), [Integrante 3] ([papel])
**Repositório:** https://github.com/mateusoliveira-hash/bicolocal

---

## 1. Problema

Em Rio do Sul e região, quem precisa de um serviço rápido (cortar grama, ajudar numa mudança, fazer uma faxina, pequenos reparos) e quem procura uma renda extra com bicos se encontram, hoje, principalmente em **grupos de mensagens** (WhatsApp, Facebook).

Esse modelo é ineficiente:

- as ofertas se perdem no meio de conversas e mensagens antigas;
- não há como filtrar por tipo de serviço, bairro ou data;
- quem procura bico precisa estar em vários grupos ao mesmo tempo;
- quem contrata não alcança pessoas fora dos grupos de que participa.

## 2. Proposta de solução

Um aplicativo móvel que **centraliza as ofertas de bicos da região** e conecta diretamente **contratantes** e **trabalhadores**.

O contratante publica o bico; o trabalhador encontra, filtra e entra em contato. O contato acontece pelo **WhatsApp**, ferramenta que o público já usa, o que dispensa a construção de um chat próprio e mantém o app simples.

## 3. Público-alvo

- **Contratantes:** moradores e pequenos comércios que precisam de serviços pontuais.
- **Trabalhadores:** pessoas em busca de renda extra ou trabalho informal na região.

## 4. Escopo do MVP (Produto Mínimo Viável)

| Dentro do escopo | Fora do escopo (versões futuras) |
|---|---|
| Publicar um bico (título, descrição, categoria, bairro, valor, data, WhatsApp) | Chat dentro do app |
| Listar bicos e filtrar por categoria | Pagamentos |
| Ver detalhes de um bico | Avaliações e reputação |
| Botão "Tenho interesse" que abre o WhatsApp do contratante | Mapa e geolocalização |
| Login simples | Notificações push |

## 5. Requisitos

### Funcionais
- **RF01** — O sistema deve listar os bicos disponíveis.
- **RF02** — O sistema deve permitir filtrar os bicos por categoria.
- **RF03** — O sistema deve exibir os detalhes de um bico.
- **RF04** — O sistema deve abrir uma conversa no WhatsApp com o contratante a partir do bico.
- **RF05** — O usuário deve poder publicar um bico.
- **RF06** — O usuário deve poder ver os bicos que publicou.
- **RF07** — O usuário deve poder se autenticar no app.

### Não funcionais
- **RNF01** — Aplicativo híbrido desenvolvido em Flutter (Android e iOS).
- **RNF02** — Dados armazenados em nuvem (Firebase) a partir da Etapa 2.
- **RNF03** — Interface em português, simples e legível para usuários com pouca familiaridade com apps.

## 6. Telas

| # | Tela | Requisitos | Situação |
|---|---|---|---|
| 1 | Lista de bicos (com filtro por categoria) | RF01, RF02 | Implementada (dados fictícios) |
| 2 | Detalhes do bico | RF03, RF04 | Planejada |
| 3 | Publicar bico | RF05 | Planejada |
| 4 | Meus bicos | RF06 | Planejada |

## 7. Arquitetura e tecnologias

- **Flutter / Dart** — interface e lógica do app.
- **Firebase** (Etapa 2) — Authentication (login) e Cloud Firestore (armazenamento dos bicos).
- **url_launcher** (pacote Flutter) — abertura do WhatsApp.
- **Git + GitHub** — versionamento e colaboração.

Estrutura do código:

```
bicolocal/lib/
├── main.dart                  # ponto de entrada e tema do app
├── models/bico.dart           # classe Bico + dados fictícios
└── screens/                   # uma tela por arquivo
    └── lista_bicos_page.dart
```

Estratégia: na Etapa 1 o app usa **dados fictícios em memória**, para concentrar o esforço na interface e na navegação. Na Etapa 2 os dados passam para o Firebase sem mudança nas telas.

## 8. Cronograma

| Período | Atividade | Situação |
|---|---|---|
| 23/10 | Escolha do tema e definição do MVP | Concluído |
| 24–27/10 | Configuração do ambiente (Flutter, JDK, Git/GitHub) e criação do projeto | Concluído |
| 02/11 | Modelo de dados e tela de lista com filtro | Concluído |
| 03/11 | **Entrega 1** | — |
| 04–10/11 | Pesquisa com contratantes e trabalhadores da região | Planejado |
| 04–14/11 | Tela de detalhes e integração com WhatsApp | Planejado |
| 15–21/11 | Tela de publicar bico, Meus bicos, Firebase e login | Planejado |
| 22–28/11 | Testes, ajustes, apresentação e vídeo | Planejado |
| 01/12 | **Entrega final** | — |

## 9. Divisão de tarefas

| Integrante | Responsabilidades |
|---|---|
| Mateus V. de Oliveira | Programação, repositório, documentação técnica |
| [Integrante 2] | Pesquisa com a comunidade (entrevistas) |
| [Integrante 3] | Protótipo visual das telas, apresentação e vídeo |
