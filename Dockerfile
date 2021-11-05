ARG PYTHON_VERSION=3.9
FROM python:$PYTHON_VERSION-slim

RUN apt-get -y update && apt-get -y install libpq-dev build-essential less && rm -rf /var/lib/apt/lists/*

ARG PGCLI_VERSION=3.2.0
RUN pip install pgcli==$PGCLI_VERSION

ENV PAGER=less
ENTRYPOINT ["pgcli"]
