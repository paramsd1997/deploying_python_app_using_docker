# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application and requirements into the container
COPY app.py /app
COPY requirements.txt /app

# Install application dependencies
RUN pip install -r requirements.txt

# Expose the port that the Flask app will run on
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
