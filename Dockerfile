# Використовуємо базовий образ Python
FROM python:3.8.0

# Встановлюємо робочу директорію
WORKDIR /app

# Копіюємо залежності і встановлюємо їх
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копіюємо весь проект у контейнер
COPY . .

# Вказуємо команду запуску
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
