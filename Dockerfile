FROM python:3.7-slim-buster

ADD . /app
WORKDIR /app
COPY requirements.txt /
RUN pip install -r requirements.txt

COPY ./grocery_app /grocery_app

ENV FLASK_APP=app.py
ENV FLASK_ENV=development

EXPOSE 80

CMD ["flask", "run", "--host=0.0.0.0"]
