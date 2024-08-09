FROM python:3.11

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./rides_service /code/rides_service

EXPOSE 8080

CMD ["fastapi", "run", "rides_service/server.py", "--port", "8080"]