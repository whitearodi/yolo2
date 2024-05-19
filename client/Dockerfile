# Stage 1: Build the apllication(using multi stage builds)
#import base image 
FROM node:14-alpine AS build 

#Setting working directory in the container 
WORKDIR /client/app

#Copy the package.json file
COPY package*.json ./

#Install dependencies 
RUN npm install

#Copy the rest of the application code from root to workdir 
COPY . .

#Run build
RUN npm run build

#Stage 2:Serve the application
FROM node:14-alpine as main 

#Create a working directory 
WORKDIR /app

#Copies files to specified path
COPY --from=build /client/app/build ./build

#Expose port which container will run 
EXPOSE 3001

#Build the React App
CMD ["npm", "start"]