FROM python:3.11-slim-bookworm

RUN apt-get update && apt-get install -y libpq-dev gcc
RUN apt-get update && apt-get install -y procps && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
COPY . /usr/src/app/

ENV PYTHONPATH "${PYTHONPATH}:/usr/src/app"
RUN export PYTHONPATH="${PYTHONPATH}:/usr/src/app"

RUN pip install --no-cache-dir -r ./requirements.txt

CMD [ "uvicorn","main:app","--host","0.0.0.0","--port","8080"]