FROM python:3.13-alpine3.20

WORKDIR /app

COPY . .
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["unicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]


