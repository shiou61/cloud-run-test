FROM python:3.13

WORKDIR /app

COPY . .

RUN poetry install --no-root

ENTRYPOINT [ "python3", "cloud-run-test.py" ]