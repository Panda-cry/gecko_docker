FROM python:3.10
LABEL authors="gecko"

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt
COPY . /opt/app
WORKDIR app

ENTRYPOINT FLASK_APP=/app.py flask run --host=0.0.0.0