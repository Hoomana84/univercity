FROM python:3.12

WORKDIR /var/www

COPY ./requirements.txt /var/www/requirements.txt

RUN pip istall -r /var/www/requirements.txt

COPY ./project /var/www/project

CMD ["fastapi", "run", "app/main.py", "--port", "8000"]

