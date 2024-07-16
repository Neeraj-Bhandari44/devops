# # Use an official Python runtime as a parent image
# FROM python:3.9-slim

# # Set environment variables
# ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1

# # Set the working directory in the container
# WORKDIR /DEVOPS ASSIGNMENT

# # Install dependencies
# COPY requirements.txt /app/
# RUN pip install --no-cache-dir -r requirements.txt

# # Copy the Django application code into the container
# COPY . /DEVOPS ASSIGNMENT/

# # Expose the Django application port
# EXPOSE 8000

# # Command to run the Django application
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
# Use an appropriate base image with Python installed





# FROM python:3.9

# # Set environment variables for Python (recommended)
# ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1

# # Set the working directory inside the container
# WORKDIR /app

# # Install dependencies
# COPY App/requirements.txt /app/
# RUN pip install -r requirements.txt

# # Copy the entire Flask application code into the container
# COPY App/ /app/

# # Expose the port on which your Flask app runs (default is 5000)
# EXPOSE 5000

# # Command to run the Flask application
# CMD ["python", "app.py"]

# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the entire application directory into the container at /app
COPY . /app

# Install Flask if it's not already installed
RUN pip install Flask

# Set the FLASK_APP environment variable
ENV FLASK_APP=App.app  

# Expose the port Flask is running on
EXPOSE 5000

# Command to run the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]
