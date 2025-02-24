FROM python:3.13

WORKDIR /app

COPY . .

RUN pip install poetry
RUN poetry config virtualenvs.create false \
    && poetry install --no-root

ENTRYPOINT [ "python3", "cloud-run-test.py" ]