# Use an official Python image as base
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy the application code and requirements file
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
