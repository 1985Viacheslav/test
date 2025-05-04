# Используем официальный образ Python
FROM python:3.10-slim

# Указываем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем зависимости и устанавливаем их
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем исходные файлы
COPY app/ .

# Открываем порт
EXPOSE 5000

# Команда запуска приложения
CMD ["python", "main.py"]