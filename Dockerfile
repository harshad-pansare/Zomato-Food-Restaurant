# Use the official Nginx images as the base image
FROM nginx:latest

# Copy the containts of the 'app' directory to the default Nginx web server directory
COPY ./build /usr/share/nginx/html

# Expose port 80 to allow incoming connections
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
