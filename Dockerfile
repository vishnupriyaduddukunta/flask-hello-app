# Use official Python image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy local files to container
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip install -r requirements.txt

# Copy rest of the code
COPY . .

# Command to run the app
CMD ["python", "app.py"]

