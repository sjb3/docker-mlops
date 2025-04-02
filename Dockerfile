FROM python:3.8-slim

WORKDIR /app

COPY . ./app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

# Define environment variable to disable buffering, optional
ENV PYTHONUNBUFFERED=1

CMD [ "python", "./app/app.py"]