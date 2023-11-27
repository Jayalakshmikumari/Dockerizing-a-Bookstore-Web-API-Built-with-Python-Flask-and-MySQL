FROM python:3.9-alpine
COPY . /app
WORKDIR /app
RUN pip freeze > requirements.txt
RUN pip install -r requirements.txt
RUN pip install Flask==2.0.1
RUN pip install Werkzeug==2.2.2
RUN pip install flask-mysql
RUN pip install cryptography
EXPOSE 80
CMD python ./bookstoreapi.py