FROM python:3.11
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
RUN pip install poetry==1.6.1
COPY README.md poetry.lock pyproject.toml /usr/src/.
WORKDIR /usr/src
RUN poetry install
COPY mysite /usr/src/mysite/
WORKDIR /usr/src/mysite
