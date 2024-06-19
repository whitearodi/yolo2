# Kubernetes Project Documentation
## Prerequisites

Before starting, ensure you have the following:

- Google Cloud Platform (GCP) Account: Make sure you have a GCP account with the necessary permissions to create and manage resources.
- Google Kubernetes Engine (GKE) Cluster: Set up a GKE cluster or ensure you have the ability to create one. GKE is a managed Kubernetes service that simplifies cluster creation and management.
- Docker: Docker must be installed on your local machine. Docker is used to containerize your application, allowing it to run consistently across different environments.
- Kubernetes CLI (kubectl): Install and configure kubectl to interact with your GKE cluster. kubectl is a command-line tool for managing Kubernetes clusters.

## Prepare Your Docker Images

### Build Docker Images

- Build Docker images using the Dockerfiles. Replace `<your-dockerhub-username>` and tag with your Docker Hub username and desired image tag.

- Run this command to build an image `docker build -t <your-dockerhub-username>/your-app:tag .`

### Push Docker Images to Docker Hub

- Push the built images to your Docker Hub repository. This makes them available for deployment in your Kubernetes cluster.

- Run this command on terminal `docker push <your-dockerhub-username>/your-app:tag`

# Create Kubernetes Manifests

- Kubernetes manifests define the desired state of your Kubernetes objects, such as Deployments, StatefulSets, and Services.

These are the manifest files your gonna create within ur project:
1. Create a separate namespace for your application to isolate resources.
2. Create a deployment files for the client & backend to ensures a specified number of pod replicas are running at any given time.
3. Create a StatefulSet file for the Database ensuring data persistence using Persistent Volume Claims.
4. Create a service file for both the client & backend so as to exposes your application to the internet, enabling external access.
5. Create service file for the database so as to expose your database internally within the cluster.

# Deploy to GKE

1. Apply Namespace for example: 
- `kubectl apply -f namespace.yml`
2. Apply Manifests for example: 
- `kubectl apply -f app-deployment.yml`
- `kubectl apply -f db-statefulset.yml`
- `kubectl apply -f app-service.yml`
- `kubectl apply -f db-service.yml`


# Verify and Test Deployment

1. After creation of your cluster on GKE need to check all pods running & services are correctly set up.Run this command on the Cloud Shell: 
- `kubectl get pods -n your-namespace`
- `kubectl get services -n your-namespace`
2. Obtain the external IP from the app service and access your application via a web browser.
3. To Test deployment of application you'll run this command `kubectl get services -n yolo` use the external IP to access the client UI on port `80`

# Debugging Measures

- Came across a blocker pertaining my client-deployment not running therefore unable to view my UI externally on browser here are the debugging measures I took: 
- Ensure your pods are running correctly.Run this command: `kubectl get pods -n your-namespace`
- Get detailed information about the pods to diagnose issues.Run this command: `kubectl describe pod <pod-name> -n your-namespace`
- Check the logs of the application containers for errors.Run this command: `kubectl logs <pod-name> -n your-namespace`.Able to view my client UI via the external IP the only issue I'm coming across is related to not connecting to my database(the DB timesout)