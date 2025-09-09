FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements first (for better caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

# Expose Flask’s default port
EXPOSE 5000

# Command to run the Flask app
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]

