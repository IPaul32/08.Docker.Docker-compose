FROM python:3.9

LABEL marchik32@gmail.com

WORKDIR /python-app

COPY app/app.py

CMD ["python", "app.py"]
