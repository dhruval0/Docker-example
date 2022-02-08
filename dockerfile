FROM python:3.8-slim-buster

WORKDIR /py-docker

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

ADD main.py .

CMD ["python","./main.py"]