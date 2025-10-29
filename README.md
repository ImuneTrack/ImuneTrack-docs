# ImuneTrack-docs
# 📚 ImuneTrack Docs

Repositório de documentação do sistema **ImuneTrack**, contendo especificações técnicas, arquitetura, histórias de usuário e guias para o ecossistema completo da plataforma de gerenciamento de vacinação digital.

---

## 📋 Conteúdo

Este repositório centraliza toda a documentação técnica e funcional do projeto ImuneTrack:

- 📐 **Arquitetura do Sistema** - Padrões, estrutura e decisões arquiteturais
- 📖 **Histórias de Usuário** - Requisitos funcionais e casos de uso
- 🔧 **Guias de Desenvolvimento** - Convenções e boas práticas
- 🗂️ **Estrutura de Código** - Organização dos módulos e componentes
- 🧪 **Estratégias de Teste** - Cobertura e abordagens de qualidade

---

## 🏗️ Arquitetura

O ImuneTrack utiliza o padrão **MVC (Model-View-Controller)** adaptado para FastAPI, promovendo:

- ✅ Separação clara de responsabilidades
- ✅ Facilidade de manutenção e evolução
- ✅ Alta testabilidade e reusabilidade de código

### Estrutura Geral

```
ImuneTrack-backend/
├── app/
│   ├── database.py              # Configuração do banco de dados
│   ├── main.py                  # Ponto de entrada da aplicação
│   ├── schemas.py               # Schemas Pydantic
│   │
│   ├── Usuario/
│   │   ├── controller.py        # Lógica de negócio
│   │   ├── model.py             # Modelo de dados
│   │   ├── routes.py            # Rotas/endpoints
│   │   └── tests/               # Testes do módulo
│   │
│   ├── Vacina/
│   │   ├── controller.py
│   │   ├── model.py
│   │   ├── routes.py
│   │   └── tests/
│   │
│   └── HistoricoVacina/
│       ├── controller.py
│       ├── model.py
│       ├── routes.py
│       └── tests/
│
└── tests/                       # Testes de integração
```

Para mais detalhes, consulte: [**arquitetura.md**](arquitetura.md)

---

## 👥 Histórias de Usuário

O sistema atende a três perfis principais:

### 🧑‍🤝‍🧑 Cidadão
- Cadastro e autenticação segura
- Visualização de carteira digital de vacinação
- Notificações de doses pendentes
- Emissão de comprovantes digitais
- Busca de postos de saúde próximos
- Consulta de vacinas obrigatórias para viagens

### 👨‍⚕️ Profissional de Saúde
- Registro de vacinas aplicadas
- Atualização de histórico vacinal
- Acesso a dados de pacientes

### 🔐 Administrador
- Gerenciamento de usuários
- Relatórios de vacinação por região
- Controle de acesso e segurança

Para lista completa, consulte: [**historias_de_usuario.md**](historias_de_usuario.md)

---

## 🔗 Repositórios Relacionados

O ecossistema ImuneTrack é composto por:

| Repositório | Descrição | Tecnologias |
|------------|-----------|-------------|
| **imunetrack-backend** | Microserviço principal com lógica de negócio | FastAPI, PostgreSQL, SQLAlchemy |
| **imunetrack-auth** | Serviço de autenticação e autorização | FastAPI, JWT, OAuth2 |
| **imunetrack-frontend** | Interface web do usuário | React, TypeScript |
| **imunetrack-mobile** | Aplicativo móvel | React Native |
| **imunetrack-docs** | Documentação central (este repositório) | Markdown |

---

## 🚀 Stack Tecnológica

### Backend
- **Python 3.11+**
- **FastAPI** - Framework web moderno e de alta performance
- **SQLAlchemy** - ORM para Python
- **PostgreSQL** - Banco de dados relacional
- **Alembic** - Gerenciamento de migrações
- **Pydantic v2** - Validação de dados
- **Pytest** - Framework de testes

### DevOps
- **Docker & Docker Compose** - Containerização
- **GitLab CI/CD** - Integração e deploy contínuos
- **Nginx** - Servidor web e proxy reverso

### Qualidade
- **Pytest** - Testes unitários e de integração
- **Coverage.py** - Cobertura de testes
- **Pylint** - Análise estática de código
- **Black** - Formatação de código

---

## Como Usar Esta Documentação

1. **Novos Desenvolvedores**: Comece por [arquitetura.md](arquitetura.md) para entender a estrutura
2. **Product Owners**: Consulte [historias_de_usuario.md](historias_de_usuario.md) para requisitos funcionais
3. **QA/Testes**: Veja exemplos de testes nos arquivos de código-fonte documentados

---

## Contribuindo

Contribuições são bem-vindas! Por favor:

1. Crie uma branch a partir de `main`
2. Siga os padrões de código estabelecidos
3. Adicione/atualize testes conforme necessário
4. Atualize a documentação relevante
5. Abra um Merge Request com descrição clara

---

## 📄 Licença

Este projeto está sob licença MIT. Veja o arquivo `LICENSE` para mais detalhes.

---
