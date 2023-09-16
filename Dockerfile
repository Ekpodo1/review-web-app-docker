# using nodejs base image
FROM  node:latest
# defining working directory
WORKDIR  /app
# using the root user to execute the container image
USER root
# copying the nodejs dependency file
COPY package. json /app/
# installing npm for nodejs
RUN npm install
# coping all, applications file to the work directory
COPY . /app/
# exposing port number
EXPOSE 80
# executing web application
CMD [ "nade", "/app/server.js" ]