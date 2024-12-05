FROM python:3.11-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Install Gunicorn
RUN pip install gunicorn

# Copy project files
COPY . /app/


# Expose the port used by Gunicorn
EXPOSE 8000

# Command to run the Gunicorn server
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "devdemo.wsgi:application"]
