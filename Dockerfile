# Use official Python base image
FROM python:3.9-slim

# Set work directory
WORKDIR /app

# Copy app files
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Set Flask env vars (optional)
ENV FLASK_APP=app.py

# Expose port
EXPOSE 80

# Run Flask app
CMD ["python", "app.py"]
