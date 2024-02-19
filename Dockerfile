# Use the official Python image as the base image
FROM python:3.9

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /Backend

# Install dependencies
COPY requirements.txt /code/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /originam/
COPY . /original/

# Collect static files
RUN python manage.py collectstatic --noinput

# Run Django server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000" ]