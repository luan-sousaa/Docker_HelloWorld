FROM python:latest

WORKDIR /app

COPY . .

RUN pip install flask

RUN apt-get update && apt-get install -y python3

CMD [ "python" , "app/index.py" ]

EXPOSE 8080
