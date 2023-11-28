FROM python:3.10
LABEL authors="gecko"
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt
COPY . /app

ENV FLASK_APP=/app/app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_ENV=development
ENV FLASK_DEBUG=1


EXPOSE 5000
ENTRYPOINT FLASK_APP=/app/app.py flask run