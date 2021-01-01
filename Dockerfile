FROM python:3.9

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

RUN chmod 755 /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
