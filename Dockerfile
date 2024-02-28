ARG PYTHON_VERSION=3.12
FROM python:$PYTHON_VERSION-slim

RUN apt-get -y update && apt-get -y install libpq-dev less && rm -rf /var/lib/apt/lists/*
ENV PAGER=less

ARG PGCLI_VERSION=4.0.1
RUN pip install pgcli==$PGCLI_VERSION

ENTRYPOINT ["pgcli"]
