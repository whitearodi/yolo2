#import base image 
FROM node:14-alpine

#Setting working directory in the container 
WORKDIR /client/app

#Copy the package.json file
COPY package*.json ./

#Install dependencies 
RUN npm install

#Copy the rest of the application code from root to workdir 
COPY . .

#Expose port which container will run 
EXPOSE 3001

#Build the React App
CMD ["npm", "start", "--", "--host", "0.0.0.0", "--port", "3001"]