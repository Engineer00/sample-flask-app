# Sample Flask App

This is a simple Flask application that returns a JSON response.

## Prerequisites

- **Docker**: Ensure you have Docker installed on your machine.
- **Git**: Ensure you have Git installed and configured properly.

## Steps to Build, Run, and Deploy the Application

### 1. Clone the Repository

First, clone the repository to your local machine using the following command:

```bash
git clone https://github.com/yourusername/sample-flask-app.git
cd sample-flask-app
2. Build the Docker Image
Build the Docker image using the Dockerfile provided in this repository:

bash


docker build -t yourusername/sample-flask-app:1.0 .
3. Run the Container
Run the container using the built image:

bash


docker run -p 5000:5000 yourusername/sample-flask-app:1.0
This will start the Flask application and make it available at http://localhost:5000.

4. Test the Application
Open a web browser and navigate to http://localhost:5000/hello to see the application in action.

5. Push the Docker Image to Docker Hub
If you want to push the image to Docker Hub, follow these steps:

Log in to Docker Hub:

bash


docker login
Push the Docker Image:

bash


docker push yourusername/sample-flask-app:1.0
6. Pull and Run the Docker Image from Docker Hub
To pull and run the Docker image from Docker Hub on a different machine or after removing the local image:

Pull the Docker Image:

bash


docker pull yourusername/sample-flask-app:1.0
Run the Container:

bash


docker run -p 5000:5000 yourusername/sample-flask-app:1.0
CI/CD Pipeline
This repository uses a GitHub Actions CI/CD pipeline to automate the build, tag, and push processes. Here are the key steps that the pipeline performs:

Checkout Code: The pipeline checks out the code from the repository.
Set up Docker Buildx: The pipeline sets up Docker Buildx for building images.
Log in to Docker Hub: The pipeline logs in to Docker Hub using secrets.
Build and Push Docker Image: The pipeline builds the Docker image and pushes it to Docker Hub.
For more details on the CI/CD pipeline, refer to the .github/workflows/ci-cd-pipeline.yml file.
