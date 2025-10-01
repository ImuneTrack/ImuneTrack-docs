# Arquitetura do Backend

Para o projeto **ImuneTrack-backend** foi desenvolvido utilizando o padrão de arquitetura **MVC (Model–View–Controller)**, adaptado para aplicações **FastAPI**.  
Esse padrão organiza o código em três camadas principais: **Modelos**, **Controladores** e **Visões**, promovendo **separação de responsabilidades**, **facilidade de manutenção** e **testabilidade**.

```
ImuneTrack-backend/
├── app/
│ ├── database.py # Configuração de banco de dados
│ ├── main.py # Inicialização da aplicação FastAPI
│ ├── routes/ # Centralização das rotas
│ │ └── init.py
│ ├── Usuario/
│ │ ├── controller.py # Controlador de Usuário
│ │ ├── model.py # Modelo de Usuário
│ │ └── view.py # Rotas/visão de Usuário
│ └── Vacina/
│ ├── controller.py # Controlador de Vacina
│ ├── model.py # Modelo de Vacina
│ └── view.py # Rotas/visão de Vacina
└── tests/ # Testes automatizados
```