FROM python:3.9-slim

WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Then copy application code
COPY app.py .

EXPOSE 8080

# Fixed CMD syntax (added missing comma)
CMD ["python", "app.py"]