FROM python:stretch

COPY . /app
WORKDIR /app

# install dependencies to the local user directory (eg. /root/.local)
RUN pip install -r requirements.txt


ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]

# hello world 2