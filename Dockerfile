FROM python:3.8.3-slim-buster
WORKDIR /code
RUN pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
ENV FLASK_APP=app.py
ENV FLASK_DEV=development
ENV FLASK_RUN_HOST=0.0.0.0
ENV DATABASE_URL=postgresql://postgres:123456@36.255.69.11:5432/newdb
COPY . .
RUN chmod +x entry.sh
ENTRYPOINT ["bash","entry.sh"]

