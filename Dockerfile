FROM python:3.8.5

WORKDIR /code

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY . .

LABEL author='praktikum@yandex.ru' version=1

CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000
