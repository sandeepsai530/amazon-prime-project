#use Node.js alpine image
FROM node:alpine

#create and set the working directory inside the container
WORKDIR /app

#copy package.json and package-lock.json to the working directory
COPY package.json package-lock.json ./app/

#install the dependencies
RUN npm install

#copy the entire codebase to the working directory
COPY . /app/

#expose the port your application will run on
EXPOSE 3000

#start the application
CMD ["npm", "start"]