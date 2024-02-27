# Use the official Python image as the base image
FROM python:3.11

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /baryek

# Install dependencies
COPY requirements.txt /baryek/requirements.txt
RUN pip install -r requirements.txt

COPY  . /baryek

# Run Django server
CMD python manage.py runserver 0.0.0.0:8000