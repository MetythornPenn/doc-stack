# Use the official Python image as the base image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /docs

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    libcairo2 \
    && rm -rf /var/lib/apt/lists/*


# Copy the requirements file into the container
COPY requirements.txt /docs/

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the MkDocs project files into the container
COPY . /docs/

# Expose the port the app runs on
EXPOSE 7000

# Command to run the application
CMD ["mkdocs", "serve", "-a", "0.0.0.0:7000"]
