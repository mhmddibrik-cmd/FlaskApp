# 1. Start from a small Python image
FROM python:3.13-slim

# 2. Work inside the /app folder in the container
WORKDIR /app

# 3. Install Flask dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copy the code into the container
COPY . .

# 5. The app listens on port 5000
EXPOSE 5000

# 6. Run the Flask app
CMD ["python", "app.py"]