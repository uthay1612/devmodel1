FROM nginx:latest

WORKDIR /usr/share/nginx/html

#Remove default nginx static files

RUN rm -rf ./*

#Copy the HTML, CSS, and JavaScript files to the container

COPY . .

#Expose port 80 to access the web application

EXPOSE 80

#Start nginx server

CMD ["nginx", "-g", "daemon off;"]