# Arquitetura do Backend

Para o projeto **ImuneTrack-backend** foi desenvolvido utilizando o padrão de arquitetura **MVC (Model–View–Controller)**, adaptado para aplicações **FastAPI**.  
Esse padrão organiza o código em três camadas principais: **Modelos**, **Controladores** e **Visões**, promovendo **separação de responsabilidades**, **facilidade de manutenção** e **testabilidade**.

```
ImuneTrack-backend/
├── .git/
├── .pytest_cache/
├── .ruff_cache/
├── venv/
├── app/
│   ├── __init__.py
│   ├── __pycache__/
│   ├── config.py                   # Configurações centralizadas
│   ├── database.py                 # Configuração do banco
│   ├── main.py                     # Ponto de entrada
│   ├── dependencies.py             # Dependências FastAPI
│   ├── exceptions.py               # Exceções customizadas
│   ├── middleware.py               # Middleware customizado
│   ├── schemas/                    # Schemas organizados por domínio
│   │   ├── __init__.py
│   │   ├── auth.py
│   │   ├── usuario.py
│   │   ├── vacina.py
│   │   └── historico.py
│   ├── services/                   # Serviços globais
│   │   ├── __init__.py
│   │   ├── email_service.py
│   │   ├── auth_service.py
│   │   └── notification_service.py
│   ├── utils/                      # Utilitários
│   │   ├── __init__.py
│   │   ├── security.py
│   │   └── validators.py
│   ├── core/                       # Configurações core
│   │   ├── __init__.py
│   │   └── config.py
│   ├── Auth/
│   │   ├── __init__.py
│   │   ├── model.py
│   │   ├── controller.py
│   │   └── routes.py
│   ├── Usuario/
│   │   ├── __init__.py
│   │   ├── model.py
│   │   ├── controller.py
│   │   └── routes.py
│   ├── Vacina/
│   │   ├── __init__.py
│   │   ├── model.py
│   │   ├── controller.py
│   │   └── routes.py
│   └── HistoricoVacina/
│       ├── __init__.py
│       ├── model.py
│       ├── controller.py
│       └── routes.py
├── tests/                          # Testes globais
│   ├── __init__.py
│   ├── conftest.py
│   ├── test_auth/
│   ├── test_usuario/
│   ├── test_vacina/
│   └── test_historico/
├── .env.example                    # Exemplo de variáveis de ambiente
├── .gitignore
├── alembic.ini                     # Configuração Alembic
├── migrations/                     # Migrações do banco
├── Dockerfile
├── docker-compose.yml
├── docker-compose.prod.yml         # Configuração produção
├── requirements.txt
├── requirements-dev.txt            # Dependências desenvolvimento
├── pyproject.toml                  # Configuração Python moderna
├── README.md
└── LICENSE
```
```
ImuneTrack-frontend/
├── 📄 .env.local              # Variáveis de ambiente (local)
├── 📄 .gitignore             # Arquivos ignorados pelo Git
├── 📄 components.json        # Configuração de componentes UI
├── 📄 eslint.config.mjs      # Configuração ESLint
├── 📄 next.config.ts         # Configuração Next.js
├── 📄 package.json           # Dependências e scripts
├── 📄 postcss.config.mjs     # Configuração PostCSS
├── 📄 tsconfig.json          # Configuração TypeScript
├── 📄 README.md              # Documentação do projeto
├── 
├── 📂 app/                   # App Router - Páginas e layouts
│   ├── 📂 cadastro/         # Página de cadastro de usuário
│   ├── 📂 dashboard/        # Dashboard principal
│   ├── 📂 login/            # Página de login
│   ├── 📄 favicon.ico       # Ícone da aplicação
│   ├── 📄 globals.css       # Estilos CSS globais
│   ├── 📄 layout.tsx        # Layout raiz da aplicação
│   └── 📄 page.tsx          # Página inicial (landing page)
├── 
├── 📂 components/            # Componentes React
│   └── 📂 ui/               # Componentes de UI reutilizáveis (shadcn/ui)
│       ├── 📄 avatar.tsx
│       ├── 📄 badge.tsx
│       ├── 📄 button.tsx
│       ├── 📄 calendar.tsx
│       ├── 📄 card.tsx
│       ├── 📄 dialog.tsx
│       ├── 📄 dropdown-menu.tsx
│       ├── 📄 form.tsx
│       ├── 📄 input.tsx
│       ├── 📄 label.tsx
│       ├── 📄 progress.tsx
│       ├── 📄 select.tsx
│       ├── 📄 separator.tsx
│       ├── 📄 settings-modal.tsx
│       ├── 📄 sidebar.tsx
│       ├── 📄 table.tsx
│       ├── 📄 tabs.tsx
│       ├── 📄 toast.tsx
│       ├── 📄 toaster.tsx
│       ├── 📄 user-list.tsx
│       ├── 📄 vaccine-calendar.tsx
│       ├── 📄 vaccine-list.tsx
│       └── 📄 vaccine-schedule-form.tsx
├── 
├── 📂 context/               # Contextos React (estado global)
│   └── 📄 AuthContext.tsx   # Contexto de autenticação
├── 
├── 📂 hooks/                 # Hooks personalizados
├── 
├── 📂 lib/                   # Utilitários e configurações
├── 
├── 📂 services/              # Camada de serviço (API)
│   └── 📄 api.ts            # Configuração Axios e serviços da API
├── 
├── 📂 public/                # Arquivos estáticos públicos
├── 
├── 📂 tests/                 # Testes automatizados
│   ├── 📄 package.json      # Configuração independente de testes
│   └── 📂 selenium/          # Testes E2E com Selenium
├── 
├── 📂 reports/               # Relatórios de testes
├── 
├── 📂 .next/                 # Build do Next.js (gerado automaticamente)
├── 📂 node_modules/          # Dependências npm
├── 📂 .git/                  # Controle de versão Git
├── 📂 .github/               # Configurações GitHub (workflows, etc.)
├── 📂 .vscode/               # Configurações VS Code
├── 📂 venv/                  # Ambiente virtual Python (se necessário)
└── 📂 .pytest_cache/         # Cache de testes Python
```
```
ImuneTrack-auth/
│
├── .env
├── .env.example
├── .git/ (pasta vazia)
├── Dockerfile
├── LICENSE
├── README.md
├── docker-compose.yml
├── requirements.txt
│
└── app/
    ├── __pycache__/
    ├── auth/
    │   └── __pycache__/
    ├── config.py
    ├── database.py
    ├── main.py
    ├── models.py
    └── schemas.py
```