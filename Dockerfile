FROM python:3
ENV PYTHONUNBUFFERED 1
RUN apt-get update && apt-get install -y
WORKDIR /private_diary
COPY requirements.txt /private_diary/
RUN pip install -r requirements.txt
ADD . /private_diary/