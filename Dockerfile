FROM python:3.11

# Копируем requirements.txt в образ
COPY requirements.txt /app/requirements.txt

# Устанавливаем зависимости из requirements.txt
RUN pip install -r /app/requirements.txt gunicorn

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем все файлы проекта в образ
COPY . .


