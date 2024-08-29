# Hello World com FastAPI 💻

Configurações do ambiente de desenvolvimento com Python, aplicando Hello World com FastAPI.

Instalação do FastAPI e suas dependências.

## 👉 Configurações do Ambiente de Desenvolvimento

Para iniciar é necessário:
1. Editor de texto - VSCode
2. Terminal
3. Versão atualizada do Python.

    **RECOMENDADO**: usar *pyenv* (permite instalar diferentes versões do python no sistema e as isola).

    No powershell aberto como administrador executar o comando:
    ```bash
        Invoke-WebRequest -UseBasicParsing -Uri "https://raw.githubusercontent.com/pyenv-win/pyenv-win/master/pyenv-win/install-pyenv-win.ps1" -OutFile "install-pyenv-win.ps1"
    ```
    Fechar e abrir novamente o terminal para concluir a operação.
4. Instalar o *pipx* para simplificar a instalação de pacotes globais:
    ```bash
        pip install pipx
    ``` 
    Para testar se a instalação foi feita com sucesso:
    ```bash 
        pipx --version
    ```
    Para adicionar os paths do pipx nas variáveis de ambiente:
    ```bash
        pipx ensurepath
    ```
5. *Poetry* para gerenciar os pacotes no ambiente virtual:
    ```bash
        pipx install poetry
    ```
6. Instalar o *ignr* para criar o gitignore
    ```bash
        pipx install ignr
    ```

## 👉 Criação do Projeto Hello World com FastAPI 
1. Criar o projeto python utilizando o Poetry:
    ``` 
        poetry new fast_api
    ```
    Abra a pasta do projeto:
    ```
        cd fast_api
    ```
O projeto terá essa estrutura:
``` plaintext
├── fast_zero
│  └── __init__.py
├── pyproject.toml
├── README.md
└── tests
   └── __init__.py
```

2. Criar uma pasta: app.py e nela adicionar o código:

```python

from fastapi import FastAPI 

app = FastAPI()  

@app.get('/')  
def read_root():  
    return {'message': 'Olá Mundo!'}

```
3. Antes de executar a aplicação, precisamos habilitar o ambiente virtual com:
```bash
    poetry shell
```
4. Para iniciar a aplicação:
```bash
fastapi dev fast_api/app.py
```

💡 Resumidamente, a resposta do comando vem com o endereço de IP no qual ele está executando a aplicação:
```
 ╭────────── FastAPI CLI - Development mode ───────────╮
 │                                                     │
 │  Serving at: http://127.0.0.1:8000                  │
 │                                                     │
 │  API docs: http://127.0.0.1:8000/docs               │
 │                                                     │
 │  Running in development mode, for production use:   │
 │                                                     │
 │  fastapi run                                        │
 │                                                     │
 ╰─────────────────────────────────────────────────────╯
```

💡 Agora, com o servidor inicializado, podemos usar um cliente para acessar o endereço http://127.0.0.1:8000.