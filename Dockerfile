FROM python:3.9-slim
RUN apt-get -y update && apt-get -y install libpq-dev build-essential && rm -rf /var/lib/apt/lists/*
RUN pip install pgcli
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_USER=postgres
ENV POSTGRES_DB=postgres
ENV POSTGRES_HOST=postgres
CMD ["sh", "-c", "pgcli postgresql://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${POSTGRES_HOST}/${POSTGRES_DB}"]