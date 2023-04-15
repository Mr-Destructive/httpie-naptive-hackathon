FROM python:3.7-slim-buster

WORKDIR /app

COPY . /app

RUN python -m pip install --upgrade pip wheel build

RUN python -m pip install --upgrade '.[dev]' '.[test]'

RUN python -m pip install --upgrade --editable .

RUN python setup.py install

CMD ["python", "-m" ,"pytest"]
