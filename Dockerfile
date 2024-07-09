FROM python:3.12.1

WORKDIR /var/www

COPY /fastApiProject1/requierments.txt .

RUN pip istall -r requierments.txt

COPY fastApiProject1 .

CMD ["fastapi","run","main.py"]

