FROM python:3.9-slim
RUN apt-get -y update && apt-get -y install libpq-dev build-essential less && rm -rf /var/lib/apt/lists/*
RUN pip install pgcli==3.2.0
ENV PAGER=less
ENTRYPOINT ["pgcli"]