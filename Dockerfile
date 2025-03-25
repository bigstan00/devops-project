FROM python:3.9-slim
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
COPY . .
CMD ["python", "python.py"]  # Make sure this matches your script name