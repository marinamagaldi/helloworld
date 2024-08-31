# Usando a imagem base python:3.9-alpine
FROM python:3.9-alpine

# Instale o Kerberos, zlib e outras dependências necessárias
RUN apk add --no-cache \
    krb5 \
    krb5-server \
    zlib \
    build-base \
    gcc \
    musl-dev \
    libffi-dev

# Atualize o pip
RUN pip install --upgrade pip

# Defina o diretório de trabalho
WORKDIR /app

# Copie o código da aplicação para o diretório /app
COPY . .

# Instale o FastAPI e Uvicorn
RUN pip install fastapi uvicorn

# Comando para iniciar a aplicação
CMD ["uvicorn", "helloworld.app:app", "--host", "0.0.0.0", "--port", "8000"]


