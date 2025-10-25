# Imagem base do Python
FROM python:3.12-slim

# Define o diretório de trabalho
WORKDIR /app

# Copia o requirements.txt (se existir)
COPY requirements.txt .

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante do código
COPY . .

# Expõe a porta padrão do Django
EXPOSE 8000

# Comando padrão para rodar o servidor
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
