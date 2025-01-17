FROM python:3.8.12
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1
RUN apt-get update && apt-get install -y postgresql-client
WORKDIR /app
COPY requirements.txt /app
RUN pip install -r requirements.txt
COPY . /app
