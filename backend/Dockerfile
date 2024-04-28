#import base image 
FROM node:14-alpine

#Setting the working directory in the container 
WORKDIR /backend/app

#Copy the package.json file 
COPY package*.json ./

#Install dependencies 
RUN npm install

#Copy the rest of the application code from root to working directory
COPY . .

#Expose the port which the container will run 
EXPOSE 5000

#Build the backend 
CMD [ "npm", "start" ]