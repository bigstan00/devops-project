FROM python:3.9-slim

WORKDIR /app

# Directly install Flask without requirements.txt
RUN pip install --no-cache-dir flask==2.3.2

COPY app.py .

EXPOSE 8080
CMD ["python", "app.py"]