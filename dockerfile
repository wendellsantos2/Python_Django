# Imagem base do Python
FROM python:3.9-slim

# Diretório de trabalho no contêiner
WORKDIR /app

# Copia os arquivos de requisitos para dentro do contêiner
COPY requirements.txt /app/

# Instala as dependências do Python
RUN pip install --no-cache-dir -r requirements.txt

# Copia o código da aplicação para dentro do contêiner
COPY . /app/

# Expondo a porta do Django
EXPOSE 8000

# Comando para rodar a aplicação Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
