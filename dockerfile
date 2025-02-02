# Use the official Python image from Docker Hub as the base image
FROM python:3.9-slim

# Set environment variables to ensure unbuffered output and proper encoding
ENV PYTHONUNBUFFERED=1
ENV LANG=C.UTF-8

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt /app/

# Install the required dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files into the container
COPY . /app/

# Expose the port FastAPI will run on
EXPOSE 8000

# Define the command to run the FastAPI application using Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
