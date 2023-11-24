# Use an official Python runtime as a base image
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt /app/

# Install app dependencies
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy the application code to the container at /app
COPY . /app/

# Expose the port the app runs on
EXPOSE 8000

# Define the command to run your application
CMD ["python", "server.py"]
