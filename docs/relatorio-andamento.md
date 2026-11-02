# BicoLocal — Relatório de Andamento (Entrega 1)

**Equipe:** Mateus V. de Oliveira, Gabriel M. Machado da Silva, Marcelo Schwartz — **Data:** 03/11/2026\
**Repositório:** https://github.com/mateusoliveira-hash/bicolocal

**Tema escolhido.** Entre os temas propostos, a equipe escolheu o **BicoLocal** (programa II. Desenvolvimento Regional): um aplicativo que substitui a busca por trabalhadores em grupos de mensagens por uma plataforma centralizada, conectando contratantes de serviços rápidos a pessoas que procuram bicos em Rio do Sul e região.

**Definição do escopo.** Como o tema é amplo (envolve dois perfis de usuário e poderia incluir chat, pagamentos e avaliações), a primeira decisão foi delimitar um **MVP**: publicar bicos, listar e filtrar por categoria, ver detalhes e entrar em contato com o contratante pelo **WhatsApp**. Usar o WhatsApp para o contato evita construir um chat próprio, que seria a parte mais complexa, e aproveita uma ferramenta que o público já domina. Chat interno, pagamentos, avaliações e mapa ficaram registrados como evoluções futuras.

**Configuração do ambiente.** A preparação do ambiente de desenvolvimento exigiu resolver alguns problemas, registrados aqui como aprendizado:
- **Cabo USB sem transmissão de dados:** o celular não era reconhecido pelo computador (não aparecia no `lsusb`); resolvido com a troca do cabo.
- **Acento no caminho da pasta:** o Gradle lia o caminho "Móveis" com codificação errada ("MÃ³veis") e não encontrava o SDK do Flutter; resolvido renomeando a pasta sem acentos.
- **Java sem compilador:** o sistema tinha apenas o JRE (Java 25), sem o `javac` necessário para o build Android; resolvido instalando o JDK 17 e configurando-o no Flutter.
- **Falha ao abrir o Chrome pelo Flutter:** incompatibilidade do navegador com as configurações de interface do sistema; contornada com `flutter run -d web-server`.

Ao final, o app passou a rodar tanto no celular Android quanto no navegador.

**Desenvolvimento.** O projeto foi criado em Flutter e versionado no GitHub. Foram implementados:
- o modelo de dados `Bico` (título, descrição, categoria, bairro, valor, data, contratante, WhatsApp);
- a **tela de lista de bicos**, com filtro por categoria, usando dados fictícios;
- um teste automatizado que verifica o funcionamento do filtro.

**Pendências e próximos passos.** A pesquisa com a comunidade (entrevistas com contratantes e trabalhadores da região) ainda não foi realizada e está planejada para a próxima semana, para validar as funcionalidades e as categorias de serviço. No desenvolvimento, os próximos passos são a tela de detalhes com o botão de WhatsApp, a tela de publicação de bicos e a integração com o Firebase (armazenamento e login), conforme o cronograma do documento de planejamento.
