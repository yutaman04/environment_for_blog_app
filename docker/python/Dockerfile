FROM python:3.9-alpine

WORKDIR /app

COPY ./docker/python/requirements.txt .
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

COPY ./backend/ .
COPY entrypoint.sh /var/tmp
CMD bash -E /var/tmp/entrypoint.sh && /bin/bash

CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "8080"]