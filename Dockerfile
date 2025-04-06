FROM python:3.9-slim-buster
WORKDIR /app
COPY 	requirements.txt .
# Install any dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application files into the container
COPY . .

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "app.py"]
