

# Use the official Python image from the Docker Hub
FROM python:3.8-slim-buster

# Install Git
RUN apt-get update && apt-get install -y git

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
#COPY . .


# Add this line to your Dockerfile before the RUN pip install command
RUN apt-get update && apt-get install -y git

# Install any dependencies
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define the command to run the application
#CMD ["python", "app.py"]