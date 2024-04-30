# 1.Choice of base image on which to build the container 
- For both container I decided to use the base_image: [node:14-apline] due to its lightweight Alpine Linux base, which offers improved efficiency, security, and resource utilization for Docker containers running Node.js applications.

# 2.Dockerfile Directives for Building Images and Running Containers

 - In this project, Dockerfile directives are used to define the build process for creating Docker images and to specify the runtime behavior of the containers. Two Dockerfiles are utilized, one for building the client image and another for the backend image.

  - These Dockerfiles consist of a series of directives that are executed in sequence during the build process:

FROM: Specifies the base image to use for building the Docker image. In this case, node:14-alpine is used, which provides a lightweight Node.js runtime environment based on Alpine Linux.

WORKDIR: Sets the working directory inside the container where subsequent commands will be executed.

COPY: Copies files and directories from the host machine into the container. This is used to bring in the application code and any necessary configuration files.

RUN: Executes shell commands inside the container during the build process. In these Dockerfiles, it's used to install dependencies using npm.

EXPOSE: Exposes specific ports from the container to the host machine, allowing communication between the containerized application and the outside world.

CMD: Specifies the default command to run when the container starts. This command is executed when the container is launched, defining the runtime behavior of the containerized application.

# 3.Docker Networking(port allocation & bridge newtork impelementation)
# 4.Docker compose-volume definition & usage(where necessary)
# 5.Git workflow used to achieve the task 
# 6.Successfull running of application & if not debugging applied 
# 7.Inclusion of Docker image tag naming standards for ease of identification of images and containers 
# 8.Screenshot of deployed image on DockerHub-clearly show the version of the image 



